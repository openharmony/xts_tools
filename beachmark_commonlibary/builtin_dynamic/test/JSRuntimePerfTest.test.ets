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
import systemDateTime from '@ohos.systemDateTime';
import performance from './Performance.util';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function JSRuntimePerfTest(): void {
  describe('JSRuntimePerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    });

    afterAll(() => {
      performance.save('apiPerformance.txt');
    });

    it('PerformanceTest_JSRuntime_newJSValueBoolean_3900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Object | null = null;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Boolean(true);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSRuntime_newJSValueBoolean_3900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueBoolean',
          'newJSValueBoolean(value: boolean): JSValue', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_JSRuntime_newJSValueByte_4000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 1;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSRuntime_newJSValueByte_4000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueByte',
          'newJSValueByte(value: byte): JSValue', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_JSRuntime_newJSValueChar_4100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'a';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSRuntime_newJSValueChar_4100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueChar',
          'newJSValueChar(v: char): JSValue', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_JSRuntime_newJSValueShort_4200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 1;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSRuntime_newJSValueShort_4200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueShort',
          'newJSValueShort(value: short): JSValue', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_JSRuntime_newJSValueInt_4300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 1;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSRuntime_newJSValueInt_4300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueInt',
          'newJSValueInt(value: int): JSValue', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_JSRuntime_newJSValueLong_4400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: bigint = 0n;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 1n;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSRuntime_newJSValueLong_4400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueLong',
          'newJSValueLong(value: long): JSValue', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_JSRuntime_newJSValueFloat_4500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: number = 0.0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 1.1;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSRuntime_newJSValueFloat_4500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueFloat',
          'newJSValueFloat(value: float): JSValue', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_JSRuntime_newJSValueDouble_4600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: number = 0.0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 1.1;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSRuntime_newJSValueDouble_4600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueDouble',
          'newJSValueDouble(value: double): JSValue', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_JSRuntime_newJSValueString_4700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new String('test').toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSRuntime_newJSValueString_4700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueString',
          'newJSValueString(value: String): JSValue', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_JSRuntime_newJSValueObject_4800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Object | null = null;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Object();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSRuntime_newJSValueObject_4800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueObject',
          'newJSValueObject(value: Object): JSValue', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_JSRuntime_isJSValue_4900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let mockValue: Object = new Object();
        let res = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = typeof mockValue === 'object';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSRuntime_isJSValue_4900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'isJSValue',
          'isJSValue(value: Object): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_JSRuntime_newJSValueBigInt_5000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: bigint = 0n;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 1n;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSRuntime_newJSValueBigInt_5000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueBigInt',
          'newJSValueBigInt(bi: BigInt): JSValue', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })
  })
}