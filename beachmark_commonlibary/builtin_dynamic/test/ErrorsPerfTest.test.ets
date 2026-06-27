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

export default function ErrorsPerfTest() : void{
  describe('ErrorsPerfTest', () => {

    const BASE_COUNT = 500;

    beforeEach(() => {

    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_RangeError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: RangeError = new RangeError();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new RangeError();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_RangeError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'RangeError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_RangeError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: RangeError = new RangeError("RangeError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new RangeError("RangeError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_RangeError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'RangeError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'RangeError message').assertTrue();
      done();
    })

    it('PerformanceTest_RangeError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: RangeError = new RangeError("RangeError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new RangeError("RangeError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_RangeError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'RangeError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'RangeError message').assertTrue();
      done();
    })

    it('PerformanceTest_RangeError_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: RangeError = new RangeError();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new RangeError("invoke message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_RangeError_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'RangeError', 'constructor',
        'constructor(message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'invoke message').assertTrue();
      done();
    })

    it('PerformanceTest_SyntaxError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: SyntaxError = new SyntaxError();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new SyntaxError();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_SyntaxError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'SyntaxError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_SyntaxError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: SyntaxError = new SyntaxError("SyntaxError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new SyntaxError("SyntaxError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_SyntaxError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'SyntaxError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'SyntaxError message').assertTrue();
      done();
    })

    it('PerformanceTest_SyntaxError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: SyntaxError = new SyntaxError("SyntaxError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new SyntaxError("SyntaxError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_SyntaxError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'SyntaxError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'SyntaxError message').assertTrue();
      done();
    })

    it('PerformanceTest_SyntaxError_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: SyntaxError = new SyntaxError();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new SyntaxError("invoke message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_SyntaxError_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'SyntaxError', 'constructor',
        'constructor(message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'invoke message').assertTrue();
      done();
    })

    it('PerformanceTest_AssertionError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AssertionError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AssertionError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_AssertionError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("AssertionError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("AssertionError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AssertionError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AssertionError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'AssertionError message').assertTrue();
      done();
    })

    it('PerformanceTest_AssertionError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("AssertionError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("AssertionError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AssertionError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AssertionError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'AssertionError message').assertTrue();
      done();
    })

    it('PerformanceTest_DivideByZeroError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_DivideByZeroError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'DivideByZeroError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_DivideByZeroError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("DivideByZeroError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("DivideByZeroError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_DivideByZeroError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'DivideByZeroError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'DivideByZeroError message').assertTrue();
      done();
    })

    it('PerformanceTest_DivideByZeroError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("DivideByZeroError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("DivideByZeroError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_DivideByZeroError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'DivideByZeroError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'DivideByZeroError message').assertTrue();
      done();
    })

    it('PerformanceTest_NullPointerError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NullPointerError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NullPointerError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_NullPointerError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("NullPointerError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("NullPointerError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NullPointerError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NullPointerError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'NullPointerError message').assertTrue();
      done();
    })

    it('PerformanceTest_NullPointerError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("NullPointerError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("NullPointerError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NullPointerError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NullPointerError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'NullPointerError message').assertTrue();
      done();
    })

    it('PerformanceTest_UncaughtExceptionError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_UncaughtExceptionError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'UncaughtExceptionError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_UncaughtExceptionError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("UncaughtExceptionError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("UncaughtExceptionError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_UncaughtExceptionError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'UncaughtExceptionError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'UncaughtExceptionError message').assertTrue();
      done();
    })

    it('PerformanceTest_UncaughtExceptionError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("UncaughtExceptionError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("UncaughtExceptionError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_UncaughtExceptionError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'UncaughtExceptionError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'UncaughtExceptionError message').assertTrue();
      done();
    })

    it('PerformanceTest_JSONTypeError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSONTypeError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'JSONTypeError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_JSONTypeError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("JSONTypeError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("JSONTypeError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSONTypeError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'JSONTypeError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'JSONTypeError message').assertTrue();
      done();
    })

    it('PerformanceTest_JSONTypeError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("JSONTypeError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("JSONTypeError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSONTypeError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'JSONTypeError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'JSONTypeError message').assertTrue();
      done();
    })

    it('PerformanceTest_NegativeArraySizeError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NegativeArraySizeError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NegativeArraySizeError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_NegativeArraySizeError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("NegativeArraySizeError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("NegativeArraySizeError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NegativeArraySizeError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NegativeArraySizeError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'NegativeArraySizeError message').assertTrue();
      done();
    })

    it('PerformanceTest_NegativeArraySizeError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("NegativeArraySizeError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("NegativeArraySizeError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NegativeArraySizeError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NegativeArraySizeError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'NegativeArraySizeError message').assertTrue();
      done();
    })

    it('PerformanceTest_ArrayIndexOutOfBoundsError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayIndexOutOfBoundsError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayIndexOutOfBoundsError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayIndexOutOfBoundsError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("ArrayIndexOutOfBoundsError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("ArrayIndexOutOfBoundsError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayIndexOutOfBoundsError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayIndexOutOfBoundsError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'ArrayIndexOutOfBoundsError message').assertTrue();
      done();
    })

    it('PerformanceTest_ArrayIndexOutOfBoundsError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("ArrayIndexOutOfBoundsError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("ArrayIndexOutOfBoundsError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayIndexOutOfBoundsError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayIndexOutOfBoundsError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'ArrayIndexOutOfBoundsError message').assertTrue();
      done();
    })

    it('PerformanceTest_ArithmeticError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArithmeticError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArithmeticError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ArithmeticError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("ArithmeticError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("ArithmeticError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArithmeticError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArithmeticError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'ArithmeticError message').assertTrue();
      done();
    })

    it('PerformanceTest_ArithmeticError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("ArithmeticError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("ArithmeticError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArithmeticError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArithmeticError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'ArithmeticError message').assertTrue();
      done();
    })

    it('PerformanceTest_OutOfMemoryError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_OutOfMemoryError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'OutOfMemoryError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_OutOfMemoryError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("OutOfMemoryError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("OutOfMemoryError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_OutOfMemoryError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'OutOfMemoryError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'OutOfMemoryError message').assertTrue();
      done();
    })

    it('PerformanceTest_OutOfMemoryError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("OutOfMemoryError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("OutOfMemoryError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_OutOfMemoryError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'OutOfMemoryError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'OutOfMemoryError message').assertTrue();
      done();
    })

    it('PerformanceTest_StackOverflowError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_StackOverflowError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'StackOverflowError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_StackOverflowError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("StackOverflowError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("StackOverflowError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_StackOverflowError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'StackOverflowError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'StackOverflowError message').assertTrue();
      done();
    })

    it('PerformanceTest_StackOverflowError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("StackOverflowError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("StackOverflowError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_StackOverflowError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'StackOverflowError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'StackOverflowError message').assertTrue();
      done();
    })

    it('PerformanceTest_EvalError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: EvalError = new EvalError();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new EvalError();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EvalError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EvalError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_EvalError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: EvalError = new EvalError("EvalError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new EvalError("EvalError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EvalError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EvalError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'EvalError message').assertTrue();
      done();
    })

    it('PerformanceTest_EvalError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: EvalError = new EvalError("EvalError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new EvalError("EvalError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EvalError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EvalError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'EvalError message').assertTrue();
      done();
    })

    it('PerformanceTest_EvalError_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: EvalError = new EvalError();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new EvalError("invoke message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EvalError_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EvalError', 'constructor',
        'constructor(message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'invoke message').assertTrue();
      done();
    })

    it('PerformanceTest_NonIntegralIndexError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NonIntegralIndexError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NonIntegralIndexError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_NonIntegralIndexError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("NonIntegralIndexError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("NonIntegralIndexError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NonIntegralIndexError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NonIntegralIndexError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'NonIntegralIndexError message').assertTrue();
      done();
    })

    it('PerformanceTest_NonIntegralIndexError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("NonIntegralIndexError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("NonIntegralIndexError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NonIntegralIndexError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NonIntegralIndexError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'NonIntegralIndexError message').assertTrue();
      done();
    })

    it('PerformanceTest_NonIntegralIndexError_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("invoke message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NonIntegralIndexError_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NonIntegralIndexError', 'constructor',
        'constructor(message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'invoke message').assertTrue();
      done();
    })

    it('PerformanceTest_TypeError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: TypeError = new TypeError();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new TypeError();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TypeError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'TypeError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_TypeError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: TypeError = new TypeError("TypeError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new TypeError("TypeError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TypeError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'TypeError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'TypeError message').assertTrue();
      done();
    })

    it('PerformanceTest_TypeError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: TypeError = new TypeError("TypeError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new TypeError("TypeError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TypeError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'TypeError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'TypeError message').assertTrue();
      done();
    })

    it('PerformanceTest_TypeError_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: TypeError = new TypeError();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new TypeError("invoke message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TypeError_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'TypeError', 'constructor',
        'constructor(message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'invoke message').assertTrue();
      done();
    })

    it('PerformanceTest_ReferenceError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: ReferenceError = new ReferenceError();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ReferenceError();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ReferenceError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ReferenceError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ReferenceError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: ReferenceError = new ReferenceError("ReferenceError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ReferenceError("ReferenceError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ReferenceError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ReferenceError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'ReferenceError message').assertTrue();
      done();
    })

    it('PerformanceTest_ReferenceError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: ReferenceError = new ReferenceError("ReferenceError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ReferenceError("ReferenceError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ReferenceError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ReferenceError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'ReferenceError message').assertTrue();
      done();
    })

    it('PerformanceTest_ReferenceError_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: ReferenceError = new ReferenceError();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ReferenceError("invoke message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ReferenceError_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ReferenceError', 'constructor',
        'constructor(message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'invoke message').assertTrue();
      done();
    })

    it('PerformanceTest_URIError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: URIError = new URIError();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new URIError();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_URIError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'URIError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_URIError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: URIError = new URIError("URIError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new URIError("URIError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_URIError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'URIError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'URIError message').assertTrue();
      done();
    })

    it('PerformanceTest_URIError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: URIError = new URIError("URIError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new URIError("URIError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_URIError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'URIError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'URIError message').assertTrue();
      done();
    })

    it('PerformanceTest_URIError_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: URIError = new URIError();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new URIError("invoke message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_URIError_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'URIError', 'constructor',
        'constructor(message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'invoke message').assertTrue();
      done();
    })

    it('PerformanceTest_AggregateError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let errors: Error[] = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AggregateError(errors);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AggregateError', 'constructor',
        'constructor(errors: Error[], message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_AggregateError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let errors: Error[] = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors, "AggregateError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AggregateError(errors, "AggregateError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AggregateError', 'constructor',
        'constructor(errors: Error[], message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'AggregateError message').assertTrue();
      done();
    })

    it('PerformanceTest_AggregateError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let errors: Error[] = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors, "AggregateError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AggregateError(errors, "AggregateError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AggregateError', 'constructor',
        'constructor(errors: Error[], message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'AggregateError message').assertTrue();
      done();
    })

    it('PerformanceTest_AggregateError_Constructor_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let errors: Iterable<Error> = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AggregateError(errors);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Constructor_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AggregateError', 'constructor',
        'constructor(errors: Iterable<Error>, message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_AggregateError_Constructor_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let errors: Iterable<Error> = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors, "AggregateError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AggregateError(errors, "AggregateError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Constructor_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AggregateError', 'constructor',
        'constructor(errors: Iterable<Error>, message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'AggregateError message').assertTrue();
      done();
    })

    it('PerformanceTest_AggregateError_Constructor_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let errors: Iterable<Error> = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors, "AggregateError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AggregateError(errors, "AggregateError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Constructor_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AggregateError', 'constructor',
        'constructor(errors: Iterable<Error>, message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'AggregateError message').assertTrue();
      done();
    })

    it('PerformanceTest_AggregateError_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let errors: Error[] = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AggregateError(errors);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AggregateError', 'constructor',
        'constructor(message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_AggregateError_Static_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let errors: Error[] = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AggregateError(errors, "invoke message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Static_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AggregateError', 'constructor',
        'constructor(message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'invoke message').assertTrue();
      done();
    })

    it('PerformanceTest_AggregateError_Static_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let errors: Iterable<Error> = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AggregateError(errors);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Static_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AggregateError', 'constructor',
        'constructor(message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_AggregateError_Static_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let errors: Iterable<Error> = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AggregateError(errors, "invoke message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Static_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AggregateError', 'constructor',
        'constructor(message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'invoke message').assertTrue();
      done();
    })

    it('PerformanceTest_FormatError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_FormatError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FormatError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_FormatError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("FormatError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("FormatError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_FormatError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FormatError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'FormatError message').assertTrue();
      done();
    })

    it('PerformanceTest_FormatError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("FormatError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("FormatError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_FormatError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FormatError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'FormatError message').assertTrue();
      done();
    })

    it('PerformanceTest_InstantiationError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("InstantiationError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("InstantiationError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InstantiationError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InstantiationError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'InstantiationError message').assertTrue();
      done();
    })

    it('PerformanceTest_InstantiationError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("InstantiationError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("InstantiationError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InstantiationError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InstantiationError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'InstantiationError message').assertTrue();
      done();
    })

    it('PerformanceTest_InternalError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InternalError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InternalError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_InternalError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("InternalError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("InternalError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InternalError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InternalError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'InternalError message').assertTrue();
      done();
    })

    it('PerformanceTest_InternalError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("InternalError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("InternalError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InternalError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InternalError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'InternalError message').assertTrue();
      done();
    })

    it('PerformanceTest_IndexOutOfBoundsError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_IndexOutOfBoundsError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'IndexOutOfBoundsError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_IndexOutOfBoundsError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("IndexOutOfBoundsError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("IndexOutOfBoundsError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_IndexOutOfBoundsError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'IndexOutOfBoundsError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'IndexOutOfBoundsError message').assertTrue();
      done();
    })

    it('PerformanceTest_IndexOutOfBoundsError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("IndexOutOfBoundsError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("IndexOutOfBoundsError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_IndexOutOfBoundsError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'IndexOutOfBoundsError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'IndexOutOfBoundsError message').assertTrue();
      done();
    })

    it('PerformanceTest_StringIndexOutOfBoundsError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_StringIndexOutOfBoundsError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'StringIndexOutOfBoundsError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_StringIndexOutOfBoundsError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("StringIndexOutOfBoundsError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("StringIndexOutOfBoundsError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_StringIndexOutOfBoundsError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'StringIndexOutOfBoundsError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'StringIndexOutOfBoundsError message').assertTrue();
      done();
    })

    it('PerformanceTest_StringIndexOutOfBoundsError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("StringIndexOutOfBoundsError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("StringIndexOutOfBoundsError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_StringIndexOutOfBoundsError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'StringIndexOutOfBoundsError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'StringIndexOutOfBoundsError message').assertTrue();
      done();
    })

    it('PerformanceTest_ClassCastError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassCastError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ClassCastError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ClassCastError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("ClassCastError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("ClassCastError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassCastError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ClassCastError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'ClassCastError message').assertTrue();
      done();
    })

    it('PerformanceTest_ClassCastError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("ClassCastError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("ClassCastError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassCastError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ClassCastError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'ClassCastError message').assertTrue();
      done();
    })

    it('PerformanceTest_NeverError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NeverError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NeverError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_NeverError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("NeverError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("NeverError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NeverError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NeverError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'NeverError message').assertTrue();
      done();
    })

    it('PerformanceTest_NeverError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("NeverError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("NeverError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NeverError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NeverError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'NeverError message').assertTrue();
      done();
    })

    it('PerformanceTest_ArrayStoreError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayStoreError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayStoreError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayStoreError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("ArrayStoreError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("ArrayStoreError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayStoreError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayStoreError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'ArrayStoreError message').assertTrue();
      done();
    })

    it('PerformanceTest_ArrayStoreError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("ArrayStoreError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("ArrayStoreError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayStoreError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayStoreError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'ArrayStoreError message').assertTrue();
      done();
    })

    it('PerformanceTest_ExceptionInInitializerError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ExceptionInInitializerError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ExceptionInInitializerError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ExceptionInInitializerError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("ExceptionInInitializerError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("ExceptionInInitializerError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ExceptionInInitializerError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ExceptionInInitializerError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'ExceptionInInitializerError message').assertTrue();
      done();
    })

    it('PerformanceTest_ExceptionInInitializerError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("ExceptionInInitializerError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("ExceptionInInitializerError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ExceptionInInitializerError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ExceptionInInitializerError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'ExceptionInInitializerError message').assertTrue();
      done();
    })

    it('PerformanceTest_CoroutinesLimitExceedError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_CoroutinesLimitExceedError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'CoroutinesLimitExceedError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_CoroutinesLimitExceedError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("CoroutinesLimitExceedError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("CoroutinesLimitExceedError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_CoroutinesLimitExceedError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'CoroutinesLimitExceedError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'CoroutinesLimitExceedError message').assertTrue();
      done();
    })

    it('PerformanceTest_CoroutinesLimitExceedError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("CoroutinesLimitExceedError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("CoroutinesLimitExceedError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_CoroutinesLimitExceedError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'CoroutinesLimitExceedError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'CoroutinesLimitExceedError message').assertTrue();
      done();
    })

    it('PerformanceTest_IllegalLockStateError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_IllegalLockStateError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'IllegalLockStateError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_IllegalLockStateError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("IllegalLockStateError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("IllegalLockStateError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_IllegalLockStateError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'IllegalLockStateError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'IllegalLockStateError message').assertTrue();
      done();
    })

    it('PerformanceTest_IllegalLockStateError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("IllegalLockStateError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("IllegalLockStateError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_IllegalLockStateError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'IllegalLockStateError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'IllegalLockStateError message').assertTrue();
      done();
    })

    it('PerformanceTest_InvalidJobOperationError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InvalidJobOperationError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InvalidJobOperationError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_InvalidJobOperationError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("InvalidJobOperationError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("InvalidJobOperationError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InvalidJobOperationError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InvalidJobOperationError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'InvalidJobOperationError message').assertTrue();
      done();
    })

    it('PerformanceTest_InvalidJobOperationError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("InvalidJobOperationError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("InvalidJobOperationError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InvalidJobOperationError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InvalidJobOperationError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'InvalidJobOperationError message').assertTrue();
      done();
    })

    it('PerformanceTest_InvalidAsyncOperationError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InvalidAsyncOperationError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InvalidAsyncOperationError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_InvalidAsyncOperationError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("InvalidAsyncOperationError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("InvalidAsyncOperationError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InvalidAsyncOperationError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InvalidAsyncOperationError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'InvalidAsyncOperationError message').assertTrue();
      done();
    })

    it('PerformanceTest_InvalidAsyncOperationError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("InvalidAsyncOperationError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("InvalidAsyncOperationError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InvalidAsyncOperationError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InvalidAsyncOperationError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'InvalidAsyncOperationError message').assertTrue();
      done();
    })

    it('PerformanceTest_ArgumentsUnderapplicationError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArgumentsUnderapplicationError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArgumentsUnderapplicationError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ArgumentsUnderapplicationError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("ArgumentsUnderapplicationError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("ArgumentsUnderapplicationError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArgumentsUnderapplicationError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArgumentsUnderapplicationError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'ArgumentsUnderapplicationError message').assertTrue();
      done();
    })

    it('PerformanceTest_ArgumentsUnderapplicationError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("ArgumentsUnderapplicationError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("ArgumentsUnderapplicationError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArgumentsUnderapplicationError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArgumentsUnderapplicationError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'ArgumentsUnderapplicationError message').assertTrue();
      done();
    })

    it('PerformanceTest_InvalidStoreAccessError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InvalidStoreAccessError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InvalidStoreAccessError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_InvalidStoreAccessError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("InvalidStoreAccessError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("InvalidStoreAccessError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InvalidStoreAccessError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InvalidStoreAccessError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'InvalidStoreAccessError message').assertTrue();
      done();
    })

    it('PerformanceTest_InvalidStoreAccessError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Error = new Error("InvalidStoreAccessError message");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Error("InvalidStoreAccessError message");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InvalidStoreAccessError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InvalidStoreAccessError', 'constructor',
        'constructor(message?: String, message?: string)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.message === 'InvalidStoreAccessError message').assertTrue();
      done();
    })

  })
}