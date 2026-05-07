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

export default function ErrorsPerfTest() {
  describe('ErrorsPerfTest', () => {
    // 毫秒 * 1000 = 微秒 毫秒 * 1000000 = 纳秒
    const BASE_COUNT = 50000;
    const UNIT_TIME = 1000000;

    beforeEach(() => {
      let ret = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret);
      let ret1 = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret1);
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    // ========== EvalError 测试 ==========

    it('PerformanceTest_EvalError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: EvalError = new EvalError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new EvalError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EvalError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'EvalError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_EvalError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: EvalError = new EvalError("EvalError message");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new EvalError("EvalError message");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EvalError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'EvalError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_EvalError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let options: ErrorOptions = { cause: new Error("cause") };
      let res: EvalError = new EvalError("EvalError message", options);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new EvalError("EvalError message", options);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EvalError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'EvalError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_EvalError_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: EvalError = new EvalError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = EvalError.$_invoke("invoke message");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EvalError_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'EvalError', '$_invoke',
        'static $_invoke(message?: String, options?: ErrorOptions): EvalError', arkTsAveragedTime);
    })

    // ========== NonIntegralIndexError 测试 ==========

    it('PerformanceTest_NonIntegralIndexError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: NonIntegralIndexError = new NonIntegralIndexError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new NonIntegralIndexError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NonIntegralIndexError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'NonIntegralIndexError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_NonIntegralIndexError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: NonIntegralIndexError = new NonIntegralIndexError("NonIntegralIndexError message");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new NonIntegralIndexError("NonIntegralIndexError message");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NonIntegralIndexError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'NonIntegralIndexError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_NonIntegralIndexError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let options: ErrorOptions = { cause: new Error("cause") };
      let res: NonIntegralIndexError = new NonIntegralIndexError("NonIntegralIndexError message", options);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new NonIntegralIndexError("NonIntegralIndexError message", options);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NonIntegralIndexError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'NonIntegralIndexError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_NonIntegralIndexError_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: NonIntegralIndexError = new NonIntegralIndexError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = NonIntegralIndexError.$_invoke("invoke message");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NonIntegralIndexError_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'NonIntegralIndexError', '$_invoke',
        'static $_invoke(message?: String, options?: ErrorOptions): NonIntegralIndexError', arkTsAveragedTime);
    })

    // ========== TypeError 测试 ==========

    it('PerformanceTest_TypeError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: TypeError = new TypeError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new TypeError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TypeError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'TypeError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_TypeError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: TypeError = new TypeError("TypeError message");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new TypeError("TypeError message");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TypeError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'TypeError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_TypeError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let options: ErrorOptions = { cause: new Error("cause") };
      let res: TypeError = new TypeError("TypeError message", options);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new TypeError("TypeError message", options);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TypeError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'TypeError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_TypeError_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: TypeError = new TypeError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = TypeError.$_invoke("invoke message");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TypeError_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'TypeError', '$_invoke',
        'static $_invoke(message?: String, options?: ErrorOptions): TypeError', arkTsAveragedTime);
    })

    // ========== ReferenceError 测试 ==========

    it('PerformanceTest_ReferenceError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: ReferenceError = new ReferenceError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ReferenceError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ReferenceError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'ReferenceError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_ReferenceError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: ReferenceError = new ReferenceError("ReferenceError message");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ReferenceError("ReferenceError message");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ReferenceError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'ReferenceError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_ReferenceError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let options: ErrorOptions = { cause: new Error("cause") };
      let res: ReferenceError = new ReferenceError("ReferenceError message", options);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ReferenceError("ReferenceError message", options);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ReferenceError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'ReferenceError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_ReferenceError_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: ReferenceError = new ReferenceError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ReferenceError.$_invoke("invoke message");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ReferenceError_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'ReferenceError', '$_invoke',
        'static $_invoke(message?: String, options?: ErrorOptions): ReferenceError', arkTsAveragedTime);
    })

    // ========== URIError 测试 ==========

    it('PerformanceTest_URIError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: URIError = new URIError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new URIError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_URIError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'URIError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_URIError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: URIError = new URIError("URIError message");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new URIError("URIError message");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_URIError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'URIError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_URIError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let options: ErrorOptions = { cause: new Error("cause") };
      let res: URIError = new URIError("URIError message", options);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new URIError("URIError message", options);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_URIError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'URIError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_URIError_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: URIError = new URIError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = URIError.$_invoke("invoke message");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_URIError_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'URIError', '$_invoke',
        'static $_invoke(message?: String, options?: ErrorOptions): URIError', arkTsAveragedTime);
    })

    // ========== AggregateError 测试 ==========

    it('PerformanceTest_AggregateError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let errors: Error[] = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AggregateError(errors);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'AggregateError', 'constructor',
        'constructor(errors: Error[], message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_AggregateError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let errors: Error[] = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors, "AggregateError message");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AggregateError(errors, "AggregateError message");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'AggregateError', 'constructor',
        'constructor(errors: Error[], message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_AggregateError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let errors: Error[] = [new Error("error1"), new Error("error2")];
      let options: ErrorOptions = { cause: new Error("cause") };
      let res: AggregateError = new AggregateError(errors, "AggregateError message", options);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AggregateError(errors, "AggregateError message", options);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'AggregateError', 'constructor',
        'constructor(errors: Error[], message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_AggregateError_Constructor_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let errors: Iterable<Error> = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AggregateError(errors);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Constructor_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'AggregateError', 'constructor',
        'constructor(errors: Iterable<Error>, message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_AggregateError_Constructor_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let errors: Iterable<Error> = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors, "AggregateError message");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AggregateError(errors, "AggregateError message");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Constructor_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'AggregateError', 'constructor',
        'constructor(errors: Iterable<Error>, message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_AggregateError_Constructor_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let errors: Iterable<Error> = [new Error("error1"), new Error("error2")];
      let options: ErrorOptions = { cause: new Error("cause") };
      let res: AggregateError = new AggregateError(errors, "AggregateError message", options);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new AggregateError(errors, "AggregateError message", options);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Constructor_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'AggregateError', 'constructor',
        'constructor(errors: Iterable<Error>, message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_AggregateError_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let errors: Error[] = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = AggregateError.$_invoke(errors);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'AggregateError', '$_invoke',
        'static $_invoke(errors: Error[], message?: String, options?: ErrorOptions): AggregateError', arkTsAveragedTime);
    })

    it('PerformanceTest_AggregateError_Static_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let errors: Error[] = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = AggregateError.$_invoke(errors, "invoke message");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Static_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'AggregateError', '$_invoke',
        'static $_invoke(errors: Error[], message?: String, options?: ErrorOptions): AggregateError', arkTsAveragedTime);
    })

    it('PerformanceTest_AggregateError_Static_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let errors: Iterable<Error> = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = AggregateError.$_invoke(errors);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Static_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'AggregateError', '$_invoke',
        'static $_invoke(errors: Iterable<Error>, message?: String, options?: ErrorOptions): AggregateError', arkTsAveragedTime);
    })

    it('PerformanceTest_AggregateError_Static_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let errors: Iterable<Error> = [new Error("error1"), new Error("error2")];
      let res: AggregateError = new AggregateError(errors);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = AggregateError.$_invoke(errors, "invoke message");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AggregateError_Static_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'AggregateError', '$_invoke',
        'static $_invoke(errors: Iterable<Error>, message?: String, options?: ErrorOptions): AggregateError', arkTsAveragedTime);
    })

    it('PerformanceTest_FormatError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: FormatError = new FormatError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new FormatError();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_FormatError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'FormatError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_FormatError_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: FormatError = new FormatError("FormatError message");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new FormatError("FormatError message");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_FormatError_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'FormatError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_FormatError_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let options: ErrorOptions = { cause: new Error("cause") };
      let res: FormatError = new FormatError("FormatError message", options);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new FormatError("FormatError message", options);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_FormatError_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'FormatError', 'constructor',
        'constructor(message?: String, options?: ErrorOptions)', arkTsAveragedTime);
    })

    it('PerformanceTest_FormatError_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: FormatError = new FormatError();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = FormatError.$_invoke("invoke message");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_FormatError_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('escompat', 'FormatError', '$_invoke',
        'static $_invoke(message?: String, options?: ErrorOptions): FormatError', arkTsAveragedTime);
    })

  })
}
