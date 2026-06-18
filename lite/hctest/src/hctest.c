/*
 * Copyright (c) 2023 Huawei Device Co., Ltd.
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

#include <ohos_init.h>
#include <stdlib.h>
#include <securec.h>
#include <unistd.h>

#include "hctest.h"
#include "parameter.h"
#include "samgr_lite.h"
#include <string.h>

/* === XTS data/bss overlay region (defined in linker script) === */
extern char __xts_overlay_start[];
extern char __xts_overlay_end[];


/* === Phase 2: per-module init function linker symbols === */
typedef void (*InitFunc)(void);

#define XTS_MODULE_LINKER_SYMS(mod_c) \
    extern InitFunc __start__xts_init_##mod_c[]; \
    extern InitFunc __stop__xts_init_##mod_c[];

XTS_MODULE_LINKER_SYMS(ActsBootstrapTest)
XTS_MODULE_LINKER_SYMS(ActsDfxFuncTest)
XTS_MODULE_LINKER_SYMS(ActsHieventLiteTest)
XTS_MODULE_LINKER_SYMS(ActsParameterTest)
XTS_MODULE_LINKER_SYMS(ActsSamgrTest)

typedef struct {
    const char *module_name;
    const char **suite_names;
    int suite_count;
    InitFunc *init_start;
    InitFunc *init_end;
} XtsModuleEntry;

static const char *s_suites_Bootstrap[] = {"SamgrApiTestSuite"};
static const char *s_suites_DfxFunc[] = {"DfxFuncTestSuite"};
static const char *s_suites_Hievent[] = {"HieventLiteTestSuite"};
static const char *s_suites_Parameter[] = {
    "ParameterFuncTestSuite", "DeviceInfoFuncTestSuite", "ParameterReliTestSuite"
};
static const char *s_suites_Samgr[] = {
    "SendRequestTestSuite", "Broadcast01TestSuite", "SingleTaskFuncTestSuite",
    "Broadcast02TestSuite", "IUnknownTestSuite", "SendResponseTestSuite",
    "TaskPoolNoTaskFuncTestSuite", "CommonTestSuite", "FeatureTestSuite",
    "ShareTaskFuncTestSuite", "SendSharedRequestTestSuite", "ServiceTestSuite",
    "FeatureApiTestSuite", "DefaultFeatureApiTestSuite", "SpecifiedTaskFuncTestSuite"
};

