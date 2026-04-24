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
import { uri, util, url, xml, buffer, transfer } from '@kit.ArkTS';

let str = '';


export default function BuiltinArraySortPerfTest() {
  describe('BuiltinArraySortPerfTest', () => {
    // 毫秒 * 1000 = 微秒 毫秒 * 1000000 = 纳秒
    const BASE_COUNT = 500;
    // url.URLParams.get --url.URLParams.has --util.getHash --util.Types.isMap --uri.uri.checkIsAbsolute --util.Types.isArrayBuffer
    const BASE_COUNT_BIG = 500000;
    const UNIT_TIME = 1000000;
    // buffer.from
    const BASE_COUNT_MIX = 100;

    beforeEach(() => {
      let ret = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret);
      let ret1 = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret1);
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })
    it('PerformanceTest_BuiltinArraySortPerfTest_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<Byte> = [3, 1, 2];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            arr_sort_stable(fixArray, 0, 3, (lhs: byte, rhs: byte): int => { return lhs - rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(1);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<Short> = [30, 10, 20];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            arr_sort_stable(fixArray, 0, 3, (lhs: short, rhs: short): int => { return lhs - rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(10);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<Int> = [300, 100, 200];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            arr_sort_stable(fixArray, 0, 3, (lhs: int, rhs: int): int => { return lhs - rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(100);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<Long> = [3000, 1000, 2000];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            arr_sort_stable(fixArray, 0, 3, (lhs: long, rhs: long): int => { return lhs > rhs ? 1 : -1; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(1000);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<Float> = [3.3 as float, 1.1 as float, 2.2 as float];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            arr_sort_stable(fixArray, 0, 3, (lhs: float, rhs: float): int => { return lhs > rhs ? 1 : -1; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertClose(1.1, 0.01);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<Double> = [3.33, 1.11, 2.22];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            arr_sort_stable(fixArray, 0, 3, (lhs: double, rhs: double): int => { return lhs > rhs ? 1 : -1; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertClose(1.11, 0.001);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<boolean> = [true, false, true];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort(fixArray, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(false);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<boolean> = [true, false, true];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            swap(fixArray, 0, 1);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<boolean> = [true, false, true];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, 3, (lhs: boolean, rhs: boolean) => { return lhs === rhs ? false : !lhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<boolean> = [true, false, true];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, (lhs: boolean, rhs: boolean) => { return lhs === rhs ? false : !lhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<boolean> = [true, false, true];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, (lhs: boolean, rhs: boolean) => { return lhs === rhs ? false : !lhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [3, 1, 2];
        let result = new FixedArray<byte>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = mergeSort(fixArray, (lhs: byte, rhs: byte): int => { return lhs - rhs; }, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(1);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [3, 1, 2];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort(fixArray, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(1);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [3, 1, 2];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            swap(fixArray, 0, 1);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [3, 1, 2];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, 3, (lhs: byte, rhs: byte) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(1);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [3, 1, 2];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, (lhs: byte, rhs: byte) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(1);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [3, 1, 2];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, (lhs: byte, rhs: byte) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(1);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [30, 10, 20];
        let result = new FixedArray<short>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = mergeSort(fixArray, (lhs: short, rhs: short): int => { return lhs - rhs; }, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(10);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [30, 10, 20];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort(fixArray, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(10);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [30, 10, 20];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            swap(fixArray, 0, 1);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [30, 10, 20];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, 3, (lhs: short, rhs: short) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(10);
    })


        it('PerformanceTest_BuiltinArraySortPerfTest_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [30, 10, 20];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, (lhs: short, rhs: short) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(10);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_2300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [30, 10, 20];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, (lhs: short, rhs: short) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(10);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<int> = [300, 100, 200];
        let result = new FixedArray<int>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = mergeSort(fixArray, (lhs: int, rhs: int): int => { return lhs - rhs; }, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(100);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<int> = [300, 100, 200];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort(fixArray, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(100);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<int> = [300, 100, 200];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            swap(fixArray, 0, 1);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_2700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<int> = [300, 100, 200];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, 3, (lhs: int, rhs: int) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(100);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_2800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<int> = [300, 100, 200];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, (lhs: int, rhs: int) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(100);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_2900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<int> = [300, 100, 200];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, (lhs: int, rhs: int) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(100);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_3000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<long> = [3000, 1000, 2000];
        let result = new FixedArray<long>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = mergeSort(fixArray, (lhs: long, rhs: long): int => { return lhs > rhs ? 1 : -1; }, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(1000);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_3100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<long> = [3000, 1000, 2000];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort(fixArray, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(1000);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_3200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<long> = [3000, 1000, 2000];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            swap(fixArray, 0, 1);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_3300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<long> = [3000, 1000, 2000];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, 3, (lhs: long, rhs: long) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(1000);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_3400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<long> = [3000, 1000, 2000];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, (lhs: long, rhs: long) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(1000);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_3500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<long> = [3000, 1000, 2000];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, (lhs: long, rhs: long) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(1000);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_3600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<float> = [3.3 as float, 1.1 as float, 2.2 as float];
        let result = new FixedArray<float>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = mergeSort(fixArray, (lhs: float, rhs: float): int => { return lhs > rhs ? 1 : -1; }, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertClose(1.1, 0.01);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_3700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<float> = [3.3 as float, 1.1 as float, 2.2 as float];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort(fixArray, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertClose(1.1, 0.01);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_3800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<float> = [3.3 as float, 1.1 as float, 2.2 as float];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            swap(fixArray, 0, 1);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertClose(1.1, 1);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_3900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<float> = [3.3 as float, 1.1 as float, 2.2 as float];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, 3, (lhs: float, rhs: float) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertClose(1.1, 0.01);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_4000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<float> = [3.3 as float, 1.1 as float, 2.2 as float];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, (lhs: float, rhs: float) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertClose(1.1, 0.01);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_4100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<float> = [3.3 as float, 1.1 as float, 2.2 as float];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, (lhs: float, rhs: float) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertClose(1.1, 0.01);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_4200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [3.33, 1.11, 2.22];
        let result = new FixedArray<double>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = mergeSort(fixArray, (lhs: double, rhs: double): int => { return lhs > rhs ? 1 : -1; }, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertClose(1.11, 0.001);
    })



        it('PerformanceTest_BuiltinArraySortPerfTest_4300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [3.33, 1.11, 2.22];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort(fixArray, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertClose(1.11, 0.001);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_4400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [3.33, 1.11, 2.22];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            swap(fixArray, 0, 1);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertClose(1.11, 1);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_4500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [3.33, 1.11, 2.22];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, 3, (lhs: double, rhs: double) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertClose(1.11, 0.001);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_4600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [3.33, 1.11, 2.22];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, (lhs: double, rhs: double) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertClose(1.11, 0.001);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_4700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [3.33, 1.11, 2.22];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, (lhs: double, rhs: double) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertClose(1.11, 0.001);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_4800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'c',c'a', c'b'];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort(fixArray, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(c'a');
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_4900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'c',c'a', c'b'];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            swap(fixArray, 0, 1);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(c'c');
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_5000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'c',c'a', c'b'];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, 3, (lhs: char, rhs: char) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(c'a');
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_5100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'c',c'a', c'b'];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, (lhs: char, rhs: char) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(c'a');
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_5200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'c',c'a', c'b'];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, (lhs: char, rhs: char) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual(c'a');
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_5300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<string> = ['ccc', 'aaa', 'bbb'];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            swap(fixArray, 0, 1);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_5400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<string> = ['ccc', 'aaa', 'bbb'];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, 3, (lhs: string, rhs: string) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual('aaa');
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_5500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<string> = ['ccc', 'aaa', 'bbb'];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, (lhs: string, rhs: string) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual('aaa');
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_5600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<string> = ['ccc', 'aaa', 'bbb'];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            sort_subarray(fixArray, 0, (lhs: string, rhs: string) => { return lhs < rhs; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(fixArray[0]).assertEqual('aaa');
    })

    })
}