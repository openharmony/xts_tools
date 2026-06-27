/*
 * Copyright (c) 2021-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
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
} from "@ohos/hypium";
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function BuiltinArraySortPerfTest(): void {
  describe('BuiltinArraySortPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_BuiltinArraySortPerfTest_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3, 1, 2];
        }
        let cmp = (lhs: number, rhs: number): number => {
          return lhs - rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort(cmp);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0].length === 3).assertTrue();
        expect(pools[0][0] === 1).assertTrue();
        expect(pools[0][1] === 2).assertTrue();
        expect(pools[0][2] === 3).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [30, 10, 20];
        }
        let cmp = (lhs: number, rhs: number): number => {
          return lhs - rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort(cmp);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 10).assertTrue();
        expect(pools[0][1] === 20).assertTrue();
        expect(pools[0][2] === 30).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [300, 100, 200];
        }
        let cmp = (lhs: number, rhs: number): number => {
          return lhs - rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort(cmp);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 100).assertTrue();
        expect(pools[0][1] === 200).assertTrue();
        expect(pools[0][2] === 300).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3000, 1000, 2000];
        }
        let cmp = (lhs: number, rhs: number): number => {
          return lhs > rhs ? 1 : -1;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort(cmp);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1000).assertTrue();
        expect(pools[0][1] === 2000).assertTrue();
        expect(pools[0][2] === 3000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3.3, 1.1, 2.2];
        }
        let cmp = (lhs: number, rhs: number): number => {
          return lhs > rhs ? 1 : -1;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort(cmp);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1.1).assertTrue();
        expect(pools[0][1] === 2.2).assertTrue();
        expect(pools[0][2] === 3.3).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3.33, 1.11, 2.22];
        }
        let cmp = (lhs: number, rhs: number): number => {
          return lhs > rhs ? 1 : -1;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort(cmp);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1.11).assertTrue();
        expect(pools[0][1] === 2.22).assertTrue();
        expect(pools[0][2] === 3.33).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: boolean[][] = new Array<boolean[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [true, false, true];
        }
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(): boolean[]',
          arkTsAveragedTime);
        expect(pools[0].length === 3).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: boolean[] = [true, false, true];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          let temp = fixArray[0];
          fixArray[0] = fixArray[1];
          fixArray[1] = temp;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = fixArray;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_0800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'manualSwap',
          'manual swap of two elements', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: boolean[][] = new Array<boolean[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [true, false, true];
        }
        let cmp = (lhs: boolean, rhs: boolean): number => {
          return lhs === rhs ? 0 : (lhs ? 1 : -1);
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort(cmp);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_0900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: boolean, b: boolean) => number): boolean[]',
          arkTsAveragedTime);
        expect(pools[0].length === 3).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: boolean[][] = new Array<boolean[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [true, false, true];
        }
        let cmp = (lhs: boolean, rhs: boolean): number => {
          return lhs === rhs ? 0 : (lhs ? 1 : -1);
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort(cmp);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_1000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: boolean, b: boolean) => number): boolean[]',
          arkTsAveragedTime);
        expect(pools[0].length === 3).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: boolean[][] = new Array<boolean[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [true, false, true];
        }
        let cmp = (lhs: boolean, rhs: boolean): number => {
          return lhs === rhs ? 0 : (lhs ? 1 : -1);
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort(cmp);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_1100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: boolean, b: boolean) => number): boolean[]',
          arkTsAveragedTime);
        expect(pools[0].length === 3).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [3, 1, 2];
        let result: number[] = [];
        let cmp = (lhs: number, rhs: number): number => {
          return lhs - rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = [...fixArray].sort(cmp);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_1200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(result[0] === 1).assertTrue();
        expect(result[1] === 2).assertTrue();
        expect(result[2] === 3).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3, 1, 2];
        }
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_1300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1).assertTrue();
        expect(pools[0][1] === 2).assertTrue();
        expect(pools[0][2] === 3).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [3, 1, 2];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          let temp = fixArray[0];
          fixArray[0] = fixArray[1];
          fixArray[1] = temp;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = fixArray;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_1400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'manualSwap',
          'manual swap of two elements', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3, 1, 2];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_1500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1).assertTrue();
        expect(pools[0][1] === 2).assertTrue();
        expect(pools[0][2] === 3).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3, 1, 2];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_1600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1).assertTrue();
        expect(pools[0][1] === 2).assertTrue();
        expect(pools[0][2] === 3).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3, 1, 2];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_1700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1).assertTrue();
        expect(pools[0][1] === 2).assertTrue();
        expect(pools[0][2] === 3).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [30, 10, 20];
        let result: number[] = [];
        let cmp = (lhs: number, rhs: number): number => {
          return lhs - rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = [...fixArray].sort(cmp);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_1800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(result[0] === 10).assertTrue();
        expect(result[1] === 20).assertTrue();
        expect(result[2] === 30).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [30, 10, 20];
        }
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_1900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 10).assertTrue();
        expect(pools[0][1] === 20).assertTrue();
        expect(pools[0][2] === 30).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [30, 10, 20];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          let temp = fixArray[0];
          fixArray[0] = fixArray[1];
          fixArray[1] = temp;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = fixArray;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_2000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'manualSwap',
          'manual swap of two elements', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [30, 10, 20];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_2100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 10).assertTrue();
        expect(pools[0][1] === 20).assertTrue();
        expect(pools[0][2] === 30).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [30, 10, 20];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_2200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 10).assertTrue();
        expect(pools[0][1] === 20).assertTrue();
        expect(pools[0][2] === 30).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_2300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [30, 10, 20];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_2300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 10).assertTrue();
        expect(pools[0][1] === 20).assertTrue();
        expect(pools[0][2] === 30).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [300, 100, 200];
        let result: number[] = [];
        let cmp = (lhs: number, rhs: number): number => {
          return lhs - rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = [...fixArray].sort(cmp);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_2400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(result[0] === 100).assertTrue();
        expect(result[1] === 200).assertTrue();
        expect(result[2] === 300).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [300, 100, 200];
        }
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_2500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 100).assertTrue();
        expect(pools[0][1] === 200).assertTrue();
        expect(pools[0][2] === 300).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [300, 100, 200];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          let temp = fixArray[0];
          fixArray[0] = fixArray[1];
          fixArray[1] = temp;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = fixArray;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_2600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'manualSwap',
          'manual swap of two elements', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_2700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [300, 100, 200];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_2700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 100).assertTrue();
        expect(pools[0][1] === 200).assertTrue();
        expect(pools[0][2] === 300).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_2800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [300, 100, 200];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_2800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 100).assertTrue();
        expect(pools[0][1] === 200).assertTrue();
        expect(pools[0][2] === 300).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_2900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [300, 100, 200];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_2900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 100).assertTrue();
        expect(pools[0][1] === 200).assertTrue();
        expect(pools[0][2] === 300).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_3000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [3000, 1000, 2000];
        let result: number[] = [];
        let cmp = (lhs: number, rhs: number): number => {
          return lhs > rhs ? 1 : -1;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = [...fixArray].sort(cmp);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_3000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(result[0] === 1000).assertTrue();
        expect(result[1] === 2000).assertTrue();
        expect(result[2] === 3000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_3100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3000, 1000, 2000];
        }
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_3100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1000).assertTrue();
        expect(pools[0][1] === 2000).assertTrue();
        expect(pools[0][2] === 3000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_3200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [3000, 1000, 2000];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          let temp = fixArray[0];
          fixArray[0] = fixArray[1];
          fixArray[1] = temp;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = fixArray;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_3200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'manualSwap',
          'manual swap of two elements', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_3300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3000, 1000, 2000];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_3300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1000).assertTrue();
        expect(pools[0][1] === 2000).assertTrue();
        expect(pools[0][2] === 3000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_3400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3000, 1000, 2000];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_3400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1000).assertTrue();
        expect(pools[0][1] === 2000).assertTrue();
        expect(pools[0][2] === 3000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_3500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3000, 1000, 2000];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_3500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1000).assertTrue();
        expect(pools[0][1] === 2000).assertTrue();
        expect(pools[0][2] === 3000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_3600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [3.3, 1.1, 2.2];
        let result: number[] = [];
        let cmp = (lhs: number, rhs: number): number => {
          return lhs > rhs ? 1 : -1;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = [...fixArray].sort(cmp);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_3600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(result[0] === 1.1).assertTrue();
        expect(result[1] === 2.2).assertTrue();
        expect(result[2] === 3.3).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_3700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3.3, 1.1, 2.2];
        }
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_3700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1.1).assertTrue();
        expect(pools[0][1] === 2.2).assertTrue();
        expect(pools[0][2] === 3.3).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_3800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [3.3, 1.1, 2.2];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          let temp = fixArray[0];
          fixArray[0] = fixArray[1];
          fixArray[1] = temp;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = fixArray;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_3800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'manualSwap',
          'manual swap of two elements', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_3900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3.3, 1.1, 2.2];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_3900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1.1).assertTrue();
        expect(pools[0][1] === 2.2).assertTrue();
        expect(pools[0][2] === 3.3).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_4000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3.3, 1.1, 2.2];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_4000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1.1).assertTrue();
        expect(pools[0][1] === 2.2).assertTrue();
        expect(pools[0][2] === 3.3).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_4100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3.3, 1.1, 2.2];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_4100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1.1).assertTrue();
        expect(pools[0][1] === 2.2).assertTrue();
        expect(pools[0][2] === 3.3).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_4200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [3.33, 1.11, 2.22];
        let result: number[] = [];
        let cmp = (lhs: number, rhs: number): number => {
          return lhs > rhs ? 1 : -1;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = [...fixArray].sort(cmp);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_4200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(result[0] === 1.11).assertTrue();
        expect(result[1] === 2.22).assertTrue();
        expect(result[2] === 3.33).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_4300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3.33, 1.11, 2.22];
        }
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_4300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1.11).assertTrue();
        expect(pools[0][1] === 2.22).assertTrue();
        expect(pools[0][2] === 3.33).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_4400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [3.33, 1.11, 2.22];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          let temp = fixArray[0];
          fixArray[0] = fixArray[1];
          fixArray[1] = temp;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = fixArray;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_4400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'manualSwap',
          'manual swap of two elements', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_4500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3.33, 1.11, 2.22];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_4500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1.11).assertTrue();
        expect(pools[0][1] === 2.22).assertTrue();
        expect(pools[0][2] === 3.33).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_4600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3.33, 1.11, 2.22];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_4600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1.11).assertTrue();
        expect(pools[0][1] === 2.22).assertTrue();
        expect(pools[0][2] === 3.33).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_4700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: number[][] = new Array<number[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = [3.33, 1.11, 2.22];
        }
        let cmp = (lhs: number, rhs: number): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_4700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: number, b: number) => number): number[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 1.11).assertTrue();
        expect(pools[0][1] === 2.22).assertTrue();
        expect(pools[0][2] === 3.33).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_4800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: string[][] = new Array<string[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = ['c', 'a', 'b'];
        }
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_4800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(): string[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 'a').assertTrue();
        expect(pools[0][1] === 'b').assertTrue();
        expect(pools[0][2] === 'c').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_4900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: string[] = ['c', 'a', 'b'];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          let temp = fixArray[0];
          fixArray[0] = fixArray[1];
          fixArray[1] = temp;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = fixArray;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_4900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'manualSwap',
          'manual swap of two elements', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_5000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: string[][] = new Array<string[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = ['c', 'a', 'b'];
        }
        let cmp = (lhs: string, rhs: string): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_5000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: string, b: string) => number): string[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 'a').assertTrue();
        expect(pools[0][1] === 'b').assertTrue();
        expect(pools[0][2] === 'c').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_5100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: string[][] = new Array<string[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = ['c', 'a', 'b'];
        }
        let cmp = (lhs: string, rhs: string): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_5100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: string, b: string) => number): string[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 'a').assertTrue();
        expect(pools[0][1] === 'b').assertTrue();
        expect(pools[0][2] === 'c').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_5200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: string[][] = new Array<string[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = ['c', 'a', 'b'];
        }
        let cmp = (lhs: string, rhs: string): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_5200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: string, b: string) => number): string[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 'a').assertTrue();
        expect(pools[0][1] === 'b').assertTrue();
        expect(pools[0][2] === 'c').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_5300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: string[] = ['ccc', 'aaa', 'bbb'];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          let temp = fixArray[0];
          fixArray[0] = fixArray[1];
          fixArray[1] = temp;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = fixArray;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_5300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'manualSwap',
          'manual swap of two elements', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_5400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: string[][] = new Array<string[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = ['ccc', 'aaa', 'bbb'];
        }
        let cmp = (lhs: string, rhs: string): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_5400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: string, b: string) => number): string[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 'aaa').assertTrue();
        expect(pools[0][1] === 'bbb').assertTrue();
        expect(pools[0][2] === 'ccc').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_5500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: string[][] = new Array<string[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = ['ccc', 'aaa', 'bbb'];
        }
        let cmp = (lhs: string, rhs: string): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_5500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: string, b: string) => number): string[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 'aaa').assertTrue();
        expect(pools[0][1] === 'bbb').assertTrue();
        expect(pools[0][2] === 'ccc').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArraySortPerfTest_5600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let pools: string[][] = new Array<string[]>();
        for (let j = 0; j < BASE_COUNT; j++) {
          pools[j] = ['ccc', 'aaa', 'bbb'];
        }
        let cmp = (lhs: string, rhs: string): boolean => {
          return lhs < rhs;
        };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pools[i].sort((a, b) => cmp(a, b) ? -1 : 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = pools[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArraySortPerfTest_5600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'sort',
          'sort(compareFn?: (a: string, b: string) => number): string[]',
          arkTsAveragedTime);
        expect(pools[0][0] === 'aaa').assertTrue();
        expect(pools[0][1] === 'bbb').assertTrue();
        expect(pools[0][2] === 'ccc').assertTrue();
        done();
      })

  })
}