#define XTS_ENTRY(name, suites_arr) \
    { #name, suites_arr, sizeof(suites_arr)/sizeof(suites_arr[0]), \
      __start__xts_init_##name, __stop__xts_init_##name }

static XtsModuleEntry g_xts_modules[] = {
    XTS_ENTRY(ActsBootstrapTest, s_suites_Bootstrap),
    XTS_ENTRY(ActsDfxFuncTest, s_suites_DfxFunc),
    XTS_ENTRY(ActsHieventLiteTest, s_suites_Hievent),
    XTS_ENTRY(ActsParameterTest, s_suites_Parameter),
    XTS_ENTRY(ActsSamgrTest, s_suites_Samgr),
};
static const int g_xts_module_count = sizeof(g_xts_modules) / sizeof(g_xts_modules[0]);

/* === End Phase 2 module registry === */

#define UDIDSIZE_LEN 64

void setUp(void) {}
void tearDown(void) {}
void suiteSetUp(void) {}
int suiteTearDown(int num_failures) { return num_failures; }

static TestSuiteManager g_testSuiteManager;
static BOOL CompareInputType(const char *source, const char *input);
static void RunSingleTestCase(CTestCase *cTestCase, const char *caseName, const int32 flag);
static int16 g_totalSuitesNum = 0;
static int16 g_doneSuitesNum = 0;

static void RunSingleTestSuite(CTestSuite *testSuite)
{
    if (testSuite == NULL) {
        return;
    }
    int16 size = VECTOR_Size(&(testSuite->test_cases));
    if (size < 0) {
        return;
    }
    UnityBegin(testSuite->file);
    int16 i;
    CTestCase *testCase = (CTestCase *)(VECTOR_At(&(testSuite->test_cases), 0));
    if (testCase == NULL || !testCase->lite_setup()) {
        printf("Setup failed, skip this test suite!\n");
        UnityEnd();
        return;
    }
    for (i = size - 1; i >= 0; i--) {
        CTestCase *hcCase = (CTestCase *)(VECTOR_At(&(testSuite->test_cases), i));
        if (hcCase != NULL) {
            RunSingleTestCase(hcCase, hcCase->case_name, hcCase->flag);
        }
    }
    testCase->lite_teardown();
    UnityEnd();
}

static CTestSuite *GetTestSuite(const char *test_suite)
{
    CTestSuite *suite = NULL;
    TestSuiteManager *testMgr = GetTestMgrInstance();
    if (testMgr == NULL || test_suite == NULL) {
        return suite;
    }
    int16 size = VECTOR_Size(&(testMgr->test_suites));
    int16 i;
    for (i = 0; i < size; i++) {
        CTestSuite *curSuite = (CTestSuite *)(VECTOR_At(&(testMgr->test_suites), i));
        if (strcmp(curSuite->suite_name, test_suite) == 0) {
            suite = curSuite;
            break;
        }
    }
    return suite;
}

/* Phase 2: heap-copy RegisterTestSuite with idempotent check */
static BOOL RegisterTestSuite(CTestSuite *testSuite)
{
    if (testSuite == NULL) return FALSE;
    if (GetTestSuite(testSuite->suite_name) != NULL) {
        return TRUE;
    }
    CTestSuite *copy = (CTestSuite *)malloc(sizeof(CTestSuite));
    if (copy == NULL) return FALSE;
    memset(copy, 0, sizeof(CTestSuite));
    copy->subsystem_name = testSuite->subsystem_name;
    copy->module_name = testSuite->module_name;
    copy->suite_name = testSuite->suite_name;
    copy->file = testSuite->file;
    copy->times = testSuite->times;
    copy->test_cases = VECTOR_Make(NULL, NULL);
    VECTOR_Add(&(g_testSuiteManager.test_suites), copy);
    g_totalSuitesNum++;
    return TRUE;
}

static BOOL RemoveTestSuite(CTestSuite *testSuite)
{
    VECTOR_Swap(
        &(g_testSuiteManager.test_suites), VECTOR_Find(&(g_testSuiteManager.test_suites), testSuite), testSuite);
    return TRUE;
}

/* Phase 2: heap-copy AddTestCase with NULL safety */
static void AddTestCase(const CTestCase *testCase)
{
    if (testCase == NULL) {
        return;
    }
    CTestSuite *suite = GetTestSuite(testCase->suite_name);
    if (suite == NULL) {
        CTestSuite *suite_object = (CTestSuite *)malloc(sizeof(CTestSuite));
        if (suite_object == NULL) return;
        memset(suite_object, 0, sizeof(CTestSuite));
        suite_object->suite_name = testCase->suite_name;
        suite_object->test_cases = VECTOR_Make(NULL, NULL);
        suite = suite_object;
        VECTOR_Add(&(g_testSuiteManager.test_suites), suite);
    }
    CTestCase *tc_copy = (CTestCase *)malloc(sizeof(CTestCase));
    if (tc_copy != NULL) {
        memcpy(tc_copy, testCase, sizeof(CTestCase));
        VECTOR_Add(&(suite->test_cases), tc_copy);
    }
}

static BOOL CompareInputType(const char *source, const char *input)
{
    if (strcmp(input, CONST_STRING_SPACE) != 0 && strcmp(source, input) != 0) {
        return TRUE;
    }
    return FALSE;
}

static BOOL g_isBreak = FALSE;
static void RunSingleTestCase(CTestCase *cTestCase, const char *caseName, const int32 flag)
{
    if (cTestCase != NULL) {
        if (CompareInputType(cTestCase->case_name, caseName) || (cTestCase->flag != flag)) {
            g_isBreak = TRUE;
            return;
        }
        UnityDefaultTestRun(cTestCase->execute_func, cTestCase->case_name, cTestCase->line_num);
    }
}

static void RunSpecialTestSuite(
    const char *subSystemName, const char *moduleName, const char *suiteName, const char *caseName, int caseLevel)
{
    int16 i, j;
    int16 size = VECTOR_Size(&(g_testSuiteManager.test_suites));
    UNITY_BEGIN();
    for (i = 0; i < size; i++) {
        if (g_isBreak) break;
        CTestSuite *curSuite = (CTestSuite *)(VECTOR_At(&(g_testSuiteManager.test_suites), i));
        if (curSuite != NULL) {
            if (CompareInputType(curSuite->subsystem_name, subSystemName) ||
                CompareInputType(curSuite->module_name, moduleName) ||
                CompareInputType(curSuite->suite_name, suiteName)) {
                continue;
            }
            for (j = 0; j < VECTOR_Size(&(curSuite->test_cases)); j++) {
                CTestCase *cTestCase = (CTestCase *)(VECTOR_At(&(curSuite->test_cases), j));
                RunSingleTestCase(cTestCase, caseName, caseLevel);
            }
        }
    }
    UNITY_END();
}

static void RunTestSuite(const char *suite_name)
{
    printf("Start to run test suite:%s\n", suite_name);
    CTestSuite *curSuite = GetTestSuite(suite_name);
    if (curSuite != NULL) {
        g_doneSuitesNum++;
        int16 times = curSuite->times;
        if (times < 1) times = 1;
        int16 i;
        for (i = 0; i < times; i++) {
            sleep(1);
            printf("Run test suite %d times\n", i + 1);
            RunSingleTestSuite(curSuite);
        }
        if (g_totalSuitesNum == g_doneSuitesNum) {
            printf("All the test suites finished!\n");
        }
    }
}

/* === Phase 2: Cleanup test registry between modules === */
static void CleanupTestRegistry(void)
{
    int16 i, j;
    int16 size = VECTOR_Size(&(g_testSuiteManager.test_suites));
    for (i = 0; i < size; i++) {
        CTestSuite *suite = (CTestSuite *)(VECTOR_At(&(g_testSuiteManager.test_suites), i));
        if (suite != NULL) {
            int16 tc_size = VECTOR_Size(&(suite->test_cases));
            for (j = 0; j < tc_size; j++) {
                CTestCase *tc = (CTestCase *)(VECTOR_At(&(suite->test_cases), j));
                if (tc != NULL) {
                    free(tc);
                }
            }
            VECTOR_Clear(&(suite->test_cases));
            free(suite);
        }
    }
    VECTOR_Clear(&(g_testSuiteManager.test_suites));
    g_testSuiteManager.test_suites = VECTOR_Make(NULL, NULL);
    g_totalSuitesNum = 0;
    g_doneSuitesNum = 0;
    g_isBreak = FALSE;
}

/* === Phase 2: RunAllXtsTests - main entry point === */
void RunAllXtsTests(void)
{
    int m, s;

    for (m = 0; m < g_xts_module_count; m++) {
        XtsModuleEntry *mod = &g_xts_modules[m];

        /* Step 1: Zero the unified overlay region (both .data and .bss) */
        if (__xts_overlay_end > __xts_overlay_start) {
            memset(__xts_overlay_start, 0, (size_t)(__xts_overlay_end - __xts_overlay_start));
        }

        /* Step 2: Call all init functions for this module */
        InitFunc *fp;
        for (fp = mod->init_start; fp < mod->init_end; fp++) {
            if (*fp != (InitFunc)0) {
                (*fp)();
            }
        }

        /* Step 3: Run all suites belonging to this module */
        for (s = 0; s < mod->suite_count; s++) {
            RunTestSuite(mod->suite_names[s]);
        }

        /* Step 4: Clean up registry before next module */
        CleanupTestRegistry();
    }
}

void LiteTestPrint(const char *fmt, ...)
{
    va_list ap;
    va_start(ap, fmt);
    printf(fmt, ap);
    va_end(ap);
}

void ObtainProductParams(void)
{
    int sdkApiVersion = GetSdkApiVersion();
    if (sdkApiVersion != 0) printf("SdkApiVersion = %d\n", sdkApiVersion);
    else printf("SdkApiVersion = 0\n");
    int firstApiVersion = GetFirstApiVersion();
    if (firstApiVersion != 0) printf("firstApiVersion = %d\n", firstApiVersion);
    else printf("firstApiVersion = 0\n");
    const char *bootloaderVersion = GetBootloaderVersion();
    if (bootloaderVersion != NULL) printf("bootloaderVersion = %s\n", bootloaderVersion);
    else printf("bootloaderVersion = NULL\n");
    const char *incrementalVersion = GetIncrementalVersion();
    if (incrementalVersion != NULL) printf("incrementalVersion = %s\n", incrementalVersion);
    else printf("incrementalVersion = NULL\n");
    const char *buildType = GetBuildType();
    if (buildType != NULL) printf("buildType = %s\n", buildType);
    else printf("buildType = NULL\n");
    const char *buildUser = GetBuildUser();
    if (buildUser != NULL) printf("buildUser = %s\n", buildUser);
    else printf("buildUser = NULL\n");
    const char *buildHost = GetBuildHost();
    if (buildHost != NULL) printf("buildHost = %s\n", buildHost);
    else printf("buildHost = NULL\n");
    const char *buildTime = GetBuildTime();
    if (buildTime != NULL) printf("buildTime = %s\n", buildTime);
    else printf("buildTime = NULL\n");
    const char *abiList = GetAbiList();
    if (abiList != NULL) printf("AbiList = %s\n", abiList);
    else printf("AbiList = NULL\n");
}

void ObtainSystemParams(void)
{
    printf("******To Obtain Product Params Start******\n");
    const char *productType = GetDeviceType();
    if (productType != NULL) printf("Device Type = %s\n", productType);
    else printf("Device Type = NULL\n");
    const char *securityPatchTag = GetSecurityPatchTag();
    if (securityPatchTag != NULL) printf("Security Patch = %s\n", securityPatchTag);
    else printf("Security Patch = NULL\n");
    const char *osName = GetOSFullName();
    if (osName != NULL) printf("OsFullName = %s\n", osName);
    else printf("OsFullName = NULL\n");
    const char *displayVersion = GetDisplayVersion();
    if (displayVersion != NULL) printf("DisplayVersion = %s\n", displayVersion);
    else printf("DisplayVersion = NULL\n");
    const char *versionId = GetVersionId();
    if (versionId != NULL) printf("VersionID = %s\n", versionId);
    else printf("VersionID = NULL\n");
    char udid[UDIDSIZE_LEN + 1] = {0};
    int retUdid = GetDevUdid(udid, UDIDSIZE_LEN + 1);
    if (retUdid == 0) printf("DevUdid = %s\n", udid);
    else printf("DevUdid = NULL\n");
    const char *manuFacture = GetManufacture();
    if (manuFacture != NULL) printf("manuFacture = %s\n", manuFacture);
    else printf("manuFacture = NULL\n");
    const char *productModel = GetProductModel();
    if (productModel != NULL) printf("productModel = %s\n", productModel);
    else printf("productModel = NULL\n");
    const char *serial = GetSerial();
    if (serial != NULL) printf("serial = %s\n", serial);
    else printf("serial = NULL\n");
    const char *brand = GetBrand();
    if (brand != NULL) printf("brand = %s\n", brand);
    else printf("brand = NULL\n");
    const char *productSeries = GetProductSeries();
    if (productSeries != NULL) printf("productSeries = %s\n", productSeries);
    else printf("productSeries = NULL\n");
    const char *softwareModel = GetSoftwareModel();
    if (softwareModel != NULL) printf("softwareModel = %s\n", softwareModel);
    else printf("softwareModel = NULL\n");
    const char *hardWareModel = GetHardwareModel();
    if (hardWareModel != NULL) printf("HardwareModel = %s\n", hardWareModel);
    else printf("HardwareModel = NULL\n");
    const char *buildRootHash = GetBuildRootHash();
    if (buildRootHash != NULL) printf("BuildRootHash = %s\n", buildRootHash);
    else printf("BuildRootHash = NULL\n");
    const char *marketName = GetMarketName();
    if (marketName != NULL) printf("marketName = %s\n", marketName);
    else printf("marketName = NULL\n");
    ObtainProductParams();
    printf("******To Obtain Product Params End  ******\n");
}

static void InitTestSuiteMgr(void)
{
    g_testSuiteManager.test_suites = VECTOR_Make(NULL, NULL);
    g_testSuiteManager.GetTestSuite = GetTestSuite;
    g_testSuiteManager.RegisterTestSuite = RegisterTestSuite;
    g_testSuiteManager.AddTestCase = AddTestCase;
    g_testSuiteManager.RemoveTestSuite = RemoveTestSuite;
    g_testSuiteManager.RunSpecialTestSuite = RunSpecialTestSuite;
    g_testSuiteManager.RunTestSuite = RunTestSuite;
    printf("[%10s] HCTest Framework inited.\n", "HCtest Service");
    ObtainSystemParams();
}
CORE_INIT(InitTestSuiteMgr);

TestSuiteManager *GetTestMgrInstance(void)
{
    return &g_testSuiteManager;
}
