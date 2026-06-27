/*
 * Copyright (c) 2026 SwanLink (Jiangsu) Technology Development Co., LTD.
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
  TestType,
  Size,
  Level,
  beforeEach,
  afterAll,
  expect
} from '@ohos/hypium';
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function BuiltinArrayPerfTest15(): void {
  describe('BuiltinArrayPerfTest15', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_BuiltinArrayTest_40000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1, 2, 3, 4, 5];
        let res: Array<number> = [];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = fixArray.slice(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: Array<number> = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_40000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'slice',
          'slice(start?: number, end?: number): number[]', arkTsAveragedTime);
        expect(res1.length === fixArray.length - 1).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_40100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1.1, 2.2, 3.3, 4.4, 5.5];
        let res: Array<number> = [];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = fixArray.slice(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: Array<number> = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_40100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'slice',
          'slice(start?: number, end?: number): number[]', arkTsAveragedTime);
        expect(res1.length === fixArray.length - 1).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_40200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [100, 200, 300, 400, 500];
        let res: Array<number> = [];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = fixArray.slice(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: Array<number> = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_40200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'slice',
          'slice(start?: number, end?: number): number[]', arkTsAveragedTime);
        expect(res1.length === fixArray.length - 1).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_40300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1000, 2000, 3000, 4000, 5000];
        let res: Array<number> = [];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = fixArray.slice(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: Array<number> = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_40300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'slice',
          'slice(start?: number, end?: number): number[]', arkTsAveragedTime);
        expect(res1.length === fixArray.length - 1).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_40400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [10, 20, 30, 40, 50];
        let res: Array<number> = [];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = fixArray.slice(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: Array<number> = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_40400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'slice',
          'slice(start?: number, end?: number): number[]', arkTsAveragedTime);
        expect(res1.length === fixArray.length - 1).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_40500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<boolean> = [true, false, true, false, true];
        let res: Array<boolean> = [];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = va.slice(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: Array<boolean> = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_40500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'slice',
          'slice(start?: number, end?: number): boolean[]', arkTsAveragedTime);
        expect(res1.length === va.length - 1).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_40600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [1, 2, 3, 4, 5];
        let res: Array<number> = [];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = va.slice(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: Array<number> = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_40600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'slice',
          'slice(start?: number, end?: number): number[]', arkTsAveragedTime);
        expect(res1.length === va.length - 1).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_40700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let res: Array<number> = [];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = va.slice(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: Array<number> = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_40700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'slice',
          'slice(start?: number, end?: number): number[]', arkTsAveragedTime);
        expect(res1.length === va.length - 1).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_40800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [1.1, 2.2, 3.3, 4.4, 5.5];
        let res: Array<number> = [];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = va.slice(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: Array<number> = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_40800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'slice',
          'slice(start?: number, end?: number): number[]', arkTsAveragedTime);
        expect(res1.length === va.length - 1).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_40900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [100, 200, 300, 400, 500];
        let res: Array<number> = [];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = va.slice(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: Array<number> = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_40900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'slice',
          'slice(start?: number, end?: number): number[]', arkTsAveragedTime);
        expect(res1.length === va.length - 1).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_41000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [1000, 2000, 3000, 4000, 5000];
        let res: Array<number> = [];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = va.slice(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: Array<number> = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_41000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'slice',
          'slice(start?: number, end?: number): number[]', arkTsAveragedTime);
        expect(res1.length === va.length - 1).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_41100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [10, 20, 30, 40, 50];
        let res: Array<number> = [];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = va.slice(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: Array<number> = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_41100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'slice',
          'slice(start?: number, end?: number): number[]', arkTsAveragedTime);
        expect(res1.length === va.length - 1).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_43700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<boolean> = [true, false, true, false, true];
        let res = fixArray.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = fixArray.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_43700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, boolean]>', arkTsAveragedTime);
        expect(res1.next().value[0] === 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_43800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1, 2, 3, 4, 5];
        let res = fixArray.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = fixArray.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_43800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, number]>', arkTsAveragedTime);
        expect(res1.next().value[0] === 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_43900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<string> = ['a', 'b', 'c', 'd', 'e'];
        let res = fixArray.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = fixArray.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_43900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, string]>', arkTsAveragedTime);
        expect(res1.next().value[0] === 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_44000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let res = fixArray.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = fixArray.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_44000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, number]>', arkTsAveragedTime);
        expect(res1.next().value[0] === 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_44100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1.1, 2.2, 3.3, 4.4, 5.5];
        let res = fixArray.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = fixArray.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_44100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, number]>', arkTsAveragedTime);
        expect(res1.next().value[0] === 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_44200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [100, 200, 300, 400, 500];
        let res = fixArray.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = fixArray.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_44200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, number]>', arkTsAveragedTime);
        expect(res1.next().value[0] === 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_44300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1000, 2000, 3000, 4000, 5000];
        let res = fixArray.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = fixArray.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_44300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, number]>', arkTsAveragedTime);
        expect(res1.next().value[0] === 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_44400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [10, 20, 30, 40, 50];
        let res = fixArray.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = fixArray.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_44400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, number]>', arkTsAveragedTime);
        expect(res1.next().value[0] === 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_44500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<boolean> = [true, false, true, false, true];
        let res = va.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = va.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_44500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, boolean]>', arkTsAveragedTime);
        expect(res1.next().value[0] === 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_57700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [1, 2, 3, 4, 5];
        let res = va.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = va.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_57700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, number]>', arkTsAveragedTime);
        expect(res1.next().value[0] === 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_57800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let res = va.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = va.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_57800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, number]>', arkTsAveragedTime);
        expect(res1.next().value[0] === 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_57900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [1.1, 2.2, 3.3, 4.4, 5.5];
        let res = va.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = va.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_57900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, number]>', arkTsAveragedTime);
        expect(res1.next().value[0] === 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_58000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [100, 200, 300, 400, 500];
        let res = va.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = va.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_58000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, number]>', arkTsAveragedTime);
        expect(res1.next().value[0] === 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_58100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [1000, 2000, 3000, 4000, 5000];
        let res = va.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = va.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_58100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, number]>', arkTsAveragedTime);
        expect(res1.next().value[0] === 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_58200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [10, 20, 30, 40, 50];
        let res = va.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = va.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_58200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, number]>', arkTsAveragedTime);
        expect(res1.next().value[0] === 0).assertTrue();
        done();
      })

  })
}