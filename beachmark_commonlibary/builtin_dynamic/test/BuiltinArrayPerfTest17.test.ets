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

export default function BuiltinArrayPerfTest17(): void {
  describe('BuiltinArrayPerfTest17', () => {
    const BASE_COUNT = 1000;
    beforeEach(() => {

    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_BuiltinArrayTest_58300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<boolean> = [true, false, true, false, true];
        let result: Array<boolean> = new Array<boolean>(5);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.filter((value: boolean): boolean => value > true);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_58300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'filter',
          'filter(FixedArray<boolean>, boolean, int, FixedArray<boolean>): => boolean): FixedArray<boolean>', arkTsAveragedTime);
        expect(res1.length >= 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_58400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1, 2, 3, 4, 5];
        let result: Array<number> = new Array<number>(5);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.filter((value: number): boolean => value > 2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_58400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'filter',
          'filter(FixedArray<byte>, byte, int, FixedArray<byte>): => boolean): FixedArray<byte>', arkTsAveragedTime);
        expect(res1.length > 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_58500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1.1, 2.2, 3.3, 4.4, 5.5];
        let result: Array<number> = new Array<number>(5);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.filter((value: number): boolean => value > 3.3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_58500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'filter',
          'filter(FixedArray<float>, float, int, FixedArray<float>): => boolean): FixedArray<float>', arkTsAveragedTime);
        expect(res1.length > 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_58600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [100, 200, 300, 400, 500];
        let result: Array<number> = new Array<number>(5);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.filter((value: number): boolean => value > 200);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_58600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'filter',
          'filter(FixedArray<int>, int, int, FixedArray<int>): => boolean): FixedArray<int>', arkTsAveragedTime);
        expect(res1.length > 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_58700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1000, 2000, 3000, 4000, 5000];
        let result: Array<number> = new Array<number>(5);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.filter((value: number): boolean => value > 3000);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_58700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'filter',
          'filter(FixedArray<long>, long, int, FixedArray<long>): => boolean): FixedArray<long>', arkTsAveragedTime);
        expect(res1.length > 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_58800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [10, 20, 30, 40, 50];
        let result: Array<number> = new Array<number>(5);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.filter((value: number): boolean => value > 30);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_58800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'filter',
          'filter(FixedArray<short>, short, int, FixedArray<short>): => boolean): FixedArray<short>', arkTsAveragedTime);
        expect(res1.length > 0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_58900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<boolean> = [true, false, true, false, true];
        let result: boolean | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.find((value: boolean) => value == true);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_58900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'find',
          'find(FixedArray<boolean>, boolean, int, FixedArray<boolean>): => boolean): Boolean | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_59000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1, 2, 3, 4, 5];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.find((value: number) => value > 3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_59000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'find',
          'find(FixedArray<byte>, byte, int, FixedArray<byte>): => boolean): Byte | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_59100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = ['a'.charCodeAt(0), 'b'.charCodeAt(0), 'c'.charCodeAt(0), 'd'.charCodeAt(0), 'e'.charCodeAt(0)];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.find((value: number) => value > 'c'.charCodeAt(0));
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_59100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'find',
          'find(FixedArray<char>, char, int, FixedArray<char>): => boolean): Char | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_59200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.find((value: number) => value > 3.33);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_59200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'find',
          'find(FixedArray<double>, double, int, FixedArray<double>): => boolean): Double | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_59300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1.1, 2.2, 3.3, 4.4, 5.5];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.find((value: number) => value > 3.3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_59300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'find',
          'find(FixedArray<float>, float, int, FixedArray<float>): => boolean): Float | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_59400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [100, 200, 300, 400, 500];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.find((value: number) => value > 300);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_59400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'find',
          'find(FixedArray<int>, int, int, FixedArray<int>): => boolean): Int | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_59500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1000, 2000, 3000, 4000, 5000];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.find((value: number) => value > 3000);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_59500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'find',
          'find(FixedArray<long>, long, int, FixedArray<long>): => boolean): Long | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_59600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [10, 20, 30, 40, 50];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.find((value: number) => value > 30);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_59600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'find',
          'find(FixedArray<short>, short, int, FixedArray<short>): => boolean): Short | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_59700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<boolean> = [true, false, true, false, true];
        let result: boolean | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.find((value: boolean) => value == true);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_59700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'find',
          'find(ValueArray<boolean>, boolean, int, ValueArray<boolean>): => boolean): Boolean | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_59800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [1, 2, 3, 4, 5];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.find((value: number) => value > 3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_59800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'find',
          'find(ValueArray<byte>, byte, int, ValueArray<byte>): => boolean): Byte | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_59900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = ['a'.charCodeAt(0), 'b'.charCodeAt(0), 'c'.charCodeAt(0), 'd'.charCodeAt(0), 'e'.charCodeAt(0)];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.find((value: number) => value > 'c'.charCodeAt(0));
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_59900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'find',
          'find(ValueArray<char>, char, int, ValueArray<char>): => boolean): Char | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_60000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.find((value: number) => value > 3.33);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_60000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'find',
          'find(ValueArray<double>, double, int, ValueArray<double>): => boolean): Double | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_60100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [1.1, 2.2, 3.3, 4.4, 5.5];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.find((value: number) => value > 3.3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_60100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'find',
          'find(ValueArray<float>, float, int, ValueArray<float>): => boolean): Float | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_60200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [100, 200, 300, 400, 500];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.find((value: number) => value > 300);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_60200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'find',
          'find(ValueArray<int>, int, int, ValueArray<int>): => boolean): Int | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_60300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [1000, 2000, 3000, 4000, 5000];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.find((value: number) => value > 3000);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_60300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'find',
          'find(ValueArray<long>, long, int, ValueArray<long>): => boolean): Long | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_60400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [10, 20, 30, 40, 50];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.find((value: number) => value > 30);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_60400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'find',
          'find(ValueArray<short>, short, int, ValueArray<short>): => boolean): Short | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_47400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<boolean> = [true, false, true, false, true];
        let result: boolean | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.slice().reverse().find((v) => v == true);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_47400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'findLast',
          'findLast(FixedArray<boolean>, boolean, int, FixedArray<boolean>): => boolean): Boolean | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_47500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1, 2, 3, 4, 5];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.slice().reverse().find((v) => v > 3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_47500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'findLast',
          'findLast(FixedArray<byte>, byte, int, FixedArray<byte>): => boolean): Byte | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_47600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = ['a'.charCodeAt(0), 'b'.charCodeAt(0), 'c'.charCodeAt(0), 'd'.charCodeAt(0), 'e'.charCodeAt(0)];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.slice().reverse().find((v) => v > 'c'.charCodeAt(0));
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_47600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'findLast',
          'findLast(FixedArray<char>, char, int, FixedArray<char>): => boolean): Char | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_47700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.slice().reverse().find((v) => v > 3.33);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_47700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'findLast',
          'findLast(FixedArray<double>, double, int, FixedArray<double>): => boolean): Double | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_47800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1.1, 2.2, 3.3, 4.4, 5.5];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.slice().reverse().find((v) => v > 3.3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_47800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'findLast',
          'findLast(FixedArray<float>, float, int, FixedArray<float>): => boolean): Float | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_47900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [100, 200, 300, 400, 500];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.slice().reverse().find((v) => v > 300);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_47900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'findLast',
          'findLast(FixedArray<int>, int, int, FixedArray<int>): => boolean): Int | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_48000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1000, 2000, 3000, 4000, 5000];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.slice().reverse().find((v) => v > 3000);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_48000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'findLast',
          'findLast(FixedArray<long>, long, int, FixedArray<long>): => boolean): Long | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_48100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [10, 20, 30, 40, 50];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.slice().reverse().find((v) => v > 30);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_48100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'findLast',
          'findLast(FixedArray<short>, short, int, FixedArray<short>): => boolean): Short | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_48200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<boolean> = [true, false, true, false, true];
        let result: boolean | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.slice().reverse().find((v) => v == true);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_48200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'findLast',
          'findLast(ValueArray<boolean>, boolean, int, ValueArray<boolean>): => boolean): Boolean | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_48300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [1, 2, 3, 4, 5];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.slice().reverse().find((v) => v > 3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_48300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'findLast',
          'findLast(ValueArray<byte>, byte, int, ValueArray<byte>): => boolean): Byte | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_48400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = ['a'.charCodeAt(0), 'b'.charCodeAt(0), 'c'.charCodeAt(0), 'd'.charCodeAt(0), 'e'.charCodeAt(0)];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.slice().reverse().find((v) => v > 'c'.charCodeAt(0));
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_48400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'findLast',
          'findLast(ValueArray<char>, char, int, ValueArray<char>): => boolean): Char | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_48500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.slice().reverse().find((v) => v > 3.33);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_48500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'findLast',
          'findLast(ValueArray<double>, double, int, ValueArray<double>): => boolean): Double | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_48600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [1.1, 2.2, 3.3, 4.4, 5.5];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.slice().reverse().find((v) => v > 3.3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_48600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'findLast',
          'findLast(ValueArray<float>, float, int, ValueArray<float>): => boolean): Float | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_48700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [100, 200, 300, 400, 500];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.slice().reverse().find((v) => v > 300);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_48700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'findLast',
          'findLast(ValueArray<int>, int, int, ValueArray<int>): => boolean): Int | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_48800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [1000, 2000, 3000, 4000, 5000];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.slice().reverse().find((v) => v > 3000);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_48800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'findLast',
          'findLast(ValueArray<long>, long, int, ValueArray<long>): => boolean): Long | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_48900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: Array<number> = [10, 20, 30, 40, 50];
        let result: number | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.slice().reverse().find((v) => v > 30);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_48900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'findLast',
          'findLast(ValueArray<short>, short, int, ValueArray<short>): => boolean): Short | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_49000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [100, 200, 300, 400, 500];
        let result = fixArray.keys();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.keys();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_49000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'keys',
          'keys(FixedArray<int>): IterableIterator<int>', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_49100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<boolean> = [true, false, true, false, true];
        let result = fixArray.values();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.values();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_49100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'values',
          'values(FixedArray<boolean>): IterableIterator<boolean>', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_49200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1, 2, 3, 4, 5];
        let result = fixArray.values();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.values();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_49200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'values',
          'values(FixedArray<byte>): IterableIterator<byte>', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_49300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = ['a'.charCodeAt(0), 'b'.charCodeAt(0), 'c'.charCodeAt(0), 'd'.charCodeAt(0), 'e'.charCodeAt(0)];
        let result = fixArray.values();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.values();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_49300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'values',
          'values(FixedArray<char>): IterableIterator<char>', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_49400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result = fixArray.values();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.values();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_49400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'values',
          'values(FixedArray<double>): IterableIterator<double>', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_49500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1.1, 2.2, 3.3, 4.4, 5.5];
        let result = fixArray.values();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.values();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_49500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'values',
          'values(FixedArray<float>): IterableIterator<float>', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_49600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [100, 200, 300, 400, 500];
        let result = fixArray.values();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.values();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_49600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'values',
          'values(FixedArray<int>): IterableIterator<int>', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_49700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [1000, 2000, 3000, 4000, 5000];
        let result = fixArray.values();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.values();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_49700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'values',
          'values(FixedArray<long>): IterableIterator<long>', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_49800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: Array<number> = [10, 20, 30, 40, 50];
        let result = fixArray.values();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.values();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_49800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'values',
          'values(FixedArray<short>): IterableIterator<short>', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

  })
}