/*
 * Copyright (C) 2025-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import {
  describe,
  it,
  expect,
  TestType,
  Size,
  Level,
  beforeAll,
  afterAll,
  beforeEach,
  afterEach
} from "../../../hypium/index";
import performance from './Performance.util';


export default function ArktestPerfTest() {
  describe('ArktestPerfTest', () => {

    const BASE_COUNT = 50000;
    const UNIT_TIME = 1000000;

    beforeEach(() => {
      let ret = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret);
      let ret1 = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret1);
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    // ================================================================
    // 1. arktest Namespace — void methods, no assignment
    // ================================================================
    it('PerformanceTest_arktest_AssertTrue_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.assertTrue(true);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'assertTrue', 'assertTrue(condition: boolean)',
        arkTsAveragedTime);
    })

    it('PerformanceTest_arktest_AssertFalse_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.assertFalse(false);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'assertFalse', 'assertFalse(condition: boolean)',
        arkTsAveragedTime);
    })

    it('PerformanceTest_arktest_AssertEQ_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.assertEQ(1, 1);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'assertEQ',
        'assertEQ<T1, T2>(value1: T1, value2: T2)', arkTsAveragedTime);
    })

    it('PerformanceTest_arktest_AssertNE_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.assertNE(1, 2);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'assertNE',
        'assertNE<T1, T2>(value1: T1, value2: T2)', arkTsAveragedTime);
    })

    it('PerformanceTest_arktest_AssertDoubleEQ_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.assertDoubleEQ(1.0, 1.0, 0.0001);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'assertDoubleEQ',
        'assertDoubleEQ(value1: double, value2: double, absError: double)', arkTsAveragedTime);
    })

    // ================================================================
    // 2. arktest Namespace: LT (Less Than) — void, no assignment
    // ================================================================
    it('PerformanceTest_arktest_AssertLT_Byte_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.assertLT(1, 2);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'assertLT',
        'assertLT(value1: byte, value2: byte)', arkTsAveragedTime);
    })

    it('PerformanceTest_arktest_AssertLT_Short_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.assertLT(1, 2);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'assertLT',
        'assertLT(value1: short, value2: short)', arkTsAveragedTime);
    })

    it('PerformanceTest_arktest_AssertLT_Int_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.assertLT(1, 2);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'assertLT', 'assertLT(value1: int, value2: int)',
        arkTsAveragedTime);
    })

    it('PerformanceTest_arktest_AssertLT_Long_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.assertLT(1, 2);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'assertLT',
        'assertLT(value1: long, value2: long)', arkTsAveragedTime);
    })

    it('PerformanceTest_arktest_AssertLT_Float_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.assertLT(1.0, 2.0);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'assertLT',
        'assertLT(value1: float, value2: float)', arkTsAveragedTime);
    })

    it('PerformanceTest_arktest_AssertLT_Double_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.assertLT(1.0, 2.0);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'assertLT',
        'assertLT(value1: double, value2: double)', arkTsAveragedTime);
    })

    // ================================================================
    // 3. arktest Namespace: LE (Less Than or Equal) — void, no assignment
    // ================================================================
    it('PerformanceTest_arktest_AssertLE_Byte_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.assertLE(1, 1);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'assertLE',
        'assertLE(value1: byte, value2: byte)', arkTsAveragedTime);
    })

    it('PerformanceTest_arktest_AssertLE_Short_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.assertLE(1, 1);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'assertLE',
        'assertLE(value1: short, value2: short)', arkTsAveragedTime);
    })

    it('PerformanceTest_arktest_AssertLE_Int_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.assertLE(1, 1);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'assertLE', 'assertLE(value1: int, value2: int)',
        arkTsAveragedTime);
    })

    it('PerformanceTest_arktest_AssertLE_Long_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.assertLE(1, 1);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'assertLE',
        'assertLE(value1: long, value2: long)', arkTsAveragedTime);
    })

    it('PerformanceTest_arktest_AssertLE_Float_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.assertLE(1.0, 1.0);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'assertLE',
        'assertLE(value1: float, value2: float)', arkTsAveragedTime);
    })

    it('PerformanceTest_arktest_AssertLE_Double_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.assertLE(1.0, 1.0);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'assertLE',
        'assertLE(value1: double, value2: double)', arkTsAveragedTime);
    })

    // ================================================================
    // 4. arktest Namespace: expectThrow/expectError/expectNoThrow — void, no assignment
    // ================================================================
    it('PerformanceTest_arktest_ExpectThrow_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockThrowFunc = () => {
        throw new Error("Expected");
      };
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.expectThrow(mockThrowFunc);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'expectThrow',
        'expectThrow(cb: () => void, test?: ...)', arkTsAveragedTime);
    })

    it('PerformanceTest_arktest_ExpectError_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockThrowFunc = () => {
        throw new Error("Expected");
      };
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.expectError(mockThrowFunc, "Expected");
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'expectError',
        'expectError(fn: () => void, expect?: string | Error)', arkTsAveragedTime);
    })

    it('PerformanceTest_arktest_ExpectNoThrow_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockSafeFunc = () => {
        let a = 1;
      };
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arktest.expectNoThrow(mockSafeFunc);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'arktest', 'expectNoThrow', 'expectNoThrow(fn: () => void)',
        arkTsAveragedTime);
    })

    // ================================================================
    // 5. ArkTest Class
    // ================================================================
    it('PerformanceTest_ArkTest_Constructor_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      // constructor returns ArkTest — assign
      let mockFn = () => {
      };
      let res = new arktest.ArkTest("Test", mockFn);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new arktest.ArkTest("Test", mockFn);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.testing', 'ArkTest', 'constructor',
        'constructor(name: string, callback: () => void)', arkTsAveragedTime);
    })

    it('PerformanceTest_ArkTest_Run_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      // run(): boolean — assign
      let testObj = new arktest.ArkTest("RunTest", () => {
        arktest.assertTrue(true);
      });
      let res = testObj.run();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testObj.run();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.testing', 'ArkTest', 'run', 'run(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ArkTest_GetFullName_2300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      // getFullName(): string — assign
      let suite = new arktest.ArkTestsuite("Suite");
      let testObj = new arktest.ArkTest("NameTest", () => {
      });
      testObj.setSuite(suite);
      let res = testObj.getFullName();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testObj.getFullName();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.testing', 'ArkTest', 'getFullName', 'getFullName(): string',
        arkTsAveragedTime);
    })

    it('PerformanceTest_ArkTest_SetSuite_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      // setSuite(): void — no assignment
      let suite = new arktest.ArkTestsuite("Suite");
      let testObj = new arktest.ArkTest("SetTest", () => {
      });
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        testObj.setSuite(suite);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'ArkTest', 'setSuite', 'setSuite(suite: ArkTestsuite): void',
        arkTsAveragedTime);
    })

    // ================================================================
    // 6. ArkTestsuite Class
    // ================================================================
    it('PerformanceTest_ArkTestsuite_Constructor_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      // constructor returns ArkTestsuite — assign
      let res = new arktest.ArkTestsuite("Suite");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new arktest.ArkTestsuite("Suite");
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.testing', 'ArkTestsuite', 'constructor', 'constructor(name: string)',
        arkTsAveragedTime);
    })

    it('PerformanceTest_ArkTestsuite_Before_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      // before(): void — no assignment
      let suite = new arktest.ArkTestsuite("Suite");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        suite.before();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'ArkTestsuite', 'before', 'before(): void',
        arkTsAveragedTime);
    })

    it('PerformanceTest_ArkTestsuite_After_2700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      // after(): void — no assignment
      let suite = new arktest.ArkTestsuite("Suite");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        suite.after();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'ArkTestsuite', 'after', 'after(): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ArkTestsuite_AddTestNameCb_2800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      // addTest(name, callback): void — no assignment
      let suite = new arktest.ArkTestsuite("Suite");
      let mockFn = () => {
      };
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        suite.addTest("Test" + i, mockFn);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'ArkTestsuite', 'addTest',
        'addTest(name: string, callback: () => void)', arkTsAveragedTime);
    })

    it('PerformanceTest_ArkTestsuite_AddAsyncTest_2900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      // addAsyncTest(): void — no assignment
      let suite = new arktest.ArkTestsuite("Suite");
      let mockAsyncFn = async () => {
      };
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        suite.addAsyncTest("AsyncTest" + i, mockAsyncFn);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'ArkTestsuite', 'addAsyncTest',
        'addAsyncTest(name: string, asyncCallback: () => Promise<void>)', arkTsAveragedTime);
    })

    it('PerformanceTest_ArkTestsuite_AddTestInstance_3000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      // addTest(test: ArkTest): void — no assignment
      let suite = new arktest.ArkTestsuite("Suite");
      let testObj = new arktest.ArkTest("ObjTest", () => {
      });
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        suite.addTest(testObj);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.testing', 'ArkTestsuite', 'addTest', 'addTest(test: ArkTest)',
        arkTsAveragedTime);
    })

    it('PerformanceTest_ArkTestsuite_Run_3100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      // run(): int — assign
      let suite = new arktest.ArkTestsuite("RunSuite");
      suite.addTest("EmptyTest", () => {
        arktest.assertTrue(true);
      });
      let res = suite.run();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = suite.run();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.testing', 'ArkTestsuite', 'run', 'run(): int', arkTsAveragedTime);
    })

  })
}