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

#ifndef HCTEST_INTERNAL_H
#define HCTEST_INTERNAL_H

#include "common.h"

#ifdef __cplusplus
#if __cplusplus
extern "C" {
#endif
#endif

typedef struct TestResult TestResult;
struct TestResult {
    const int8  result;
    const char* messages;
};

typedef struct CTestCase CTestCase;
struct CTestCase {
    /**
    * @brief test suite name
    * */
    const char *suite_name;

    /**
    * @brief test case name
    * */
    const char *case_name;

    /**
    * @brief test case flag
    * */
    int32 flag;

    /**
    * @brief test case line number
    * */
    int16 line_num;

    /**
    * @brief test case setup.
    * @param the test case addr.
    * @return TRUE success
    * */
    BOOL (*lite_setup)(void);

    /**
    * @brief  test case teardown.
    * @param the test case addr.
    * @return TRUE success
    * */
    BOOL (*lite_teardown)(void);

    /**
    * @brief execute the test case.
    * @param the test case addr.
    * @return test results
    * */
    void (*execute_func)(void);
};

/**
 * test type
 */
enum TestType {
    Function = 1 << 8,
    Performance = 2 << 8,
    Power = 3 << 8,
    Reliability = 4 << 8,
    Security = 5 << 8,
    Global = 6 << 8,
    Compatibility = 7 << 8,
    User = 8 << 8,
    Standard = 9 << 8,
    Safety = 10 << 8,
    Resilience = 11 << 8
};

/**
 * test size
 */
enum TestSize {
    SmallTest = 1 << 4,
    MediumTest = 2 << 4,
    LargeTest = 3 << 4
};

/**
  * test case level
  */
enum TestRank {
    Level0 = 1,
    Level1 = 2,
    Level2 = 3,
    Level3 = 4,
    Level4 = 5
};

/**
  * test case level
  */
enum TestLevel {
    LEVEL0 = 1,
    LEVEL1 = 2,
    LEVEL2 = 3,
    LEVEL3 = 4,
    LEVEL4 = 5
};

typedef struct CTestSuite CTestSuite;
struct CTestSuite {
    const char* subsystem_name;
    const char* module_name;
    const char* suite_name;
    const char* file;
    int16 times;
    Vector test_cases;
};

/**
 * @brief Read-only suite registration descriptor stored in Flash (.rodata).
 * Source of truth for a test suite's static registration info; a mutable
 * CTestSuite shell is malloc'd at registration time and freed on cleanup.
 * Fields map 1:1 onto CTestSuite's read-only fields (setup/teardown are
 * per-case on CTestCase, not held here).
 *
 * Only defined when HCTEST_RODATA_OPT is on; otherwise hctest registers the
 * mutable CTestSuite suite_object directly from .bss.
 */
#ifdef HCTEST_RODATA_OPT
typedef struct SuiteDesc {
    const char *subsystem_name;
    const char *module_name;
    const char *suite_name;
    const char *file;
    int16 times;
} SuiteDesc;
#endif

/* Entry point: run all XTS test modules in sequence (called by hctest_service.c).
 * Only present under HCTEST_NEW_RUNNER; pristine falls back to INIT_TEST_CALL. */
#ifdef HCTEST_NEW_RUNNER
void RunAllXtsTests(void);
#endif

#define HCTEST_SERVICE "HCTEST"
#define TEST_FLAG 0x02
#define MSG_START_TEST 1
#define MAXIMUM_TRY_TIMES 3
#define TASK_QUEUE_SIZE 20

/* === TestService task config (GetTaskConfig in hctest_service.c) ===
 * Overridable via -D from the build (see hctest_opt_args.gni). Defaults
 * reproduce the original {stack=0x1800, queue=20, SINGLE_TASK}.
 * NOTE: when HCTEST_TASK_TYPE is SHARED_TASK, samgr ignores the service's
 * stack/queue and uses the shared task pool (SHARED_TASK_STACK_SIZE). */
#ifndef HCTEST_TASK_STACK_SIZE
#define HCTEST_TASK_STACK_SIZE 0x1800
#endif
#ifndef HCTEST_TASK_QUEUE_SIZE
#define HCTEST_TASK_QUEUE_SIZE TASK_QUEUE_SIZE
#endif
#ifndef HCTEST_TASK_TYPE
#define HCTEST_TASK_TYPE SINGLE_TASK
#endif

#ifdef __cplusplus
#if __cplusplus
}
#endif
#endif


/* === XTS data/bss overlay section macros === */
/* Variables marked with these go to overlay region (shared across test modules).
 * When XTS_OVERLAY_ENABLE is off, the overlay region does not exist in the link
 * script, so these macros collapse to nothing and variables fall back to the
 * normal .data/.bss sections. */
#ifdef XTS_OVERLAY_ENABLE
#define XTS_DATA __attribute__((section(".xts_overlay.data")))
#define XTS_BSS  __attribute__((section(".xts_overlay.bss")))
/* Linker-script-defined boundaries of the shared overlay region (link.ld.S).
 * Referenced by RunAllXtsTests to zero the region between modules. */
extern char xts_overlay_start;
extern char xts_overlay_end;
#else
#define XTS_DATA
#define XTS_BSS
#endif

#endif
