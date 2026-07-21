/*
 * Copyright (c) 2020-2021 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include "bootstrap_service.h"
#include "samgr_lite.h"
#include <ohos_init.h>
#include <securec.h>
#include "service.h"
#include "common.h"
#include "hctest_internal.h"
#ifdef HCTEST_RODATA_OPT
#include "thread_adapter.h"
#endif


typedef struct TestService {
    INHERIT_SERVICE;
    Identity identity;
    uint8 flag;
} TestService;

static const char *GetName(Service *service);
#ifdef HCTEST_RODATA_OPT
/*
 * Standalone xts runner task (hctest_rodata_opt optimization). Runs RunAllXtsTests
 * on its OWN thread/stack, decoupled from hctest's samgr task, so hctest's samgr
 * task (shared pool) is free to process other services' messages -- avoiding pool
 * contention that broke the SharedTask* feature-SendRequest tests. Created by
 * StartXtsRunner (registered via SYS_RUN, fired by OHOS_SystemInit's
 * MODULE_INIT(run) early in boot). The LOS task runs after the scheduler starts;
 * later test suites run after samgr finishes booting, so no delay is needed.
 * Returning lets LOS OsTaskEntry LOS_TaskDelete this task, freeing its stack.
 */
static void *XtsRunnerTask(void *arg)
{
    (void)arg;
#ifdef HCTEST_NEW_RUNNER
    RunAllXtsTests();
#else
    INIT_TEST_CALL();
#endif
    return NULL;
}

/* Launch the standalone xts runner. Registered via SYS_RUN into .zinitcall.run2,
 * traversed once by OHOS_SystemInit (MODULE_INIT(run)) -- no samgr change needed. */
static void StartXtsRunner(void)
{
    ThreadAttr attr = {"HCTestRunner", HCTEST_TASK_STACK_SIZE, PRI_NORMAL, 0, 0};
    (void)THREAD_Create((Runnable)XtsRunnerTask, NULL, &attr);
}
SYS_RUN(StartXtsRunner);
#endif /* HCTEST_RODATA_OPT */

static BOOL Initialize(Service *service, Identity identity);
static BOOL MessageHandle(Service *service, Request *request);
static TaskConfig GetTaskConfig(Service *service);
static void Init(void)
{
    static TestService testService;
    testService.GetName = GetName;
    testService.Initialize = Initialize;
    testService.MessageHandle = MessageHandle;
    testService.GetTaskConfig = GetTaskConfig;
    testService.flag = FALSE;
    SAMGR_GetInstance()->RegisterService((Service *)&testService);
}
SYSEX_SERVICE_INIT_PRI(Init, 4);
static const char *GetName(Service *service)
{
    (void)service;
    return HCTEST_SERVICE;
};

static BOOL Initialize(Service *service, Identity identity)
{
    TestService *testService = (TestService *)service;
    testService->identity = identity;
#ifdef HCTEST_RODATA_OPT
    /* xts is launched from StartXtsRunner (SYS_RUN), fired by OHOS_SystemInit's
     * run-section traversal -- no samgr self-message, no osDelay. */
    return TRUE;
#else
    /* Original: self-message to defer xts until boot completes. */
    Request request = {.msgId = MSG_START_TEST};
    int times = 0;
    while (times < MAXIMUM_TRY_TIMES) {
        int ret = SAMGR_SendRequest(&testService->identity, &request, (Handler)MessageHandle);
        if (ret == 0) {
            return TRUE;
        }
        times++;
        ret = SAMGR_SendRequest(&testService->identity, &request, (Handler)MessageHandle);
    }
    return FALSE;
#endif
};

static BOOL MessageHandle(Service *service, Request *request)
{
    TestService *testService = (TestService *)service;
    if (request == NULL) {
        return FALSE;
    }
    switch (request->msgId) {
        case MSG_START_TEST:
            if ((testService->flag & TEST_FLAG) != TEST_FLAG) {
#ifdef HCTEST_NEW_RUNNER
                RunAllXtsTests();
#else
                INIT_TEST_CALL();
#endif
                testService->flag |= TEST_FLAG;
            }
            (void)SAMGR_SendResponseByIdentity(&testService->identity, request, NULL);
            break;
        default:
            break;
    }
    return TRUE;
};

static TaskConfig GetTaskConfig(Service *service)
{
    TaskConfig config = {LEVEL_MIDDLE, PRI_NORMAL, HCTEST_TASK_STACK_SIZE, HCTEST_TASK_QUEUE_SIZE,
                         HCTEST_TASK_TYPE};
    (void)service;
    return config;
};
