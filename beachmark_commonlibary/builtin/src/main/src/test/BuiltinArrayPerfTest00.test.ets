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

export default function BuiltinArrayPerfTest00() {
  describe('BuiltinArrayPerfTest00', () => {
    // 毫秒 * 1000 = 微秒 毫秒 * 1000000 = 纳秒
    const BASE_COUNT = 50000;
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

    it('PerformanceTest_BuiltinArrayTest_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray = new FixedArray<boolean>(5)
      let res = true;
      fixArray[1] = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = at(fixArray, 1)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
        'at(index: int): boolean | undefined', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray = new FixedArray<boolean>(5)
      let res = new FixedArray<boolean>(5)
      fixArray[1] = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = copyWithin(fixArray, 0)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(target: int, start?: int, end?: int): FixedArray<boolean>', arkTsAveragedTime);

    })
    it('PerformanceTest_BuiltinArrayTest_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray = new FixedArray<boolean>(5)
      let res = new FixedArray<boolean>(5)
      fixArray[1] = true;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = copyWithin(fixArray, 0, 0)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(target: int, start?: int, end?: int): FixedArray<boolean>', arkTsAveragedTime);

    })


    it('PerformanceTest_BuiltinArrayTest_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray = new FixedArray<boolean>(5)
      let result = new FixedArray<boolean>(5)
      fixArray[1] = true;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(fixArray, 4, 1, 4)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(target: int, start?: int, end?: int): FixedArray<boolean>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray = new FixedArray<boolean>(5)
      fixArray[1] = true;
      let result = new FixedArray<boolean>(5)
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fill(fixArray, false, 0, 6)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
        'fill(value: boolean, start?: int, end?: int): FixedArray<boolean>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray = new FixedArray<boolean>(5);
      fixArray[0] = true;
      fixArray[1] = false;
      let result: boolean | undefined = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = find(fixArray, (value) => value === true)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'find',
        'find(predicate: (value: boolean, index: int, array: FixedArray<boolean>) => boolean): boolean | undefined',
        arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray = new FixedArray<boolean>(5);
      fixArray[0] = true;
      fixArray[1] = false;
      let result = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = findIndex(fixArray, (value) => value === false)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'findIndex',
        'findIndex(predicate: (value: boolean, index: int, array: FixedArray<boolean>) => boolean): int',
        arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray = new FixedArray<boolean>(5);
      fixArray[3] = false;
      fixArray[2] = true;
      fixArray[4] = true;
      let result: boolean | undefined = false
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = findLast(fixArray, (value) => value === true)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'findLast',
        'findLast(predicate: (elem: boolean, index: int, array: FixedArray<boolean>) => boolean): boolean | undefined',
        arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, true, true];
      let result: boolean | undefined = false
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = every(fixArray, (value) => value === true);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'every',
        'every(predicate: (value: boolean, index: int, array: FixedArray<boolean>) => boolean): boolean',
        arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_01000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray = new FixedArray<boolean>(5);
      fixArray[3] = false;
      fixArray[4] = true;
      let result: boolean | undefined = false
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = some(fixArray, (value) => value === true)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_01000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'some',
        'some(predicate: (value: boolean, index: int, array: FixedArray<boolean>) => boolean): boolean',
        arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_01100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray = new FixedArray<boolean>(5);
      fixArray[3] = false;
      fixArray[2] = true;
      fixArray[4] = true;
      let result = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = findLastIndex(fixArray, (value) => value === true)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_01100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'findLastIndex',
        'findLastIndex(predicate: (element: boolean, index: int, array: FixedArray<boolean>) => boolean): int',
        arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_01200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray = new FixedArray<boolean>(5);
      let result: boolean | undefined = false
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = reduce(fixArray, (previousValue, currentValue) => {
          return previousValue && currentValue;
        })
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_01200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reduce',
        'reduce(callbackfn: (previousValue: boolean, currentValue: boolean, index: int, array: FixedArray<boolean>) => boolean): boolean',
        arkTsAveragedTime);
    })
    it('PerformanceTest_BuiltinArrayTest_01300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray = new FixedArray<boolean>(5);
      fixArray[0] = true
      fixArray[3] = true
      fixArray[4] = true
      let result = 0
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = reduce(fixArray, (previousValue, currentValue) => {
          return previousValue + (currentValue ? 1 : 0);
        }, 0)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_01300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reduce',
        'reduce<U>(callbackfn: (previousValue: U, currentValue: boolean, index: int, array: FixedArray<boolean>) => U, initialValue: U): U',
        arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_01400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray = new FixedArray<boolean>(5);
      fixArray[0] = true
      fixArray[3] = true
      fixArray[4] = true
      let result = 0
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = reduceRight(fixArray, (previousValue, currentValue) => {
          return previousValue + (currentValue ? 1 : 0);
        }, 0)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_01400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reduceRight',
        'reduceRight(callbackfn: (previousValue: boolean, currentValue: boolean, index: int, array: FixedArray<boolean>) => boolean): boolean',
        arkTsAveragedTime);
    })



    it('PerformanceTest_BuiltinArrayTest_01600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray = new FixedArray<boolean>(5);
      let result = new FixedArray<boolean>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = slice(fixArray, 2)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_01600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice',
        'slice(start?: int, end?: int): FixedArray<boolean>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_01700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray = new FixedArray<boolean>(5);
      let result = new FixedArray<boolean>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = slice(fixArray, 2, 4)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_01700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice',
        'slice(start?: int, end?: int): FixedArray<boolean>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_01800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray = new FixedArray<boolean>(5);
      fixArray[1] = true
      fixArray[4] = true
      let result = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = lastIndexOf(fixArray, true)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_01800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'lastIndexOf',
        'lastIndexOf(element: boolean, fromIndex?: int): int', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_01900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true]
      let result = "";
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = join(fixArray, '-');
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_01900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'join',
        'join(sep?: String): string', arkTsAveragedTime);

    })

    it('PerformanceTest_BuiltinArrayTest_02000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true]
      let result = "";
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toString(fixArray);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_02000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toString',
        'toString(): string', arkTsAveragedTime);

    })



    it('PerformanceTest_BuiltinArrayTest_02300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true]
      let result = "";
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toLocaleString(fixArray);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_02300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toLocaleString',
        'toLocaleString(): string', arkTsAveragedTime);

    })

    it('PerformanceTest_BuiltinArrayTest_02400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true]
      let result = new FixedArray<boolean>(5)
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toSpliced(fixArray, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_02400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toSpliced',
        'toSpliced(start: int): FixedArray<boolean>', arkTsAveragedTime);
    })
    it('PerformanceTest_BuiltinArrayTest_02500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true];
      let result = new FixedArray<boolean>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toSpliced(fixArray, 1, 1, false);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_02500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toSpliced',
        'toSpliced(start: int, delete: int, ...items: FixedArray<boolean>): FixedArray<boolean>', arkTsAveragedTime);

    })


    it('PerformanceTest_BuiltinArrayTest_02600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true];
      let result = new FixedArray<boolean>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toSpliced(fixArray, 1, 1)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_02600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toSpliced',
        'toSpliced(start?: int, delete?: int): FixedArray<boolean>', arkTsAveragedTime);

    })


    it('PerformanceTest_BuiltinArrayTest_02700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true];
      let result = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = includes(fixArray, false)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_02700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'includes',
        'includes(val: boolean, fromIndex?: int): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_02800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true];
      let result = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = indexOf(fixArray, false)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_02800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'indexOf',
        'indexOf(val: boolean, fromIndex?: int): int', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_02900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true];
      let result = new FixedArray<boolean>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toSorted(fixArray);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_02900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toSorted',
        'toSorted(): FixedArray<boolean>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_03000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true];
      let result = new FixedArray<boolean>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toSorted(fixArray, (a: boolean, b: boolean) => {
          return a === b ? 0 : a ? -1 : 1;
        })
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_03000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toSorted',
        'toSorted(comparator?: (a: boolean, b: boolean) => int): FixedArray<boolean>', arkTsAveragedTime);

    })

    it('PerformanceTest_BuiltinArrayTest_03100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true]
      let result = new FixedArray<boolean>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = reverse(fixArray)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_03100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reverse',
        'reverse(): FixedArray<boolean>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_03200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true]
      let result = new FixedArray<boolean>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toReversed(fixArray);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_03200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toReversed',
        'toReversed(): FixedArray<boolean>', arkTsAveragedTime);
    })
    it('PerformanceTest_BuiltinArrayTest_03300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true]
      let result = new FixedArray<boolean>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = with(fixArray, 1, true);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_03300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'with',
        'with(index: number, value: T): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_03400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true]
      let resultct = new FixedArray<boolean>(5);
      let result = values(resultct)
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = values(fixArray);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_03400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'values',
        'values(): Iterator<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_03500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false]
      let resultct = new FixedArray<boolean>(5);
      let result = entries(resultct);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = entries(fixArray);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_03500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'entries',
        'entries(): Iterator<[int, T]>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_03600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true]
      let result = new FixedArray<boolean>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = map(fixArray, (value: boolean) => !value);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_03600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'map',
        'map(callbackfn: (value: T, index: number) => T): FixedArray<T>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_03700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true]
      let result = true;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = reduceRight(fixArray, (prev: boolean, curr: boolean) => prev && curr);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_03700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reduceRight',
        'reduceRight(callbackfn: (previousValue: T, currentValue: T, index: number) => T): T', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_03800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true]
      let result = new FixedArray<boolean>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = filter(fixArray, (value: boolean) => value);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_03800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'filter',
        'filter(predicate: (value: T, index: number) => boolean): FixedArray<T>', arkTsAveragedTime);

    })
    it('PerformanceTest_BuiltinArrayTest_03900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true];
      let fixArray2: FixedArray<boolean> = [true, false, true];
      let result = new FixedArray<boolean>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = concat(fixArray, fixArray2)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_03900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
        'concat(...items: (T | ConcatArray<T>)[]): FixedArray<T>', arkTsAveragedTime);

    })

    it('PerformanceTest_BuiltinArrayTest_04000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true];
      let result = new FixedArray<boolean>(3);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = concat(fixArray, [false, true] as FixedArray<boolean>)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_04000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
        'concat(...items: (T | ConcatArray<T>)[]): FixedArray<T>', arkTsAveragedTime);

    })

    it('PerformanceTest_BuiltinArrayTest_04100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true];
      let result = new FixedArray<boolean>(3);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = sort(fixArray, (a: boolean, b: boolean): int => {
          return (a ? 1 : 0) - (b ? 1 : 0);
        })
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_04100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'sort',
        'sort(compareFn?: (a: T, b: T) => number): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_04200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true];
      let result = new FixedArray<boolean>(3);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = sort(fixArray);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_04200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'sort',
        'sort(): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_04300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<boolean> = [true, false, true];
      let result = keys(fixArray);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = keys(fixArray);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_04300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'keys',
        'keys(): Iterator<number>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_04400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let result: Byte = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = at(fixArray, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_04400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
        'at(index: number): T', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_04500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result = new FixedArray<byte>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(fixArray, 0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_04500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(target: number): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_04600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result = new FixedArray<byte>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(fixArray, 0, 3);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_04600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(target: number, start: number): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_04700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result = new FixedArray<byte>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(fixArray, 0, 3, 4);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_04700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(target: number, start: number, end?: number): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_04800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result = new FixedArray<byte>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fill(fixArray, 9);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_04800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
        'fill(value: T, start?: number, end?: number): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_04900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result: Byte | undefined = undefined;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = find(fixArray, (value: byte) => value > 3);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_04900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'find',
        'find(predicate: (value: T, index: number) => boolean): T | undefined', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_05000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result: int = -1;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = findIndex(fixArray, (value: byte) => value > 3);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_05000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'findIndex',
        'findIndex(predicate: (value: T, index: number) => boolean): number', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_05100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result: Byte | undefined = undefined;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = findLast(fixArray, (elem: byte) => elem < 5);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_05100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'findLast',
        'findLast(predicate: (value: T, index: number) => boolean): T | undefined', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_05200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [2, 4, 6, 8, 10];
      let result: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = every(fixArray, (value: byte) => value % 2 === 0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_05200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'every',
        'every(predicate: (value: T, index: number) => boolean): boolean', arkTsAveragedTime);
    })
    it('PerformanceTest_BuiltinArrayTest_05300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = some(fixArray, (value: byte) => value > 4);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_05300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'some',
        'some(predicate: (value: T, index: number) => boolean): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_05400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result: int = -1;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = findLastIndex(fixArray, (element: byte) => element < 5);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_05400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'findLastIndex',
        'findLastIndex(predicate: (value: T, index: number) => boolean): number', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_05500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let result: byte = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = reduce(fixArray, (previousValue: byte, currentValue: byte) => previousValue + currentValue as byte);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_05500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reduce',
        'reduce(callbackfn: (previousValue: T, currentValue: T, index: number) => T): T', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_05600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let result: int = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = reduce(fixArray, (previousValue: int, currentValue: byte) => previousValue + currentValue, 10);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_05600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reduce',
        'reduce<U>(callbackfn: (previousValue: U, currentValue: T, index: number) => U, initialValue: U): U', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_05700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let result: string = "";
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = reduceRight(fixArray, (previousValue: string, currentValue: byte) => previousValue + currentValue, "");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_05700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reduceRight',
        'reduceRight<U>(callbackfn: (previousValue: U, currentValue: T, index: number) => U, initialValue: U): U', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_05800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let result: byte = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        forEach(fixArray, (value: byte, index: int) => {
            result = value;
        });
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_05800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'forEach',
        'forEach(callbackfn: (value: T, index: number) => void): void', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_05900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result = new FixedArray<byte>(3);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = slice(fixArray, 2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_05900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice',
        'slice(start: number): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_06000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result = new FixedArray<byte>(2);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = slice(fixArray, 1, 3);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_06000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice',
        'slice(start: number, end?: number): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_06100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 2, 1];
      let result: int = -1;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = lastIndexOf(fixArray, 2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_06100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'lastIndexOf',
        'lastIndexOf(searchElement: T, fromIndex?: number): number', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_06200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let result: string = "";
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = join(fixArray, "-");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_06200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'join',
        'join(separator?: string): string', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_06300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let result: string = "";
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toString(fixArray);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_06300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toString',
        'toString(): string', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_06400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let result: string = "";
      let locales: Object = "en-US";
      let options: Object = {};
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toLocaleString(fixArray, locales, options);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_06400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toLocaleString',
        'toLocaleString(locales: Object, options: Object): string', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_06500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let locales: Object = "zh-CN";
      let result = toLocaleString(fixArray, locales);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toLocaleString(fixArray, locales);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_06500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toLocaleString',
        'toLocaleString(locales?: string | string[], options?: LocaleOptions): string', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_06600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let result = "";
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toLocaleString(fixArray);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_06600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toLocaleString',
        'toLocaleString(): string', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_06700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result = new FixedArray<byte>(2);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toSpliced(fixArray, 2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_06700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toSpliced',
        'toSpliced(start: number): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_06800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result = new FixedArray<byte>(4);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toSpliced(fixArray, 1, 2, 8);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_06800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toSpliced',
        'toSpliced(start: number, deleteCount: number, ...items: T[]): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_06900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result = new FixedArray<byte>(3);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toSpliced(fixArray, 1, 2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_06900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toSpliced',
        'toSpliced(start: number, deleteCount?: number): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_07000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = includes(fixArray, 3);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_07000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'includes',
        'includes(searchElement: T, fromIndex?: number): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_07100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result: int = -1;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = indexOf(fixArray, 4);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_07100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'indexOf',
        'indexOf(searchElement: T, fromIndex?: number): number', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_07200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [3, 1, 2];
      let result = new FixedArray<byte>(3);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toSorted(fixArray);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_07200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toSorted',
        'toSorted(): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_07300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [3, 1, 2];
      let result = new FixedArray<byte>(3);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toSorted(fixArray, (a: byte, b: byte): int => {
          return b - a;
        });
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_07300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toSorted',
        'toSorted(compareFn?: (a: T, b: T) => number): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_07400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let result = new FixedArray<byte>(1);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = reverse(fixArray);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_07400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reverse',
        'reverse(): FixedArray<T>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_07500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let result = new FixedArray<byte>(3);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = toReversed(fixArray);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_07500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toReversed',
        'toReversed(): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_07600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let result = new FixedArray<byte>(3);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = with(fixArray, 1, 9);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_07600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'with',
        'with(index: number, value: T): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_07700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let result = values(fixArray);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = values(fixArray);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_07700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'values',
        'values(): Iterator<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_07800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let fixArray2: FixedArray<byte> = [3, 2, 1];
      let result = entries(fixArray2);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = entries(fixArray);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_07800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'entries',
        'entries(): Iterator<[int, T]>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_07900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let result = new FixedArray<byte>(3);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = map(fixArray, (value: byte) => value * 2 as byte);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_07900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'map',
        'map(callbackfn: (value: T, index: number) => T): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_08000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let result: byte = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result =
          reduceRight(fixArray, (previousValue: byte, currentValue: byte) => previousValue + currentValue as byte);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_08000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reduceRight',
        'reduceRight(callbackfn: (previousValue: T, currentValue: T, index: number) => T): T', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_08100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
      let result = new FixedArray<byte>(3);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = filter(fixArray, (v: byte) => v > 2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_08100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'filter',
        'filter(predicate: (value: T, index: number) => boolean): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_08200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let fixArray2: FixedArray<byte> = [4, 5, 6];
      let result = new FixedArray<byte>(6);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = concat(fixArray, fixArray2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_08200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
        'concat(...items: (T | ConcatArray<T>)[]): FixedArray<T>', arkTsAveragedTime);
    })

    // it('PerformanceTest_BuiltinArrayTest_08300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let fixArray: FixedArray<byte> = [1, 2, 3];
    //     let result = new FixedArray<byte>(5);
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         result = concat(fixArray, [4, 5] as FixedArray<ConcatArray<byte>>);
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    //     expect(result[3]).assertEqual(4);
    // })

    it('PerformanceTest_BuiltinArrayTest_08400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [3, 1, 2];
      let result = new FixedArray<byte>(3);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = sort(fixArray, (a: byte, b: byte): int => {
          return a - b;
        });
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_08400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'sort',
        'sort(compareFn?: (a: T, b: T) => number): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_08500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [3, 1, 2];
      let result = new FixedArray<byte>(3);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = sort(fixArray);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_08500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'sort',
        'sort(): FixedArray<T>', arkTsAveragedTime);
    })


    it('PerformanceTest_BuiltinArrayTest_08600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<byte> = [1, 2, 3];
      let result = keys(fixArray);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = keys(fixArray);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_08600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'keys',
        'keys(): Iterator<number>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_08700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [10, 20, 30];
      let result: Short = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = at(fixArray, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_08700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
        'at(index: number): T', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_08800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [1, 2, 3, 4, 5];
      let result = new FixedArray<short>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(fixArray, 0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_08800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(target: number): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_08900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [1, 2, 3, 4, 5];
      let result = new FixedArray<short>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(fixArray, 0, 3);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_08900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(target: number, start: number): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_09000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [1, 2, 3, 4, 5];
      let result = new FixedArray<short>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = copyWithin(fixArray, 0, 3, 4);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_09000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(target: number, start: number, end?: number): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_09100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [1, 2, 3, 4, 5];
      let result = new FixedArray<short>(5);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fill(fixArray, 9);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_09100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
        'fill(value: T, start?: number, end?: number): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_09200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
      let result: Short | undefined = undefined;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = find(fixArray, (value: short) => value > 30);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_09200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'find',
        'find(predicate: (value: T, index: number) => boolean): T | undefined', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_09300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
      let result: int = -1;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = findIndex(fixArray, (value: short) => value > 30);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_09300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'findIndex',
        'findIndex(predicate: (value: T, index: number) => boolean): number', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_09400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
      let result: Short | undefined = undefined;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = findLast(fixArray, (elem: short) => elem < 50);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_09400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'findLast',
        'findLast(predicate: (value: T, index: number) => boolean): T | undefined', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_09500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [2, 4, 6, 8, 10];
      let result: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = every(fixArray, (value: short) => value % 2 === 0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_09500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'every',
        'every(predicate: (value: T, index: number) => boolean): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_09600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [1, 2, 3, 4, 5];
      let result: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = some(fixArray, (value: short) => value > 4);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_09600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'some',
        'some(predicate: (value: T, index: number) => boolean): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_09700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
      let result: int = -1;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = findLastIndex(fixArray, (element: short) => element < 50);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_09700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'findLastIndex',
        'findLastIndex(predicate: (value: T, index: number) => boolean): number', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_09800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [10, 20, 30];
      let result: short = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = reduce(fixArray, (previousValue: short, currentValue: short) => previousValue + currentValue as short);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_09800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reduce',
        'reduce(callbackfn: (previousValue: T, currentValue: T, index: number) => T): T', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_09900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [10, 20, 30];
      let result: int = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = reduce(fixArray, (previousValue: int, currentValue: short) => previousValue + currentValue, 100);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_09900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reduce',
        'reduce<U>(callbackfn: (previousValue: U, currentValue: T, index: number) => U, initialValue: U): U', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_10000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [10, 20, 30];
      let result: string = "";
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result =
          reduceRight(fixArray, (previousValue: string, currentValue: short) => previousValue + currentValue, "");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_10000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reduceRight',
        'reduceRight<U>(callbackfn: (previousValue: U, currentValue: T, index: number) => U, initialValue: U): U', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_10100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [10, 20, 30];
      let result: short = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        forEach(fixArray, (value: short, index: int) => {
            result = value;
        });
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_10100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'forEach',
        'forEach(callbackfn: (value: T, index: number) => void): void', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_10200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
      let result = new FixedArray<short>(3);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = slice(fixArray, 2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_10200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice',
        'slice(start: number): FixedArray<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest_10300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
      let result = new FixedArray<short>(2);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = slice(fixArray, 1, 3);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = result;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_10300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice',
        'slice(start: number, end?: number): FixedArray<T>', arkTsAveragedTime);
    })
  })
}

