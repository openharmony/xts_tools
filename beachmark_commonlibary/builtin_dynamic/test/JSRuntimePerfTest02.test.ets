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

export default function JSRuntimePerfTest02(): void {
  describe('JSRuntimePerfTest02', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {

    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_JSRuntime_setPropertyBoolean_10000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let obj: Record<string, boolean> = {};
        obj["test"] = true;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          obj["test"] = true;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: boolean = obj["test"];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime setPropertyBoolean: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyBoolean',
          'static setPropertyBoolean(object: JSValue, name: String, value: boolean): void', arkTsAveragedTime);
        expect(res1).assertTrue();
        done();
      })

    it('PerformanceTest_JSRuntime_setPropertyByte_10100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let obj: Record<string, number> = {};
        let val: number = 42;
        obj["test"] = val;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          obj["test"] = val;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: number = obj["test"];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime setPropertyByte: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyByte',
          'static setPropertyByte(object: JSValue, name: String, value: byte): void', arkTsAveragedTime);
        expect(res1).assertEqual(val);
        done();
      })

    it('PerformanceTest_JSRuntime_setPropertyChar_10200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let obj: Record<string, number> = {};
        let val: number = 65;
        obj["test"] = val;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          obj["test"] = val;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: number = obj["test"];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime setPropertyChar: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyChar',
          'static setPropertyChar(object: JSValue, name: String, value: char): void', arkTsAveragedTime);
        expect(res1).assertEqual(val);
        done();
      })

    it('PerformanceTest_JSRuntime_setPropertyShort_10300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let obj: Record<string, number> = {};
        let val: number = 100;
        obj["test"] = val;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          obj["test"] = val;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: number = obj["test"];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime setPropertyShort: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyShort',
          'static setPropertyShort(object: JSValue, name: String, value: short): void', arkTsAveragedTime);
        expect(res1).assertEqual(val);
        done();
      })

    it('PerformanceTest_JSRuntime_setPropertyInt_10400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let obj: Record<string, number> = {};
        let val: number = 123;
        obj["test"] = val;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          obj["test"] = val;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: number = obj["test"];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime setPropertyInt: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyInt',
          'static setPropertyInt(object: JSValue, name: String, value: int): void', arkTsAveragedTime);
        expect(res1).assertEqual(val);
        done();
      })

    it('PerformanceTest_JSRuntime_setPropertyLong_10500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let obj: Record<string, number> = {};
        let val: number = 999;
        obj["test"] = val;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          obj["test"] = val;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: number = obj["test"];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime setPropertyLong: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyLong',
          'static setPropertyLong(object: JSValue, name: String, value: long): void', arkTsAveragedTime);
        expect(res1).assertEqual(val);
        done();
      })

    it('PerformanceTest_JSRuntime_setPropertyFloat_10600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let obj: Record<string, number> = {};
        let val: number = 3.14;
        obj["test"] = val;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          obj["test"] = val;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: number = obj["test"];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime setPropertyFloat: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyFloat',
          'static setPropertyFloat(object: JSValue, name: String, value: float): void', arkTsAveragedTime);
        expect(res1).assertEqual(val);
        done();
      })

    it('PerformanceTest_JSRuntime_setPropertyDouble_10700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let obj: Record<string, number> = {};
        let val: number = 3.14159;
        obj["test"] = val;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          obj["test"] = val;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: number = obj["test"];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime setPropertyDouble: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyDouble',
          'static setPropertyDouble(object: JSValue, name: String, value: double): void', arkTsAveragedTime);
        expect(res1).assertClose(val, 0.0001);
        done();
      })

    it('PerformanceTest_JSRuntime_setPropertyString_10800',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: Record<string, string> = {};
        let val: string = "hello";
        obj["test"] = val;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          obj["test"] = val;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: string = obj["test"];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime setPropertyString: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyString',
          'static setPropertyString(object: JSValue, name: String, value: String): void', arkTsAveragedTime);
        expect(res1).assertEqual(val);
        done();
      })

    it('PerformanceTest_JSRuntime_setPropertyJSValue_10900',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: Record<string, number> = {};
        let val: number = 42;
        obj["test"] = val;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          obj["test"] = val;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: number = obj["test"];
        let arkTsAveragedTime = Dtime/ BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime setPropertyJSValue: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyJSValue',
          'static setPropertyJSValue(object: JSValue, name: String, value: JSValue): void', arkTsAveragedTime);
        expect(res1).assertEqual(val);
        done();
      })

    it('PerformanceTest_JSRuntime_setPropertyObject_11000',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: Record<string, Object> = {};
        let val: Object = new Object();
        obj["test"] = val;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          obj["test"] = val;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: Object = obj["test"];
        let arkTsAveragedTime = Dtime/ BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime setPropertyObject: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyObject',
          'static setPropertyObject(object: Any, name: String, value: Any): void', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_JSRuntime_typeOf_11100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: Object = [];
        let result: string = typeof obj;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = typeof obj;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime typeOf: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'typeOf',
          'static typeOf(object: JSValue): string', arkTsAveragedTime);
        expect(result).assertEqual('object');
        done();
      })

    it('PerformanceTest_JSRuntime_isPromise_11200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: Object = [];
        let result: boolean = obj instanceof Promise;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = obj instanceof Promise;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime isPromise: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'isPromise',
          'static isPromise(object: JSValue): boolean', arkTsAveragedTime);
        expect(result).assertFalse();
        done();
      })

    it('PerformanceTest_JSRuntime_isStaticValue_11300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: number = 42;
        let result: boolean = (typeof obj !== 'object' && typeof obj !== 'function');
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = (typeof obj !== 'object' && typeof obj !== 'function');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime isStaticValue: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'isStaticValue',
          'static isStaticValue(object: Any): boolean', arkTsAveragedTime);
        expect(result).assertTrue();
        done();
      })

    it('PerformanceTest_JSRuntime_instanceOfStaticType_11400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: Object = [];
        let result: boolean = obj instanceof Object;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = obj instanceof Object;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime/ BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime instanceOfStaticType: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'instanceOfStaticType',
          'static instanceOfStaticType(recv: JSValue, type: Type): boolean', arkTsAveragedTime);
        expect(result).assertTrue();
        done();
      })

    it('PerformanceTest_JSRuntime_instanceOfDynamic_11500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: Object = [];
        let result: boolean = obj instanceof Object;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = obj instanceof Object;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime/ BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime instanceOfDynamic: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'instanceOfDynamic',
          'static instanceOfDynamic(object: Any, ctor: Any): boolean', arkTsAveragedTime);
        expect(result).assertTrue();
        done();
      })

    it('PerformanceTest_JSRuntime_strictEqual_11700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let lhs: number = 42;
        let rhs: number = 42;
        let result: boolean = lhs === rhs;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = lhs === rhs;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime/ BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime strictEqual: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'strictEqual',
          'static strictEqual(lhs: JSValue, rhs: JSValue): boolean', arkTsAveragedTime);
        expect(result).assertTrue();
        done();
      })

    it('PerformanceTest_JSRuntime_setProperty_11800',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: Record<string, number> = {};
        let key: string = "test";
        let value: number = 42;
        obj[key] = value;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          obj[key] = value;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: number = obj[key];
        let arkTsAveragedTime = Dtime/ BASE_COUNT;
        console.info('arkTsPerformanceTest JSRuntime setProperty: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setProperty',
          'static setProperty(object: Any, key: Any, value: Any): void', arkTsAveragedTime);
        expect(res1).assertEqual(value);
        done();
      })

  })
}