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

export default function BuiltinArrayPerfTest14(): void {
  describe('BuiltinArrayPerfTest14', () => {
    // 毫秒 * 1000 = 微秒 毫秒 * 1000000 = 纳秒
    const BASE_COUNT = 50000;
    const BASE_COUNT_BIG = 500000;
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

    // ==================== at ====================

    it('PerformanceTest_BuiltinArrayTest_35000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result: Byte = 2;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = at(fixArray, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
        'at(FixedArray<byte>, int): Byte', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_35100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
      let result: Double = 3.33;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = at(fixArray, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
        'at(FixedArray<double>, int): Double', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_35200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<float> = [1.1f, 2.2f, 3.3f, 4.4f, 5.5f];
      let result: Float = 3.3f;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = at(fixArray, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
        'at(FixedArray<float>, int): Float', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_35300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<int> = [100, 200, 300, 400, 500];
      let result: Int = 200;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = at(fixArray, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
        'at(FixedArray<int>, int): Int', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_35400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<long> = [1000, 2000, 3000, 4000, 5000];
      let result: Long = 3000;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = at(fixArray, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
        'at(FixedArray<long>, int): Long', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_35500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
      let result: Short = 30;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = at(fixArray, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
        'at(FixedArray<short>, int): Short', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_35600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<boolean> = [true, false, true, false, true];
      let result: boolean = true;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = at(va, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
        'at(ValueArray<boolean>, int): Boolean', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_35700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<byte> = [1, 2, 3, 4, 5];
      let result: Byte = 2;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = at(va, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
        'at(ValueArray<byte>, int): Byte', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_35800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
      let result: Double = 3.33;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = at(va, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
        'at(ValueArray<double>, int): Double', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_35900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<float> = [1.1f, 2.2f, 3.3f, 4.4f, 5.5f];
      let result: Float = 3.3f;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = at(va, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
        'at(ValueArray<float>, int): Float', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_36000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<int> = [100, 200, 300, 400, 500];
      let result: Int = 200;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = at(va, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_36000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
        'at(ValueArray<int>, int): Int', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_36100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<long> = [1000, 2000, 3000, 4000, 5000];
      let result: Long = 3000;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = at(va, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_36100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
        'at(ValueArray<long>, int): Long', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_36200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<short> = [10, 20, 30, 40, 50];
      let result: Short = 30;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = at(va, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_36200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
        'at(ValueArray<short>, int): Short', arkTsAveragedTime);
    })


    // ==================== concat ====================

    it('PerformanceTest_BuiltinArrayTest_36300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true, false, true];
      let fixArray2: FixedArray<boolean> = [false, true, false, true, false];
      let result = new FixedArray<boolean>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = concat(fixArray, fixArray2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_36300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
        'concat(FixedArray<boolean>, FixedArray<boolean>, FixedArray<FixedArray<boolean>>): FixedArray<boolean>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_36400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let fixArray2: FixedArray<byte> = [6, 7, 8, 9, 10];
      let result = new FixedArray<byte>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = concat(fixArray, fixArray2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_36400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
        'concat(FixedArray<byte>, FixedArray<byte>, FixedArray<FixedArray<byte>>): FixedArray<byte>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_36500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<float> = [1.1f, 2.2f, 3.3f, 4.4f, 5.5f];
      let fixArray2: FixedArray<float> = [6.6f, 7.7f, 8.8f, 9.9f, 10.0f];
      let result = new FixedArray<float>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = concat(fixArray, fixArray2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_36500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
        'concat(FixedArray<float>, FixedArray<float>, FixedArray<FixedArray<float>>): FixedArray<float>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_36600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<int> = [100, 200, 300, 400, 500];
      let fixArray2: FixedArray<int> = [600, 700, 800, 900, 1000];
      let result = new FixedArray<int>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = concat(fixArray, fixArray2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_36600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
        'concat(FixedArray<int>, FixedArray<int>, FixedArray<FixedArray<int>>): FixedArray<int>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_36700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<long> = [1000, 2000, 3000, 4000, 5000];
      let fixArray2: FixedArray<long> = [6000, 7000, 8000, 9000, 10000];
      let result = new FixedArray<long>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = concat(fixArray, fixArray2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_36700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
        'concat(FixedArray<long>, FixedArray<long>, FixedArray<FixedArray<long>>): FixedArray<long>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_36800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
      let fixArray2: FixedArray<short> = [60, 70, 80, 90, 100];
      let result = new FixedArray<short>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = concat(fixArray, fixArray2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_36800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
        'concat(FixedArray<short>, FixedArray<short>, FixedArray<FixedArray<short>>): FixedArray<short>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_36900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<boolean> = [true, false, true, false, true];
      let va2: ValueArray<boolean> = [false, true, false, true, false];
      let result: ValueArray<boolean> = [true, false, true, false, true];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = concat(va, va2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_36900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
        'concat(ValueArray<boolean>, ValueArray<boolean>, FixedArray<ValueArray<boolean>>): ValueArray<boolean>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_37000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<byte> = [1, 2, 3, 4, 5];
      let va2: ValueArray<byte> = [6, 7, 8, 9, 10];
      let result: ValueArray<byte> = [1, 2, 3, 4, 5];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = concat(va, va2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_37000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
        'concat(ValueArray<byte>, ValueArray<byte>, FixedArray<ValueArray<byte>>): ValueArray<byte>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_37100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
      let va2: ValueArray<double> = [6.66, 7.77, 8.88, 9.99, 10.10];
      let result: ValueArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = concat(va, va2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_37100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
        'concat(ValueArray<double>, ValueArray<double>, FixedArray<ValueArray<double>>): ValueArray<double>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_37200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<float> = [1.1f, 2.2f, 3.3f, 4.4f, 5.5f];
      let va2: ValueArray<float> = [6.6f, 7.7f, 8.8f, 9.9f, 10.0f];
      let result: ValueArray<float> = [1.1f, 2.2f, 3.3f, 4.4f, 5.5f];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = concat(va, va2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_37200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
        'concat(ValueArray<float>, ValueArray<float>, FixedArray<ValueArray<float>>): ValueArray<float>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_37300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<int> = [100, 200, 300, 400, 500];
      let va2: ValueArray<int> = [600, 700, 800, 900, 1000];
      let result: ValueArray<int> = [100, 200, 300, 400, 500];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = concat(va, va2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_37300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
        'concat(ValueArray<int>, ValueArray<int>, FixedArray<ValueArray<int>>): ValueArray<int>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_37400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<long> = [1000, 2000, 3000, 4000, 5000];
      let va2: ValueArray<long> = [6000, 7000, 8000, 9000, 10000];
      let result: ValueArray<long> = [1000, 2000, 3000, 4000, 5000];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = concat(va, va2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_37400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
        'concat(ValueArray<long>, ValueArray<long>, FixedArray<ValueArray<long>>): ValueArray<long>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_37500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<short> = [10, 20, 30, 40, 50];
      let va2: ValueArray<short> = [60, 70, 80, 90, 100];
      let result: ValueArray<short> = [10, 20, 30, 40, 50];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = concat(va, va2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_37500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
        'concat(ValueArray<short>, ValueArray<short>, FixedArray<ValueArray<short>>): ValueArray<short>', arkTsAveragedTime);
    })


    // ==================== copyWithin ====================

    it('PerformanceTest_BuiltinArrayTest_37600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result = new FixedArray<byte>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(fixArray, 0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_37600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(FixedArray<byte>, int): FixedArray<byte>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_37700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<float> = [1.1f, 2.2f, 3.3f, 4.4f, 5.5f];
      let result = new FixedArray<float>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(fixArray, 0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_37700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(FixedArray<float>, int): FixedArray<float>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_37800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<int> = [100, 200, 300, 400, 500];
      let result = new FixedArray<int>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(fixArray, 0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_37800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(FixedArray<int>, int): FixedArray<int>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_37900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<long> = [1000, 2000, 3000, 4000, 5000];
      let result = new FixedArray<long>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(fixArray, 0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_37900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(FixedArray<long>, int): FixedArray<long>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_38000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
      let result = new FixedArray<short>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(fixArray, 0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(FixedArray<short>, int): FixedArray<short>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_38100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<boolean> = [true, false, true, false, true];
      let result: ValueArray<boolean> = [true, false, true, false, true];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(va, 0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(ValueArray<boolean>, int): ValueArray<boolean>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_38200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<byte> = [1, 2, 3, 4, 5];
      let result: ValueArray<byte> = [1, 2, 3, 4, 5];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(va, 0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(ValueArray<byte>, int): ValueArray<byte>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_38300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
      let result: ValueArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(va, 0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(ValueArray<double>, int): ValueArray<double>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_38400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<float> = [1.1f, 2.2f, 3.3f, 4.4f, 5.5f];
      let result: ValueArray<float> = [1.1f, 2.2f, 3.3f, 4.4f, 5.5f];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(va, 0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(ValueArray<float>, int): ValueArray<float>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_38500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<int> = [100, 200, 300, 400, 500];
      let result: ValueArray<int> = [100, 200, 300, 400, 500];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(va, 0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(ValueArray<int>, int): ValueArray<int>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_38600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<long> = [1000, 2000, 3000, 4000, 5000];
      let result: ValueArray<long> = [1000, 2000, 3000, 4000, 5000];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(va, 0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(ValueArray<long>, int): ValueArray<long>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_38700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<short> = [10, 20, 30, 40, 50];
      let result: ValueArray<short> = [10, 20, 30, 40, 50];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(va, 0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(ValueArray<short>, int): ValueArray<short>', arkTsAveragedTime);
    })


    // ==================== fill ====================

    it('PerformanceTest_BuiltinArrayTest_38800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result = new FixedArray<byte>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fill(fixArray, 99);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
        'fill(FixedArray<byte>, byte, int, int): FixedArray<byte>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_38900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<float> = [1.1f, 2.2f, 3.3f, 4.4f, 5.5f];
      let result = new FixedArray<float>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fill(fixArray, 9.9f);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
        'fill(FixedArray<float>, float, int, int): FixedArray<float>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_39000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<int> = [100, 200, 300, 400, 500];
      let result = new FixedArray<int>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fill(fixArray, 999);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
        'fill(FixedArray<int>, int, int, int): FixedArray<int>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_39100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<long> = [1000, 2000, 3000, 4000, 5000];
      let result = new FixedArray<long>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fill(fixArray, 9999);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
        'fill(FixedArray<long>, long, int, int): FixedArray<long>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_39200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
      let result = new FixedArray<short>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fill(fixArray, 99);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
        'fill(FixedArray<short>, short, int, int): FixedArray<short>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_39300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<boolean> = [true, false, true, false, true];
      let result: ValueArray<boolean> = [true, false, true, false, true];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fill(va, false);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
        'fill(ValueArray<boolean>, boolean, int, int): ValueArray<boolean>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_39400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<byte> = [1, 2, 3, 4, 5];
      let result: ValueArray<byte> = [1, 2, 3, 4, 5];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fill(va, 99);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
        'fill(ValueArray<byte>, byte, int, int): ValueArray<byte>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_39500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
      let result: ValueArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fill(va, 9.99);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
        'fill(ValueArray<double>, double, int, int): ValueArray<double>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_39600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<float> = [1.1f, 2.2f, 3.3f, 4.4f, 5.5f];
      let result: ValueArray<float> = [1.1f, 2.2f, 3.3f, 4.4f, 5.5f];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fill(va, 9.9f);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
        'fill(ValueArray<float>, float, int, int): ValueArray<float>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_39700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<int> = [100, 200, 300, 400, 500];
      let result: ValueArray<int> = [100, 200, 300, 400, 500];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fill(va, 999);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
        'fill(ValueArray<int>, int, int, int): ValueArray<int>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_39800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<long> = [1000, 2000, 3000, 4000, 5000];
      let result: ValueArray<long> = [1000, 2000, 3000, 4000, 5000];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fill(va, 9999);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
        'fill(ValueArray<long>, long, int, int): ValueArray<long>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_39900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let va: ValueArray<short> = [10, 20, 30, 40, 50];
      let result: ValueArray<short> = [10, 20, 30, 40, 50];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fill(va, 99);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
        'fill(ValueArray<short>, short, int, int): ValueArray<short>', arkTsAveragedTime);
    })


  })
}
