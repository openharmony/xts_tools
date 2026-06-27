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
} from "@ohos/hypium";
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function BuiltinArrayPerfTest11(): void {
  describe('BuiltinArrayPerfTest11', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {

    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_BuiltinArrayTest_41000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: boolean[] = [true, false, true, false, true];
      let result: boolean[] = new Array<boolean>(5);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().sort();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: boolean[] = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_41000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'sort',
        'sort(): FixedArray<boolean>', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_41100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: number[] = [3, 1, 4, 2, 5];
      let result: number[] = new Array<number>(5);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().sort();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number[] = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_41100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'sort',
        'sort(): FixedArray<byte>', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_41200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: number[] = [30, 10, 40, 20, 50];
      let result: number[] = new Array<number>(5);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().sort();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number[] = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_41200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'sort',
        'sort(): FixedArray<short>', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_41300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: number[] = [300, 100, 400, 200, 500];
      let result: number[] = new Array<number>(5);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().sort();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number[] = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_41300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'sort',
        'sort(): FixedArray<int>', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_41400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: number[] = [3000, 1000, 4000, 2000, 5000];
      let result: number[] = new Array<number>(5);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().sort();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number[] = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_41400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'sort',
        'sort(): FixedArray<long>', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_41500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: number[] = [3.3, 1.1, 4.4, 2.2, 5.5];
      let result: number[] = new Array<number>(5);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().sort();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number[] = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_41500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'sort',
        'sort(): FixedArray<float>', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_41600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: number[] = [3.33, 1.11, 4.44, 2.22, 5.55];
      let result: number[] = new Array<number>(5);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().sort();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number[] = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_41600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'sort',
        'sort(): FixedArray<double>', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_41700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['c', 'a', 'd', 'b', 'e'];
      let result: string[] = new Array<string>(5);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().sort();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string[] = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_41700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'sort',
        'sort(): FixedArray<char>', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

  })
}