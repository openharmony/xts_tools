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

export default function BuiltinArrayPerfTest08(): void {
  describe('BuiltinArrayPerfTest08', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_BuiltinArrayTest_34300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [100, 200, 300];
        let result: IterableIterator<number> = fixArray.keys();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.keys();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_34300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'keys',
          'keys(): IterableIterator<number>', arkTsAveragedTime);
        expect(result !== undefined).assertTrue();
        expect(typeof result.next === 'function').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_34400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1000, 2000, 3000];
        let result: IterableIterator<number> = fixArray.keys();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.keys();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_34400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'keys',
          'keys(): IterableIterator<number>', arkTsAveragedTime);
        expect(result !== undefined).assertTrue();
        expect(typeof result.next === 'function').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_34500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1.1, 2.2, 3.3];
        let result: IterableIterator<number> = fixArray.keys();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.keys();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_34500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'keys',
          'keys(): IterableIterator<number>', arkTsAveragedTime);
        expect(result !== undefined).assertTrue();
        expect(typeof result.next === 'function').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_34600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1.11, 2.22, 3.33];
        let result: IterableIterator<number> = fixArray.keys();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.keys();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_34600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'keys',
          'keys(): IterableIterator<number>', arkTsAveragedTime);
        expect(result !== undefined).assertTrue();
        expect(typeof result.next === 'function').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_34700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: string[] = ['a', 'b', 'c'];
        let result: IterableIterator<number> = fixArray.keys();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.keys();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_34700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'keys',
          'keys(): IterableIterator<number>', arkTsAveragedTime);
        expect(result !== undefined).assertTrue();
        expect(typeof result.next === 'function').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_34800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: boolean[] = [true, false, true];
        let result: boolean[] = new Array<boolean>(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.map((value: boolean) => !value);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_34800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'map',
          'map(callbackfn: (value: boolean, index: number, array: boolean[]) => boolean): boolean[]', arkTsAveragedTime);
        expect(result.length === 3).assertTrue();
        expect(result[0] === false).assertTrue();
        expect(result[1] === true).assertTrue();
        expect(result[2] === false).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_34900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1, 2, 3];
        let result: number[] = new Array<number>(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.map((value: number) => value * 2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_34900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'map',
          'map(callbackfn: (value: number, index: number, array: number[]) => number): number[]', arkTsAveragedTime);
        expect(result.length === 3).assertTrue();
        expect(result[0] === 2).assertTrue();
        expect(result[1] === 4).assertTrue();
        expect(result[2] === 6).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_35000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [10, 20, 30];
        let result: number[] = new Array<number>(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.map((value: number) => value * 2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'map',
          'map(callbackfn: (value: number, index: number, array: number[]) => number): number[]', arkTsAveragedTime);
        expect(result.length === 3).assertTrue();
        expect(result[0] === 20).assertTrue();
        expect(result[1] === 40).assertTrue();
        expect(result[2] === 60).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_35100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [100, 200, 300];
        let result: number[] = new Array<number>(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.map((value: number) => value * 2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'map',
          'map(callbackfn: (value: number, index: number, array: number[]) => number): number[]', arkTsAveragedTime);
        expect(result.length === 3).assertTrue();
        expect(result[0] === 200).assertTrue();
        expect(result[1] === 400).assertTrue();
        expect(result[2] === 600).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_35200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1000, 2000, 3000];
        let result: number[] = new Array<number>(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.map((value: number) => value * 2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'map',
          'map(callbackfn: (value: number, index: number, array: number[]) => number): number[]', arkTsAveragedTime);
        expect(result.length === 3).assertTrue();
        expect(result[0] === 2000).assertTrue();
        expect(result[1] === 4000).assertTrue();
        expect(result[2] === 6000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_35300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1.1, 2.2, 3.3];
        let result: number[] = new Array<number>(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.map((value: number) => value * 2.0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'map',
          'map(callbackfn: (value: number, index: number, array: number[]) => number): number[]', arkTsAveragedTime);
        expect(result.length === 3).assertTrue();
        expect(Math.abs(result[0] - 2.2) < 0.0001).assertTrue();
        expect(Math.abs(result[1] - 4.4) < 0.0001).assertTrue();
        expect(Math.abs(result[2] - 6.6) < 0.0001).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_35400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1.11, 2.22, 3.33];
        let result: number[] = new Array<number>(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.map((value: number) => value * 2.0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'map',
          'map(callbackfn: (value: number, index: number, array: number[]) => number): number[]', arkTsAveragedTime);
        expect(result.length === 3).assertTrue();
        expect(Math.abs(result[0] - 2.22) < 0.0001).assertTrue();
        expect(Math.abs(result[1] - 4.44) < 0.0001).assertTrue();
        expect(Math.abs(result[2] - 6.66) < 0.0001).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_35500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: string[] = ['a', 'b', 'c'];
        let result: string[] = new Array<string>(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.map((value: string) => String.fromCharCode(value.charCodeAt(0) + 1));
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'map',
          'map(callbackfn: (value: string, index: number, array: string[]) => string): string[]', arkTsAveragedTime);
        expect(result.length === 3).assertTrue();
        expect(result[0] === 'b').assertTrue();
        expect(result[1] === 'c').assertTrue();
        expect(result[2] === 'd').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_35600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: boolean[] = [true, false];
        let result: IterableIterator<[number, boolean]> = fixArray.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, T]>', arkTsAveragedTime);
        expect(result !== undefined).assertTrue();
        expect(typeof result.next === 'function').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_35700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1, 2];
        let result: IterableIterator<[number, number]> = fixArray.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, T]>', arkTsAveragedTime);
        expect(result !== undefined).assertTrue();
        expect(typeof result.next === 'function').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_35800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [10, 20];
        let result: IterableIterator<[number, number]> = fixArray.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, T]>', arkTsAveragedTime);
        expect(result !== undefined).assertTrue();
        expect(typeof result.next === 'function').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_35900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [100, 200];
        let result: IterableIterator<[number, number]> = fixArray.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_35900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, T]>', arkTsAveragedTime);
        expect(result !== undefined).assertTrue();
        expect(typeof result.next === 'function').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_36000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1000, 2000];
        let result: IterableIterator<[number, number]> = fixArray.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_36000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, T]>', arkTsAveragedTime);
        expect(result !== undefined).assertTrue();
        expect(typeof result.next === 'function').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_36100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1.1, 2.2];
        let result: IterableIterator<[number, number]> = fixArray.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_36100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, T]>', arkTsAveragedTime);
        expect(result !== undefined).assertTrue();
        expect(typeof result.next === 'function').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_36200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1.11, 2.22];
        let result: IterableIterator<[number, number]> = fixArray.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_36200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, T]>', arkTsAveragedTime);
        expect(result !== undefined).assertTrue();
        expect(typeof result.next === 'function').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_36300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: string[] = ['a', 'b'];
        let result: IterableIterator<[number, string]> = fixArray.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_36300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'entries',
          'entries(): IterableIterator<[number, T]>', arkTsAveragedTime);
        expect(result !== undefined).assertTrue();
        expect(typeof result.next === 'function').assertTrue();
        done();
      })

  })
}