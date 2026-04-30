/*
 * Copyright (C) 2025-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
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

export default function ErrorsPerfTest() {
  describe('ErrorsPerfTest', () => {
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

    it('PerformanceTest_AssertionError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: AssertionError = new AssertionError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AssertionError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AssertionError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AssertionError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_AssertionError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: AssertionError = new AssertionError();
      let options: ErrorOptions = { cause: new Error("cause") };
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AssertionError("Assertion failed", options);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AssertionError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AssertionError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_DivideByZeroError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: DivideByZeroError = new DivideByZeroError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new DivideByZeroError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_DivideByZeroError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'DivideByZeroError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_NullPointerError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: NullPointerError = new NullPointerError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new NullPointerError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NullPointerError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NullPointerError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_UncaughtExceptionError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: UncaughtExceptionError = new UncaughtExceptionError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new UncaughtExceptionError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_UncaughtExceptionError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'UncaughtExceptionError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_SyntaxError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: SyntaxError = new SyntaxError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new SyntaxError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_SyntaxError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'SyntaxError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_SyntaxError_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: SyntaxError = new SyntaxError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = SyntaxError.$_invoke("Invalid syntax");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_SyntaxError_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'SyntaxError', '$_invoke',
        'static $_invoke(message?: String, options?: ErrorOptions): SyntaxError', arkTsAveragedTime);
    })

    it('PerformanceTest_JSONTypeError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: JSONTypeError = new JSONTypeError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new JSONTypeError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSONTypeError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'JSONTypeError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_RangeError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: RangeError = new RangeError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new RangeError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_RangeError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'RangeError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_RangeError_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: RangeError = new RangeError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = RangeError.$_invoke("Index out of range");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_RangeError_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'RangeError', '$_invoke',
        'static $_invoke(message?: String, options?: ErrorOptions): RangeError', arkTsAveragedTime);
    })

    it('PerformanceTest_NegativeArraySizeError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: NegativeArraySizeError = new NegativeArraySizeError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new NegativeArraySizeError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NegativeArraySizeError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NegativeArraySizeError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_ArrayIndexOutOfBoundsError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: ArrayIndexOutOfBoundsError = new ArrayIndexOutOfBoundsError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ArrayIndexOutOfBoundsError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayIndexOutOfBoundsError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayIndexOutOfBoundsError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_ArithmeticError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: ArithmeticError = new ArithmeticError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ArithmeticError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArithmeticError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArithmeticError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_OutOfMemoryError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: OutOfMemoryError = new OutOfMemoryError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new OutOfMemoryError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_OutOfMemoryError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'OutOfMemoryError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_StackOverflowError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: StackOverflowError = new StackOverflowError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new StackOverflowError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_StackOverflowError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'StackOverflowError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_InstantiationError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: InstantiationError = new InstantiationError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new InstantiationError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InstantiationError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InstantiationError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_InternalError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: InternalError = new InternalError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new InternalError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InternalError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InternalError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_IndexOutOfBoundsError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: IndexOutOfBoundsError = new IndexOutOfBoundsError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new IndexOutOfBoundsError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_IndexOutOfBoundsError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'IndexOutOfBoundsError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_StringIndexOutOfBoundsError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: StringIndexOutOfBoundsError = new StringIndexOutOfBoundsError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new StringIndexOutOfBoundsError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_StringIndexOutOfBoundsError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'StringIndexOutOfBoundsError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_ClassCastError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: ClassCastError = new ClassCastError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ClassCastError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassCastError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ClassCastError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_ArrayStoreError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: ArrayStoreError = new ArrayStoreError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ArrayStoreError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayStoreError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayStoreError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_ExceptionInInitializerError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: ExceptionInInitializerError = new ExceptionInInitializerError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ExceptionInInitializerError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ExceptionInInitializerError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ExceptionInInitializerError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_CoroutinesLimitExceedError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: CoroutinesLimitExceedError = new CoroutinesLimitExceedError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new CoroutinesLimitExceedError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_CoroutinesLimitExceedError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'CoroutinesLimitExceedError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_IllegalLockStateError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: IllegalLockStateError = new IllegalLockStateError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new IllegalLockStateError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_IllegalLockStateError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'IllegalLockStateError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_InvalidCoroutineOperationError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: InvalidCoroutineOperationError = new InvalidCoroutineOperationError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new InvalidCoroutineOperationError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InvalidCoroutineOperationError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InvalidCoroutineOperationError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_ArgumentsUnderapplicationError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: ArgumentsUnderapplicationError = new ArgumentsUnderapplicationError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ArgumentsUnderapplicationError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArgumentsUnderapplicationError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArgumentsUnderapplicationError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


    it('PerformanceTest_InvalidStoreAccessError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: InvalidStoreAccessError = new InvalidStoreAccessError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new InvalidStoreAccessError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InvalidStoreAccessError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InvalidStoreAccessError', 'constructor',
        'constructor()', arkTsAveragedTime);
    })


  })
}
