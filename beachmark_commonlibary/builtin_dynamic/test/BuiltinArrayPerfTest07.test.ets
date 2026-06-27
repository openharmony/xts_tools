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

export default function BuiltinArrayPerfTest07(): void {
  describe('BuiltinArrayPerfTest07', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_BuiltinArrayTest_30000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1, 0, 1];
      let result: number = 1;
      let forEachBoolCb = (value: number, index: number): void => {
        result = value;
      };
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        fixArray.forEach(forEachBoolCb);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_30000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'forEach',
        'forEach(callbackfn: (value: T, index: number) => void): void', arkTsAveragedTime);
      expect(result === 1).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_30100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1, 2, 3];
      let result: number = 0;
      let forEachByteCb = (value: number, index: number): void => {
        result = value;
      };
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        fixArray.forEach(forEachByteCb);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_30100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'forEach',
        'forEach(callbackfn: (value: T, index: number) => void): void', arkTsAveragedTime);
      expect(result === 3).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_30200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [10, 20, 30];
      let result: number = 0;
      let forEachShortCb = (value: number, index: number): void => {
        result = value;
      };
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        fixArray.forEach(forEachShortCb);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_30200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'forEach',
        'forEach(callbackfn: (value: T, index: number) => void): void', arkTsAveragedTime);
      expect(result === 30).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_30300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [100, 200, 300];
      let result: number = 0;
      let forEachIntCb = (value: number, index: number): void => {
        result = value;
      };
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        fixArray.forEach(forEachIntCb);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_30300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'forEach',
        'forEach(callbackfn: (value: T, index: number) => void): void', arkTsAveragedTime);
      expect(result === 300).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_30400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1000, 2000, 3000];
      let result: number = 0;
      let forEachLongCb = (value: number, index: number): void => {
        result = value;
      };
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        fixArray.forEach(forEachLongCb);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_30400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'forEach',
        'forEach(callbackfn: (value: T, index: number) => void): void', arkTsAveragedTime);
      expect(result === 3000).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_30500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1.1, 2.2, 3.3];
      let result: number = 0;
      let forEachFloatCb = (value: number, index: number): void => {
        result = value;
      };
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        fixArray.forEach(forEachFloatCb);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_30500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'forEach',
        'forEach(callbackfn: (value: T, index: number) => void): void', arkTsAveragedTime);
      expect(Math.abs(result - 3.3) < 0.01).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_30600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1.11, 2.22, 3.33];
      let result: number = 0;
      let forEachDoubleCb = (value: number, index: number): void => {
        result = value;
      };
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        fixArray.forEach(forEachDoubleCb);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_30600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'forEach',
        'forEach(callbackfn: (value: T, index: number) => void): void', arkTsAveragedTime);
      expect(Math.abs(result - 3.33) < 0.01).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_30700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<string> = ['a', 'b', 'c'];
      let result: string = 'a';
      let forEachCharCb = (value: string, index: number): void => {
        result = value;
      };
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        fixArray.forEach(forEachCharCb);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_30700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'forEach',
        'forEach(callbackfn: (value: T, index: number) => void): void', arkTsAveragedTime);
      expect(result === 'c').assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_30800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1, 0, 1];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toLocaleString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_30800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'toLocaleString',
        'toLocaleString(): string', arkTsAveragedTime);
      expect(result !== "").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_30900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1, 2, 3];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toLocaleString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_30900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'toLocaleString',
        'toLocaleString(): string', arkTsAveragedTime);
      expect(result === "1,2,3").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_31000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [10, 20, 30];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toLocaleString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_31000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'toLocaleString',
        'toLocaleString(): string', arkTsAveragedTime);
      expect(result === "10,20,30").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_31100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [100, 200, 300];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toLocaleString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_31100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'toLocaleString',
        'toLocaleString(): string', arkTsAveragedTime);
      expect(result === "100,200,300").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_31200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1000, 2000, 3000];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toLocaleString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_31200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'toLocaleString',
        'toLocaleString(): string', arkTsAveragedTime);

      expect(result.replace(/\D/g, '') === "100020003000").assertTrue();
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_31300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1.1, 2.2, 3.3];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toLocaleString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_31300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'toLocaleString',
        'toLocaleString(): string', arkTsAveragedTime);
      expect(result !== "").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_31400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1.11, 2.22, 3.33];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toLocaleString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_31400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'toLocaleString',
        'toLocaleString(): string', arkTsAveragedTime);
      expect(result !== "").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_31500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<string> = ['a', 'b', 'c'];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toLocaleString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_31500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'toLocaleString',
        'toLocaleString(): string', arkTsAveragedTime);
      expect(result === "a,b,c").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_32400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1, 0, 1];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_32400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(result === "1,0,1").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_32500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1, 2, 3];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_32500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(result === "1,2,3").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_32600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [10, 20, 30];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_32600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(result === "10,20,30").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_32700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [100, 200, 300];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_32700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(result === "100,200,300").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_32800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1000, 2000, 3000];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_32800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(result === "1000,2000,3000").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_32900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1.1, 2.2, 3.3];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_32900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(result !== "").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_33000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1.11, 2.22, 3.33];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_33000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(result !== "").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_33100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<string> = ['a', 'b', 'c'];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_33100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(result === "a,b,c").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_33200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1, 0, 1];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.join('-');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_33200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'join',
        'join(separator?: string): string', arkTsAveragedTime);
      expect(result === "1-0-1").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_33300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1, 2, 3];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.join('-');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_33300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'join',
        'join(separator?: string): string', arkTsAveragedTime);
      expect(result === "1-2-3").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_33400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [10, 20, 30];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.join('-');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_33400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'join',
        'join(separator?: string): string', arkTsAveragedTime);
      expect(result === "10-20-30").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_33500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [100, 200, 300];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.join('-');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_33500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'join',
        'join(separator?: string): string', arkTsAveragedTime);
      expect(result === "100-200-300").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_33600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1000, 2000, 3000];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.join('-');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_33600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'join',
        'join(separator?: string): string', arkTsAveragedTime);
      expect(result === "1000-2000-3000").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_33700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1.1, 2.2, 3.3];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.join('-');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_33700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'join',
        'join(separator?: string): string', arkTsAveragedTime);
      expect(result !== "").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_33800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1.11, 2.22, 3.33];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.join('-');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_33800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'join',
        'join(separator?: string): string', arkTsAveragedTime);
      expect(result !== "").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_33900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<string> = ['a', 'b', 'c'];
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.join('-');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_33900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'join',
        'join(separator?: string): string', arkTsAveragedTime);
      expect(result === "a-b-c").assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_34000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1, 0, 1];
      let result: IterableIterator<number> = fixArray.keys();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.keys();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_34000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'keys',
        'keys(): IterableIterator<number>', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_34100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [1, 2, 3];
      let result: IterableIterator<number> = fixArray.keys();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.keys();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_34100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'keys',
        'keys(): IterableIterator<number>', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_34200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Array<number> = [10, 20, 30];
      let result: IterableIterator<number> = fixArray.keys();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.keys();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_34200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'keys',
        'keys(): IterableIterator<number>', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      done();
    })

  })
}