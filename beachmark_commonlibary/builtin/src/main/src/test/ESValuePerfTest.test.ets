/*
 * Copyright (C) 2025-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
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
} from "../../../../../../hypium/index";
import performance from '../Performance.util';
export default function ESValuePerfTest(): void {
  describe('ESValuePerfTest', () => {
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

    // ================================================================
    // 1. ESValue Constructors (2)
    // ================================================================
    it('PerformanceTest_ESValue_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = new ESValue(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ESValue(i);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'constructor', 'constructor(ev: Any)', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = new ESValue(0, false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ESValue(i, false);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'constructor', 'constructor(ev: Any, isStatic: boolean)', arkTsAveragedTime);
    })

    // ================================================================
    // 2. ESValue Static Getters (2)
    // ================================================================
    it('PerformanceTest_ESValue_GetUndefined_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.Undefined;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.Undefined;
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'Undefined', 'get Undefined(): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_GetNull_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.Null;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.Null;
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'Null', 'get Null(): ESValue', arkTsAveragedTime);
    })

    // ================================================================
    // 3. ESValue Static Wrappers (12)
    // ================================================================
    it('PerformanceTest_ESValue_wrapBoolean_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.wrapBoolean(true);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.wrapBoolean(true);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'wrapBoolean', 'wrapBoolean(b: boolean): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_wrapString_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.wrapString('test');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.wrapString('test');
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'wrapString', 'wrapString(s: string): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_wrapNumber_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.wrapNumber(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.wrapNumber(i);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'wrapNumber', 'wrapNumber(n: number): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_wrapBigInt_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.wrapBigInt(1n);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.wrapBigInt(1n);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'wrapBigInt', 'wrapBigInt(bi: bigint): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_wrapByte_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.wrapByte(1 as byte);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.wrapByte(1 as byte);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'wrapByte', 'wrapByte(b: byte): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_wrapShort_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.wrapShort(1 as short);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.wrapShort(1 as short);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'wrapShort', 'wrapShort(s: short): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_wrapInt_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.wrapInt(0 as int);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.wrapInt(i as int);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'wrapInt', 'wrapInt(i: int): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_wrapLong_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.wrapLong(0 as long);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.wrapLong(i as long);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'wrapLong', 'wrapLong(l: long): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_wrapLongLossy_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.wrapLongLossy(0 as long);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.wrapLongLossy(i as long);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'wrapLongLossy', 'wrapLongLossy(l: long): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_wrapFloat_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.wrapFloat(1.0 as float);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.wrapFloat(1.0 as float);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'wrapFloat', 'wrapFloat(f: float): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_wrapDouble_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.wrapDouble(1.0 as double);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.wrapDouble(1.0 as double);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'wrapDouble', 'wrapDouble(d: double): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_wrap_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.wrap(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.wrap(i);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'wrap', 'wrap(o: Any): ESValue', arkTsAveragedTime);
    })

    // ================================================================
    // 4. ESValue Instance Checkers (11)
    // ================================================================
    it('PerformanceTest_ESValue_unwrap_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = new ESValue(1);
      let res = ev.unwrap();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.unwrap();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'unwrap', 'unwrap(): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_isBoolean_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = new ESValue(true);
      let res = ev.isBoolean();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.isBoolean();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'isBoolean', 'isBoolean(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_isString_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = new ESValue("test");
      let res = ev.isString();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.isString();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'isString', 'isString(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_isNumber_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = new ESValue(1);
      let res = ev.isNumber();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.isNumber();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'isNumber', 'isNumber(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_isBigInt_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = new ESValue(1n);
      let res = ev.isBigInt();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.isBigInt();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'isBigInt', 'isBigInt(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_isUndefined_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = ESValue.Undefined;
      let res = ev.isUndefined();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.isUndefined();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'isUndefined', 'isUndefined(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_isNull_2300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = ESValue.Null;
      let res = ev.isNull();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.isNull();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'isNull', 'isNull(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_isStaticObject_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = new ESValue(new Object(), true);
      let res = ev.isStaticObject();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.isStaticObject();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'isStaticObject', 'isStaticObject(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_isECMAObject_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = ESValue.instantiateEmptyObject();
      let res = ev.isECMAObject();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.isECMAObject();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'isECMAObject', 'isECMAObject(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_isObject_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = ESValue.instantiateEmptyObject();
      let res = ev.isObject();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.isObject();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'isObject', 'isObject(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_isFunction_2700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = ESValue.getGlobal().getProperty("String");
      let res = ev.isFunction();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.isFunction();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'isFunction', 'isFunction(): boolean', arkTsAveragedTime);
    })

    // ================================================================
    // 5. ESValue Instance Converters (7)
    // ================================================================
    it('PerformanceTest_ESValue_toBoolean_2800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = ESValue.wrapBoolean(true);
      let res = ev.toBoolean();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.toBoolean();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'toBoolean', 'toBoolean(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_toString_2900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = ESValue.wrapString("test");
      let res = ev.toString();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.toString();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'toString', 'toString(): string', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_toNumber_3000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = ESValue.wrapNumber(1);
      let res = ev.toNumber();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.toNumber();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'toNumber', 'toNumber(): number', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_toBigInt_3100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = ESValue.wrapBigInt(1n);
      let res = ev.toBigInt();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.toBigInt();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'toBigInt', 'toBigInt(): bigint', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_toUndefined_3200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = ESValue.Undefined;
      let res = ev.toUndefined();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.toUndefined();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'toUndefined', 'toUndefined(): undefined', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_toNull_3300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = ESValue.Null;
      let res = ev.toNull();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.toNull();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'toNull', 'toNull(): null', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_toStaticObject_3400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev = new ESValue(new Object(), true);
      let res = ev.toStaticObject();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.toStaticObject();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'toStaticObject', 'toStaticObject(): object', arkTsAveragedTime);
    })

    // ================================================================
    // 6. ESValue Equality Methods (6)
    // ================================================================
    it('PerformanceTest_ESValue_areEqual_3500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev1 = new ESValue(1);
      let ev2 = new ESValue(1);
      let res = ESValue.areEqual(ev1, ev2);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.areEqual(ev1, ev2);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'areEqual', 'areEqual(ev1: ESValue, ev2: ESValue): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_areStrictlyEqual_3600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev1 = new ESValue(1);
      let ev2 = new ESValue(1);
      let res = ESValue.areStrictlyEqual(ev1, ev2);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.areStrictlyEqual(ev1, ev2);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'areStrictlyEqual', 'areStrictlyEqual(ev1: ESValue, ev2: ESValue): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_areEqualSafe_3700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev1 = new ESValue(1);
      let ev2 = new ESValue(1);
      let res = ESValue.areEqualSafe(ev1, ev2);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.areEqualSafe(ev1, ev2);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'areEqualSafe', 'areEqualSafe(ev1: ESValue, ev2: ESValue): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_isEqualTo_3800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev1 = new ESValue(1);
      let ev2 = new ESValue(1);
      let res = ev1.isEqualTo(ev2);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev1.isEqualTo(ev2);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'isEqualTo', 'isEqualTo(other: ESValue): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_isStrictlyEqualTo_3900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev1 = new ESValue(1);
      let ev2 = new ESValue(1);
      let res = ev1.isStrictlyEqualTo(ev2);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev1.isStrictlyEqualTo(ev2);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'isStrictlyEqualTo', 'isStrictlyEqualTo(other: ESValue): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_isEqualToSafe_4000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ev1 = new ESValue(1);
      let ev2 = new ESValue(1);
      let res = ev1.isEqualToSafe(ev2);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev1.isEqualToSafe(ev2);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'isEqualToSafe', 'isEqualToSafe(other: ESValue): boolean', arkTsAveragedTime);
    })

    // ================================================================
    // 7. ESValue Instantiate & Invoke (6)
    // ================================================================
    it('PerformanceTest_ESValue_instantiate_4100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let jsClass = ESValue.getGlobal().getProperty("Object");
      let res = jsClass.instantiate();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = jsClass.instantiate();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'instantiate', 'instantiate(...args: FixedArray<StaticOrESValue>): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_instantiateEmptyObject_4200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.instantiateEmptyObject();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.instantiateEmptyObject();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'instantiateEmptyObject', 'instantiateEmptyObject(): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_instantiateEmptyArray_4300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.instantiateEmptyArray();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.instantiateEmptyArray();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'instantiateEmptyArray', 'instantiateEmptyArray(): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_invoke_4400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let func = ESValue.getGlobal().getProperty("String");
      let res = func.invoke();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = func.invoke();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'invoke', 'invoke(...args: FixedArray<StaticOrESValue>): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_invokeWithRecv_4500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr = ESValue.instantiateEmptyArray();
      let pushFunc = arr.getProperty("push");
      let res = pushFunc.invokeWithRecv(arr, 0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pushFunc.invokeWithRecv(arr, i);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'invokeWithRecv', 'invokeWithRecv(recv: ESValue, ...args: FixedArray<StaticOrESValue>): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_invokeMethod_4600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr = ESValue.instantiateEmptyArray();
      let res = arr.invokeMethod("push", 0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.invokeMethod("push", i);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'invokeMethod', 'invokeMethod(method: string, ...args: FixedArray<StaticOrESValue>): ESValue', arkTsAveragedTime);
    })

    // ================================================================
    // 8. ESValue Property Manipulations (13)
    // ================================================================
    it('PerformanceTest_ESValue_getProperty_str_4700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyObject();
      let res = obj.getProperty("testKey");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = obj.getProperty("testKey");
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'getProperty', 'getProperty(name: string): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_getProperty_num_4800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr = ESValue.instantiateEmptyArray();
      let res = arr.getProperty(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.getProperty(0);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'getProperty', 'getProperty(index: number): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_getProperty_esv_4900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyObject();
      let prop = ESValue.wrapString("testKey");
      let res = obj.getProperty(prop);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = obj.getProperty(prop);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'getProperty', 'getProperty(property: ESValue): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_getPropertySafe_str_5000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyObject();
      let res = obj.getPropertySafe("testKey");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = obj.getPropertySafe("testKey");
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'getPropertySafe', 'getPropertySafe(name: string): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_getPropertySafe_num_5100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr = ESValue.instantiateEmptyArray();
      let res = arr.getPropertySafe(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.getPropertySafe(0);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'getPropertySafe', 'getPropertySafe(index: number): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_getPropertySafe_esv_5200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyObject();
      let prop = ESValue.wrapString("testKey");
      let res = obj.getPropertySafe(prop);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = obj.getPropertySafe(prop);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'getPropertySafe', 'getPropertySafe(property: ESValue): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_setProperty_str_5300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyObject();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        obj.setProperty("key", i);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _obj = obj;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'setProperty', 'setProperty(name: string, value: StaticOrESValue): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_setProperty_num_5400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr = ESValue.instantiateEmptyArray();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.setProperty(0, i);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _arr = arr;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'setProperty', 'setProperty(index: number, value: StaticOrESValue): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_setProperty_esv_5500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyObject();
      let prop = ESValue.wrapString("key");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        obj.setProperty(prop, i);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _obj = obj;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'setProperty', 'setProperty(property: ESValue, value: StaticOrESValue): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_hasProperty_esv_5600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyObject();
      let prop = ESValue.wrapString("key");
      let res = obj.hasProperty(prop);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = obj.hasProperty(prop);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'hasProperty', 'hasProperty(property: ESValue): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_hasProperty_str_5700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyObject();
      let res = obj.hasProperty("key");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = obj.hasProperty("key");
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'hasProperty', 'hasProperty(name: string): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_hasOwnProperty_esv_5800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyObject();
      let prop = ESValue.wrapString("key");
      let res = obj.hasOwnProperty(prop);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = obj.hasOwnProperty(prop);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'hasOwnProperty', 'hasOwnProperty(property: ESValue): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_hasOwnProperty_str_5900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyObject();
      let res = obj.hasOwnProperty("key");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = obj.hasOwnProperty("key");
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'hasOwnProperty', 'hasOwnProperty(name: string): boolean', arkTsAveragedTime);
    })

    // ================================================================
    // 9. ESValue Iterators & Misc (11)
    // ================================================================
    it('PerformanceTest_ESValue_keys_6000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyArray();
      let res = obj.keys();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = obj.keys();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'keys', 'keys(): IterableIterator<ESValue>', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_values_6100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyArray();
      let res = obj.values();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = obj.values();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'values', 'values(): IterableIterator<ESValue>', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_entries_6200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyArray();
      let res = obj.entries();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = obj.entries();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'entries', 'entries(): IterableIterator<[ESValue, ESValue]>', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_$_iterator_6300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyArray();
      let res = obj.$_iterator();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = obj.$_iterator();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', '$_iterator', '$_iterator(): IterableIterator<ESValue>', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_iterator_6400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyArray();
      let res = obj.iterator();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = obj.iterator();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'iterator', 'iterator(): IterableIterator<ESValue>', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_instanceOf_6500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyObject();
      let jsClass = ESValue.getGlobal().getProperty("Object");
      let res = obj.instanceOf(jsClass);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = obj.instanceOf(jsClass);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'instanceOf', 'instanceOf(type: ESValue | Type): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_typeOf_6600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyObject();
      let res = obj.typeOf();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = obj.typeOf();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'typeOf', 'typeOf(): String', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_load_6700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.load('std/core');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.load('std/core');
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'load', 'load(module: string): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_getGlobal_6800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = ESValue.getGlobal();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ESValue.getGlobal();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'getGlobal', 'getGlobal(): ESValue', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_isPromise_6900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = ESValue.instantiateEmptyObject();
      let res = obj.isPromise();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = obj.isPromise();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'isPromise', 'isPromise(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValue_toPromise_7000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let p = Promise.resolve();
      let ev = ESValue.wrap(p);
      let res = ev.toPromise();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ev.toPromise();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValue', 'toPromise', 'toPromise(): Promise<ESValue>', arkTsAveragedTime);
    })

    // ================================================================
    // 10. ESValueIterator (3)
    // ================================================================
    it('PerformanceTest_ESValueIterator_constructor_7100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr = ESValue.instantiateEmptyArray();
      let res = arr.$_iterator();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.$_iterator();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValueIterator', 'constructor', 'constructor(iterableObj: ESValue)', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValueIterator_next_7200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr = ESValue.instantiateEmptyArray();
      let iter = arr.$_iterator();
      let res = iter.next();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = iter.next();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValueIterator', 'next', 'next(): IteratorResult<ESValue>', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValueIterator_$_iterator_7300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr = ESValue.instantiateEmptyArray();
      let iter = arr.$_iterator();
      let res = iter.$_iterator();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = iter.$_iterator();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValueIterator', '$_iterator', '$_iterator(): IterableIterator<ESValue>', arkTsAveragedTime);
    })

    // ================================================================
    // 11. ESValueEntriesIterator (3)
    // ================================================================
    it('PerformanceTest_ESValueEntriesIterator_constructor_7400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr = ESValue.instantiateEmptyArray();
      let res = arr.entries();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.entries();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValueEntriesIterator', 'constructor', 'constructor(iterableObj: ESValue)', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValueEntriesIterator_next_7500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr = ESValue.instantiateEmptyArray();
      let iter = arr.entries();
      let res = iter.next();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = iter.next();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValueEntriesIterator', 'next', 'next(): IteratorResult<[ESValue, ESValue]>', arkTsAveragedTime);
    })

    it('PerformanceTest_ESValueEntriesIterator_$_iterator_7600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr = ESValue.instantiateEmptyArray();
      let iter = arr.entries();
      let res = iter.$_iterator();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = iter.$_iterator();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop', 'ESValueEntriesIterator', '$_iterator', '$_iterator(): IterableIterator<[ESValue, ESValue]>', arkTsAveragedTime);
    })

  })
}