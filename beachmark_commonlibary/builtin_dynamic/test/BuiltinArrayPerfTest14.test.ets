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

mport {
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
import { systemDateTime } from '@kit.BasicServicesKit';
import performance from './Performance.util';
declare class ArkTools {
  static forceFullGC(): void;
}

export default function BuiltinArrayPerfTest14(): void {
  describe('BuiltinArrayPerfTest14', () => {
    const BASE_COUNT = 1000;
    beforeEach(() => {
      ArkTools.forceFullGC();
    })
    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_BuiltinArrayTest_52700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1, 2, 3, 4, 5];
        let result: number = 2;
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray[1];
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_52700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
          'at(number[], number): number', arkTsAveragedTime);
        expect(res1 === 2).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_52800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result: number = 3.33;
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray[1];
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_52800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
          'at(number[], number): number', arkTsAveragedTime);
        expect(res1 === 2.22).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_52900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1.1, 2.2, 3.3, 4.4, 5.5];
        let result: number = 3.3;
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray[1];
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_52900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
          'at(number[], number): number', arkTsAveragedTime);
        expect(res1 === 2.2).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_53000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [100, 200, 300, 400, 500];
        let result: number = 200;
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray[1];
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_53000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
          'at(number[], number): number', arkTsAveragedTime);
        expect(res1 === 200).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_53100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1000, 2000, 3000, 4000, 5000];
        let result: number = 3000;
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray[1];
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_53100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
          'at(number[], number): number', arkTsAveragedTime);
        expect(res1 === 2000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_53200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [10, 20, 30, 40, 50];
        let result: number = 30;
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray[1];
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_53200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
          'at(number[], number): number', arkTsAveragedTime);
        expect(res1 === 20).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_53300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: boolean[] = [true, false, true, false, true];
        let result: boolean = true;
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va[1];
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_53300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'at',
          'at(boolean[], number): Boolean', arkTsAveragedTime);
        expect(res1 === false).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_53400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: number[] = [1, 2, 3, 4, 5];
        let result: number = 2;
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va[1];
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_53400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'at',
          'at(number[], number): number', arkTsAveragedTime);
        expect(res1 === 2).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_53500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: number[] = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result: number = 3.33;
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va[1];
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_53500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'at',
          'at(number[], number): number', arkTsAveragedTime);
        expect(res1 === 2.22).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_53600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: number[] = [1.1, 2.2, 3.3, 4.4, 5.5];
        let result: number = 3.3;
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va[1];
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_53600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'at',
          'at(number[], number): number', arkTsAveragedTime);
        expect(res1 === 2.2).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_53700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: number[] = [100, 200, 300, 400, 500];
        let result: number = 200;
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va[1];
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_53700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'at',
          'at(number[], number): number', arkTsAveragedTime);
        expect(res1 === 200).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_53800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: number[] = [1000, 2000, 3000, 4000, 5000];
        let result: number = 3000;
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va[1];
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_53800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'at',
          'at(number[], number): number', arkTsAveragedTime);
        expect(res1 === 2000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_53900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: number[] = [10, 20, 30, 40, 50];
        let result: number = 30;
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va[1];
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_53900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'at',
          'at(number[], number): number', arkTsAveragedTime);
        expect(res1 === 20).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_54000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: boolean[] = [true, false, true, false, true];
        let fixArray2: boolean[] = [false, true, false, true, false];
        let result: boolean[] = new Array<boolean>();
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.concat(fixArray2);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_54000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
          'concat(boolean[], boolean[], FixedArray<boolean[]>): boolean[]', arkTsAveragedTime);
        expect(res1.length === 10 && res1[0] === true && res1[9] === false).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_54100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1, 2, 3, 4, 5];
        let fixArray2: number[] = [6, 7, 8, 9, 10];
        let result: number[] = new Array<number>();
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.concat(fixArray2);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_54100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
          'concat(number[], number[], FixedArray<number[]>): number[]', arkTsAveragedTime);
        expect(res1.length === 10 && res1[0] === 1 && res1[9] === 10).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_54200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1.1, 2.2, 3.3, 4.4, 5.5];
        let fixArray2: number[] = [6.6, 7.7, 8.8, 9.9, 10.0];
        let result: number[] = new Array<number>();
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.concat(fixArray2);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_54200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
          'concat(number[], number[], FixedArray<number[]>): number[]', arkTsAveragedTime);
        expect(res1.length === 10 && res1[0] === 1.1 && res1[9] === 10.0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_54300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [100, 200, 300, 400, 500];
        let fixArray2: number[] = [600, 700, 800, 900, 1000];
        let result: number[] = new Array<number>();
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.concat(fixArray2);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_54300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
          'concat(number[], number[], FixedArray<number[]>): number[]', arkTsAveragedTime);
        expect(res1.length === 10 && res1[0] === 100 && res1[9] === 1000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_54400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [1000, 2000, 3000, 4000, 5000];
        let fixArray2: number[] = [6000, 7000, 8000, 9000, 10000];
        let result: number[] = new Array<number>();
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.concat(fixArray2);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_54400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
          'concat(number[], number[], FixedArray<number[]>): number[]', arkTsAveragedTime);
        expect(res1.length === 10 && res1[0] === 1000 && res1[9] === 10000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_54500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fixArray: number[] = [10, 20, 30, 40, 50];
        let fixArray2: number[] = [60, 70, 80, 90, 100];
        let result: number[] = new Array<number>();
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fixArray.concat(fixArray2);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_54500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
          'concat(number[], number[], FixedArray<number[]>): number[]', arkTsAveragedTime);
        expect(res1.length === 10 && res1[0] === 10 && res1[9] === 100).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_54600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: boolean[] = [true, false, true, false, true];
        let va2: boolean[] = [false, true, false, true, false];
        let result: boolean[] = [true, false, true, false, true];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.concat(va2);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_54600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'concat',
          'concat(boolean[], boolean[], FixedArray<boolean[]>): boolean[]', arkTsAveragedTime);
        expect(res1.length === 10 && res1[0] === true && res1[9] === false).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_54700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: number[] = [1, 2, 3, 4, 5];
        let va2: number[] = [6, 7, 8, 9, 10];
        let result: number[] = [1, 2, 3, 4, 5];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.concat(va2);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_54700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'concat',
          'concat(number[], number[], FixedArray<number[]>): number[]', arkTsAveragedTime);
        expect(res1.length === 10 && res1[0] === 1 && res1[9] === 10).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_54800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: number[] = [1.11, 2.22, 3.33, 4.44, 5.55];
        let va2: number[] = [6.66, 7.77, 8.88, 9.99, 10.10];
        let result: number[] = [1.11, 2.22, 3.33, 4.44, 5.55];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.concat(va2);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_54800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'concat',
          'concat(number[], number[], FixedArray<number[]>): number[]', arkTsAveragedTime);
        expect(res1.length === 10 && res1[0] === 1.11 && res1[9] === 10.10).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_54900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: number[] = [1.1, 2.2, 3.3, 4.4, 5.5];
        let va2: number[] = [6.6, 7.7, 8.8, 9.9, 10.0];
        let result: number[] = [1.1, 2.2, 3.3, 4.4, 5.5];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.concat(va2);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_54900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'concat',
          'concat(number[], number[], FixedArray<number[]>): number[]', arkTsAveragedTime);
        expect(res1.length === 10 && res1[0] === 1.1 && res1[9] === 10.0).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_55000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: number[] = [100, 200, 300, 400, 500];
        let va2: number[] = [600, 700, 800, 900, 1000];
        let result: number[] = [100, 200, 300, 400, 500];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.concat(va2);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_55000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'concat',
          'concat(number[], number[], FixedArray<number[]>): number[]', arkTsAveragedTime);
        expect(res1.length === 10 && res1[0] === 100 && res1[9] === 1000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_55100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: number[] = [1000, 2000, 3000, 4000, 5000];
        let va2: number[] = [6000, 7000, 8000, 9000, 10000];
        let result: number[] = [1000, 2000, 3000, 4000, 5000];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.concat(va2);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_55100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'concat',
          'concat(number[], number[], FixedArray<number[]>): number[]', arkTsAveragedTime);
        expect(res1.length === 10 && res1[0] === 1000 && res1[9] === 10000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_55200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let va: number[] = [10, 20, 30, 40, 50];
        let va2: number[] = [60, 70, 80, 90, 100];
        let result: number[] = [10, 20, 30, 40, 50];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = va.concat(va2);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_55200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'concat',
          'concat(number[], number[], FixedArray<number[]>): number[]', arkTsAveragedTime);
        expect(res1.length === 10 && res1[0] === 10 && res1[9] === 100).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_55300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [1, 2, 3, 4, 5];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = new Array<number>();
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].copyWithin(0, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_55300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
          'copyWithin(number[], number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 1 && res1[4] === 5).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_55400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [1.1, 2.2, 3.3, 4.4, 5.5];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = new Array<number>();
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].copyWithin(0, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_55400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
          'copyWithin(number[], number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 1.1 && res1[4] === 5.5).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_55500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [100, 200, 300, 400, 500];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = new Array<number>();
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].copyWithin(0, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_55500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
          'copyWithin(number[], number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 100 && res1[4] === 500).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_55600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [1000, 2000, 3000, 4000, 5000];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = new Array<number>();
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].copyWithin(0, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_55600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
          'copyWithin(number[], number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 1000 && res1[4] === 5000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_55700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [10, 20, 30, 40, 50];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = new Array<number>();
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].copyWithin(0, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_55700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
          'copyWithin(number[], number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 10 && res1[4] === 50).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_55800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: boolean[] = [true, false, true, false, true];
        let arrayPool: Array<boolean[]> = new Array<boolean[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: boolean[] = [true, false, true, false, true];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].copyWithin(0, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_55800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'copyWithin',
          'copyWithin(boolean[], number): boolean[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === true && res1[4] === true).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_55900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [1, 2, 3, 4, 5];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = [1, 2, 3, 4, 5];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].copyWithin(0, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_55900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'copyWithin',
          'copyWithin(number[], number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 1 && res1[4] === 5).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_56000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [1.11, 2.22, 3.33, 4.44, 5.55];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = [1.11, 2.22, 3.33, 4.44, 5.55];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].copyWithin(0, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_56000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'copyWithin',
          'copyWithin(number[], number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 1.11 && res1[4] === 5.55).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_56100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [1.1, 2.2, 3.3, 4.4, 5.5];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = [1.1, 2.2, 3.3, 4.4, 5.5];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].copyWithin(0, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_56100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'copyWithin',
          'copyWithin(number[], number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 1.1 && res1[4] === 5.5).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_56200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [100, 200, 300, 400, 500];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = [100, 200, 300, 400, 500];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].copyWithin(0, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_56200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'copyWithin',
          'copyWithin(number[], number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 100 && res1[4] === 500).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_56300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [1000, 2000, 3000, 4000, 5000];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = [1000, 2000, 3000, 4000, 5000];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].copyWithin(0, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_56300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'copyWithin',
          'copyWithin(number[], number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 1000 && res1[4] === 5000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_56400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [10, 20, 30, 40, 50];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = [10, 20, 30, 40, 50];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].copyWithin(0, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_56400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'copyWithin',
          'copyWithin(number[], number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 10 && res1[4] === 50).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_56500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [1, 2, 3, 4, 5];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = new Array<number>();
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].fill(99);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_56500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
          'fill(number[], number, number, number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 99 && res1[4] === 99).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_56600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [1.1, 2.2, 3.3, 4.4, 5.5];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = new Array<number>();
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].fill(9.9);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_56600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
          'fill(number[], number, number, number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 9.9 && res1[4] === 9.9).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_56700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [100, 200, 300, 400, 500];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = new Array<number>();
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].fill(999);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_56700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
          'fill(number[], number, number, number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 999 && res1[4] === 999).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_56800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [1000, 2000, 3000, 4000, 5000];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = new Array<number>();
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].fill(9999);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_56800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
          'fill(number[], number, number, number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 9999 && res1[4] === 9999).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_56900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [10, 20, 30, 40, 50];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = new Array<number>();
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].fill(99);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_56900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
          'fill(number[], number, number, number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 99 && res1[4] === 99).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_57000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: boolean[] = [true, false, true, false, true];
        let arrayPool: Array<boolean[]> = new Array<boolean[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: boolean[] = [true, false, true, false, true];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].fill(false);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_57000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'fill',
          'fill(boolean[], boolean, number, number): boolean[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === false && res1[4] === false).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_57100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [1, 2, 3, 4, 5];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = [1, 2, 3, 4, 5];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].fill(99);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_57100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'fill',
          'fill(number[], number, number, number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 99 && res1[4] === 99).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_57200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [1.11, 2.22, 3.33, 4.44, 5.55];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = [1.11, 2.22, 3.33, 4.44, 5.55];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].fill(9.99);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_57200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'fill',
          'fill(number[], number, number, number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 9.99 && res1[4] === 9.99).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_57300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [1.1, 2.2, 3.3, 4.4, 5.5];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = [1.1, 2.2, 3.3, 4.4, 5.5];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].fill(9.9);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_57300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'fill',
          'fill(number[], number, number, number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 9.9 && res1[4] === 9.9).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_57400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [100, 200, 300, 400, 500];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = [100, 200, 300, 400, 500];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].fill(999);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_57400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'fill',
          'fill(number[], number, number, number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 999 && res1[4] === 999).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_57500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [1000, 2000, 3000, 4000, 5000];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = [1000, 2000, 3000, 4000, 5000];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].fill(9999);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_57500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'fill',
          'fill(number[], number, number, number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 9999 && res1[4] === 9999).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_57600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceArray: number[] = [10, 20, 30, 40, 50];
        let arrayPool: Array<number[]> = new Array<number[]>(BASE_COUNT);
        for (let i = 0; i < BASE_COUNT; i++) {
          arrayPool[i] = sourceArray.slice();
        }
        let result: number[] = [10, 20, 30, 40, 50];
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arrayPool[i].fill(99);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_57600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ValueArray', 'fill',
          'fill(number[], number, number, number): number[]', arkTsAveragedTime);
        expect(res1.length === 5 && res1[0] === 99 && res1[4] === 99).assertTrue();
        done();
      })
  })
}