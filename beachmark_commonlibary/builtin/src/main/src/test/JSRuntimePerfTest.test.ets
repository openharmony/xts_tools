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
} from "../../../../../hypium/index";
import performance from './Performance.util';

export default function JSRuntimePerfTest(): void {
  describe('JSRuntimePerfTest', () => {

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
    // 1. MimicJSValueIteratableIterator (2)
    // ================================================================
    it('PerformanceTest_MimicJSValueIteratableIterator_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = new MimicJSValueIteratableIterator(new Object()) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'MimicJSValueIteratableIterator', 'constructor', 'constructor(jsIterator: Object)', arkTsAveragedTime);
    })

    it('PerformanceTest_MimicJSValueIteratableIterator_next_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let iter = new Object() as MimicJSValueIteratableIterator;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = iter.next() as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'MimicJSValueIteratableIterator', 'next', 'next(): IteratorResult<Any>', arkTsAveragedTime);
    })

    // ================================================================
    // 2. DynamicFunction (36)
    // ================================================================
    it('PerformanceTest_DynamicFunction_name_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.name as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'name', 'get name(): string', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_unsafeCall_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.unsafeCall() as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'unsafeCall', 'unsafeCall(...r: FixedArray<Any>): Any', arkTsAveragedTime);
    })

    // invoke0 ~ invoke16
    it('PerformanceTest_DynamicFunction_invoke0_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invoke0() as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invoke0', 'invoke0(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invoke1_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invoke1(a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invoke1', 'invoke1(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invoke2_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invoke2(a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invoke2', 'invoke2(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invoke3_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invoke3(a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invoke3', 'invoke3(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invoke4_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invoke4(a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invoke4', 'invoke4(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invoke5_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invoke5(a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invoke5', 'invoke5(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invoke6_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invoke6(a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invoke6', 'invoke6(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invoke7_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invoke7(a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invoke7', 'invoke7(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invoke8_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invoke8(a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invoke8', 'invoke8(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invoke9_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invoke9(a, a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invoke9', 'invoke9(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invoke10_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invoke10(a, a, a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invoke10', 'invoke10(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invoke11_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invoke11(a, a, a, a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invoke11', 'invoke11(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invoke12_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invoke12(a, a, a, a, a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invoke12', 'invoke12(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invoke13_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invoke13(a, a, a, a, a, a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invoke13', 'invoke13(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invoke14_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invoke14(a, a, a, a, a, a, a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invoke14', 'invoke14(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invoke15_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invoke15(a, a, a, a, a, a, a, a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invoke15', 'invoke15(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invoke16_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invoke16(a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invoke16', 'invoke16(...): Any', arkTsAveragedTime);
    })

    // invokeR0 ~ invokeR16
    it('PerformanceTest_DynamicFunction_invokeR0_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invokeR0() as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invokeR0', 'invokeR0(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invokeR1_2300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invokeR1(a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invokeR1', 'invokeR1(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invokeR2_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invokeR2(a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invokeR2', 'invokeR2(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invokeR3_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invokeR3(a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invokeR3', 'invokeR3(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invokeR4_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invokeR4(a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invokeR4', 'invokeR4(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invokeR5_2700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invokeR5(a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invokeR5', 'invokeR5(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invokeR6_2800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invokeR6(a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invokeR6', 'invokeR6(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invokeR7_2900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invokeR7(a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invokeR7', 'invokeR7(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invokeR8_3000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invokeR8(a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invokeR8', 'invokeR8(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invokeR9_3100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invokeR9(a, a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invokeR9', 'invokeR9(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invokeR10_3200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invokeR10(a, a, a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invokeR10', 'invokeR10(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invokeR11_3300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invokeR11(a, a, a, a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invokeR11', 'invokeR11(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invokeR12_3400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invokeR12(a, a, a, a, a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invokeR12', 'invokeR12(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invokeR13_3500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invokeR13(a, a, a, a, a, a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invokeR13', 'invokeR13(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invokeR14_3600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invokeR14(a, a, a, a, a, a, a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invokeR14', 'invokeR14(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invokeR15_3700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invokeR15(a, a, a, a, a, a, a, a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invokeR15', 'invokeR15(...): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_DynamicFunction_invokeR16_3800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let f = new Object() as DynamicFunction; let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = f.invokeR16(a, a, a, a, a, a, a, a, a, a, a, a, a, a, a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'DynamicFunction', 'invokeR16', 'invokeR16(...): Any', arkTsAveragedTime);
    })

    // ================================================================
    // 3. JSRuntime - newJSValue (12)
    // ================================================================
    it('PerformanceTest_JSRuntime_newJSValueBoolean_3900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.newJSValueBoolean(true) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueBoolean', 'newJSValueBoolean(value: boolean): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_newJSValueByte_4000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.newJSValueByte(0) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueByte', 'newJSValueByte(value: byte): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_newJSValueChar_4100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let mockChar: char = c'a';
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.newJSValueChar(mockChar) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueChar', 'newJSValueChar(v: char): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_newJSValueShort_4200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.newJSValueShort(0) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueShort', 'newJSValueShort(value: short): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_newJSValueInt_4300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.newJSValueInt(0) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueInt', 'newJSValueInt(value: int): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_newJSValueLong_4400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.newJSValueLong(0) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueLong', 'newJSValueLong(value: long): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_newJSValueFloat_4500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.newJSValueFloat(0) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueFloat', 'newJSValueFloat(value: float): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_newJSValueDouble_4600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.newJSValueDouble(0) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueDouble', 'newJSValueDouble(value: double): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_newJSValueString_4700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let s = "test" as String; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.newJSValueString(s) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueString', 'newJSValueString(value: String): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_newJSValueObject_4800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let mockObj = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.newJSValueObject(mockObj) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueObject', 'newJSValueObject(v: Object): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_isJSValue_4900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: boolean = false;
      let mockObj = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.isJSValue(mockObj); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'isJSValue', 'isJSValue(v: Object): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_newJSValueBigInt_5000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object(); let bi = BigInt(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.newJSValueBigInt(bi) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'newJSValueBigInt', 'newJSValueBigInt(bi: BigInt): JSValue', arkTsAveragedTime);
    })

    // ================================================================
    // 4. JSRuntime - getValue (4)
    // ================================================================
    it('PerformanceTest_JSRuntime_getValueBoolean_5100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getValueBoolean(v) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getValueBoolean', 'getValueBoolean(value: JSValue): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getValueDouble_5200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getValueDouble(v) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getValueDouble', 'getValueDouble(value: JSValue): double', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getValueString_5300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getValueString(v) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getValueString', 'getValueString(value: JSValue): String', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getValueObject_5400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let a = new Object() as Any; let c = new Object() as Class; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getValueObject(a, c) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getValueObject', 'getValueObject(value: Any, t: Class): Any', arkTsAveragedTime);
    })

    // ================================================================
    // 5. JSRuntime - getProperty (12)
    // ================================================================
    it('PerformanceTest_JSRuntime_getPropertyBoolean_5500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getPropertyBoolean(v, s) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getPropertyBoolean', 'getPropertyBoolean(object: JSValue, name: String): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getPropertyByte_5600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getPropertyByte(v, s) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getPropertyByte', 'getPropertyByte(object: JSValue, name: String): byte', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getPropertyChar_5700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getPropertyChar(v, s) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getPropertyChar', 'getPropertyChar(object: JSValue, name: String): char', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getPropertyShort_5800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getPropertyShort(v, s) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getPropertyShort', 'getPropertyShort(object: JSValue, name: String): short', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getPropertyInt_5900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getPropertyInt(v, s) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getPropertyInt', 'getPropertyInt(object: JSValue, name: String): int', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getPropertyLong_6000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getPropertyLong(v, s) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getPropertyLong', 'getPropertyLong(object: JSValue, name: String): long', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getPropertyFloat_6100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getPropertyFloat(v, s) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getPropertyFloat', 'getPropertyFloat(object: JSValue, name: String): float', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getPropertyDouble_6200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getPropertyDouble(v, s) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getPropertyDouble', 'getPropertyDouble(object: JSValue, name: String): double', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getPropertyString_6300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getPropertyString(v, s) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getPropertyString', 'getPropertyString(object: JSValue, name: String): String', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getPropertyJSValue_String_6400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getPropertyJSValue(v, s) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getPropertyJSValue', 'getPropertyJSValue(object: JSValue, name: String): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getPropertyJSValue_Value_6500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getPropertyJSValue(v, v) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getPropertyJSValue', 'getPropertyJSValue(object: JSValue, key: JSValue): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getPropertyObject_6600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let a = new Object() as Any; let s = "test" as String; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getPropertyObject(a, s) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getPropertyObject', 'getPropertyObject(object: Any, name: String): Any', arkTsAveragedTime);
    })

    // ================================================================
    // 6. JSRuntime - setProperty (11)
    // ================================================================
    it('PerformanceTest_JSRuntime_setPropertyBoolean_6700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setPropertyBoolean(v, s, true); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyBoolean', 'setPropertyBoolean(object: JSValue, name: String, value: boolean): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setPropertyByte_6800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setPropertyByte(v, s, 0); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyByte', 'setPropertyByte(object: JSValue, name: String, value: byte): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setPropertyChar_6900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue;
      let s = new String("test");
      let res: Object = new Object();
      let mockChar: char = c'a';
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setPropertyChar(v, s, mockChar); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyChar', 'setPropertyChar(v: JSValue, prop: string | JSValue, value: char): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setPropertyShort_7000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setPropertyShort(v, s, 0); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyShort', 'setPropertyShort(object: JSValue, name: String, value: short): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setPropertyInt_7100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setPropertyInt(v, s, 0); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyInt', 'setPropertyInt(object: JSValue, name: String, value: int): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setPropertyLong_7200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setPropertyLong(v, s, 0); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyLong', 'setPropertyLong(object: JSValue, name: String, value: long): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setPropertyFloat_7300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setPropertyFloat(v, s, 0); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyFloat', 'setPropertyFloat(object: JSValue, name: String, value: float): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setPropertyDouble_7400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setPropertyDouble(v, s, 0); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyDouble', 'setPropertyDouble(object: JSValue, name: String, value: double): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setPropertyString_7500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setPropertyString(v, s, s); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyString', 'setPropertyString(object: JSValue, name: String, value: String): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setPropertyJSValue_7600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let s = "test" as String;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setPropertyJSValue(v, s, v); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyJSValue', 'setPropertyJSValue(object: JSValue, name: String, value: JSValue): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setPropertyObject_7700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let a = new Object() as Any; let s = "test" as String;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setPropertyObject(a, s, a); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setPropertyObject', 'setPropertyObject(object: Any, name: String, value: Any): void', arkTsAveragedTime);
    })

    // ================================================================
    // 7. JSRuntime - Utilities & Globals (20)
    // ================================================================
    it('PerformanceTest_JSRuntime_hasProperty_7800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let a = new Object() as Any; let s = "test" as String; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.hasProperty(a, s) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'hasProperty', 'hasProperty(object: Any, name: String): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_hasPropertyObject_7900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.hasPropertyObject(a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'hasPropertyObject', 'hasPropertyObject(object: Any, property: Any): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_hasElement_8000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.hasElement(a, 0) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'hasElement', 'hasElement(object: Any, index: int): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_hasOwnProperty_8100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let a = new Object() as Any; let s = "test" as String; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.hasOwnProperty(a, s) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'hasOwnProperty', 'hasOwnProperty(object: Any, name: String): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_hasOwnPropertyJSValue_8200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.hasOwnPropertyJSValue(a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'hasOwnPropertyJSValue', 'hasOwnPropertyJSValue(object: Any, property: Any): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getProperty_8300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getProperty(a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getProperty', 'getProperty(object: Any, property: Any): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_typeOf_8400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.typeOf(v) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'typeOf', 'typeOf(object: JSValue): string', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_isPromise_8500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.isPromise(v) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'isPromise', 'isPromise(object: JSValue): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_invoke_8600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.invoke(a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'invoke', 'invoke(recv: Any, func: Any, ...args: FixedArray<Any>): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_instanceOfStaticType_8700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let t = new Object() as Type; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.instanceOfStaticType(v, t) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'instanceOfStaticType', 'instanceOfStaticType(recv: JSValue, type: Type): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getUndefined_8800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getUndefined() as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getUndefined', 'getUndefined(): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getNull_8900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getNull() as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getNull', 'getNull(): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getGlobal_9000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getGlobal() as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getGlobal', 'getGlobal(): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_createObject_9100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.createObject() as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'createObject', 'createObject(): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_createArray_9200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.createArray() as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'createArray', 'createArray(): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_instanceOfDynamic_9300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.instanceOfDynamic(a, a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'instanceOfDynamic', 'instanceOfDynamic(object: Any, ctor: Any): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_instanceOfStatic_9400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let c = new Object() as Class; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.instanceOfStatic(v, c) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'instanceOfStatic', 'instanceOfStatic(object: JSValue, cls: Class): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_strictEqual_9500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.strictEqual(v, v) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'strictEqual', 'strictEqual(lhs: JSValue, rhs: JSValue): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setProperty_9600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let a = new Object() as Any;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setProperty(a, a, a); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setProperty', 'setProperty(object: Any, key: Any, value: Any): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_isStaticValue_9700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.isStaticValue(a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'isStaticValue', 'isStaticValue(object: Any): boolean', arkTsAveragedTime);
    })

    // ================================================================
    // 8. JSRuntime - getElement (10)
    // ================================================================
    it('PerformanceTest_JSRuntime_getElementBoolean_9800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getElementBoolean(v, 0) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getElementBoolean', 'getElementBoolean(object: JSValue, index: int): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getElementByte_9900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getElementByte(v, 0) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getElementByte', 'getElementByte(object: JSValue, index: int): byte', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getElementChar_0010', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getElementChar(v, 0) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getElementChar', 'getElementChar(object: JSValue, index: int): char', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getElementShort_0020', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getElementShort(v, 0) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getElementShort', 'getElementShort(object: JSValue, index: int): short', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getElementInt_0030', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getElementInt(v, 0) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getElementInt', 'getElementInt(object: JSValue, index: int): int', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getElementLong_0040', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getElementLong(v, 0) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getElementLong', 'getElementLong(object: JSValue, index: int): long', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getElementFloat_0050', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getElementFloat(v, 0) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getElementFloat', 'getElementFloat(object: JSValue, index: int): float', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getElementDouble_0060', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getElementDouble(v, 0) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getElementDouble', 'getElementDouble(object: JSValue, index: int): double', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getElementJSValue_0070', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getElementJSValue(v, 0) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getElementJSValue', 'getElementJSValue(object: JSValue, index: int): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getElementObject_0080', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getElementObject(a, 0) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getElementObject', 'getElementObject(object: Any, index: int): Any', arkTsAveragedTime);
    })

    // ================================================================
    // 9. JSRuntime - instantiate & setElement (11) (Duplicates cleaned)
    // ================================================================
    it('PerformanceTest_JSRuntime_instantiate_0090', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let a = new Object() as Any; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.instantiate(a) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'instantiate', 'instantiate(callable: Any, ...args: FixedArray<Any>): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setElementBoolean_0110', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setElementBoolean(v, 0, true); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setElementBoolean', 'setElementBoolean(object: JSValue, index: int, value: boolean): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setElementByte_0120', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setElementByte(v, 0, 0); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setElementByte', 'setElementByte(object: JSValue, index: int, value: byte): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setElementChar_0130', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue;
      let res: Object = new Object();
      let mockChar: char = c'a';
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setElementChar(v, 0, mockChar); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setElementChar', 'setElementChar(v: JSValue, index: int, value: char): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setElementShort_0140', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setElementShort(v, 0, 0); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setElementShort', 'setElementShort(object: JSValue, index: int, value: short): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setElementInt_0150', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setElementInt(v, 0, 0); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setElementInt', 'setElementInt(object: JSValue, index: int, value: int): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setElementLong_0160', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setElementLong(v, 0, 0); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setElementLong', 'setElementLong(object: JSValue, index: int, value: long): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setElementFloat_0170', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setElementFloat(v, 0, 0); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setElementFloat', 'setElementFloat(object: JSValue, index: int, value: float): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setElementDouble_0180', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setElementDouble(v, 0, 0); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setElementDouble', 'setElementDouble(object: JSValue, index: int, value: double): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setElementJSValue_0190', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setElementJSValue(v, 0, v); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setElementJSValue', 'setElementJSValue(object: JSValue, index: int, value: JSValue): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_setElementObject_0330', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let a = new Object() as Any;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.setElementObject(a, 0, a); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'setElementObject', 'setElementObject(object: Any, index: int, value: Any): void', arkTsAveragedTime);
    })

    // ================================================================
    // 10. JSRuntime - Others & Internal APIs (10)
    // ================================================================
    it('PerformanceTest_JSRuntime_loadModule_0340', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let s = "test" as String; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.loadModule(s) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'loadModule', 'loadModule(m: String): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_loadModuleWithAbc_0350', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let s = "test" as String; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.loadModuleWithAbc(s, s) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'loadModuleWithAbc', 'loadModuleWithAbc(m: String, abcFilePath: String): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_iterate_0360', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let a = new Object() as Any; let cb = new Object() as (arrElem: Any) => void;
      let res: Object = new Object(); // dummy
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { JSRuntime.iterate(a, cb); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res; // dummy
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'iterate', 'iterate(object: Any, callback: (arrElem: Any) => void): void', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_getNumSharedJSValues_0370', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.getNumSharedJSValues() as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'getNumSharedJSValues', 'getNumSharedJSValues(): int', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime___initJSCallClass_0380', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.__initJSCallClass() as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', '__initJSCallClass', '__initJSCallClass(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime___initJSNewClass_0390', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.__initJSNewClass() as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', '__initJSNewClass', '__initJSNewClass(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime___createLambdaProxy_0410', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let mockLambda = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.__createLambdaProxy(mockLambda) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', '__createLambdaProxy', '__createLambdaProxy(lambda: Object): JSValue', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_xgc_0420', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.xgc() as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'xgc', 'xgc(): long', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_invokeDynamicFunction_0430', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr = new Object() as FixedArray<Any>;
      let res: Object = new Object();
      let mockFunc = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.invokeDynamicFunction(mockFunc, arr) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'invokeDynamicFunction', 'invokeDynamicFunction(func: Object, args: FixedArray<Any>): Any', arkTsAveragedTime);
    })

    it('PerformanceTest_JSRuntime_CreateIterator_0440', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let v = new Object() as JSValue; let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = JSRuntime.CreateIterator(v) as Object; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'JSRuntime', 'CreateIterator', 'CreateIterator(val: JSValue): MimicJSValueIteratableIterator', arkTsAveragedTime);
    })

  })
}