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
} from "../../../hypium/index";

import performance from './Performance.util';

export default function MathPerfTest() {
  describe('MathPerfTest', () => {

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
    // 1. Math Abs
    // ================================================================
    it('PerformanceTest_math_Abs_Byte_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: byte = 0 as byte;
      for (let i = 0; i < BASE_COUNT; i++) { res = abs(-1 as byte); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'abs', 'abs(v: byte): byte', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Abs_Short_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: short = 0 as short;
      for (let i = 0; i < BASE_COUNT; i++) { res = abs(-1 as short); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'abs', 'abs(v: short): short', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Abs_Int_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: int = 0 as int;
      for (let i = 0; i < BASE_COUNT; i++) { res = abs(-1 as int); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'abs', 'abs(v: int): int', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Abs_Long_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: long = 0 as long;
      for (let i = 0; i < BASE_COUNT; i++) { res = abs(-1 as long); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'abs', 'abs(v: long): long', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Abs_Float_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = abs(-1.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'abs', 'abs(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Abs_Double_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = abs(-1.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'abs', 'abs(v: double): double', arkTsAveragedTime);
    })

    // ================================================================
    // 2. Math Trigonometric & Hyperbolic Functions
    // ================================================================
    it('PerformanceTest_math_Acosh_Float_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = acosh(2.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'acosh', 'acosh(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Acosh_Double_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = acosh(2.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'acosh', 'acosh(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Acos_Float_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = acos(0.5 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'acos', 'acos(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Acos_Double_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = acos(0.5 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'acos', 'acos(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Asinh_Float_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = asinh(1.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'asinh', 'asinh(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Asinh_Double_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = asinh(1.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'asinh', 'asinh(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Asin_Float_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = asin(0.5 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'asin', 'asin(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Asin_Double_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = asin(0.5 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'asin', 'asin(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Atan2_Float_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = atan2(1.0 as float, 1.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'atan2', 'atan2(y: float, x: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Atan2_Double_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = atan2(1.0 as double, 1.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'atan2', 'atan2(y: double, x: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Atanh_Float_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = atanh(0.5 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'atanh', 'atanh(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Atanh_Double_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = atanh(0.5 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'atanh', 'atanh(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Atan_Float_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = atan(1.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'atan', 'atan(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Atan_Double_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = atan(1.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'atan', 'atan(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Cosh_Float_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = cosh(1.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'cosh', 'cosh(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Cosh_Double_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = cosh(1.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'cosh', 'cosh(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Cos_Double_2300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = cos(1.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'cos', 'cos(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Sinh_Float_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = sinh(1.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'sinh', 'sinh(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Sinh_Double_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = sinh(1.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'sinh', 'sinh(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Sin_Double_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = sin(1.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'sin', 'sin(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Tanh_Float_2700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = tanh(1.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'tanh', 'tanh(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Tanh_Double_2800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = tanh(1.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'tanh', 'tanh(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Tan_Float_2900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = tan(1.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'tan', 'tan(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Tan_Double_3000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = tan(1.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'tan', 'tan(v: double): double', arkTsAveragedTime);
    })

    // ================================================================
    // 3. Math Exponential, Roots & Logarithms
    // ================================================================
    it('PerformanceTest_math_Cbrt_Float_3100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = cbrt(8.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'cbrt', 'cbrt(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Cbrt_Double_3200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = cbrt(8.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'cbrt', 'cbrt(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Power2_Double_3300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = power2(3.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'power2', 'power2(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Expm1_Float_3400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = expm1(1.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'expm1', 'expm1(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Expm1_Double_3500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = expm1(1.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'expm1', 'expm1(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Exp_Float_3600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = exp(1.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'exp', 'exp(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Exp_Double_3700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = exp(1.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'exp', 'exp(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Hypot_Float_3800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = hypot(3.0 as float, 4.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'hypot', 'hypot(u: float, v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Hypot_Double_3900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = hypot(3.0 as double, 4.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'hypot', 'hypot(u: double, v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Sqrt_Double_4000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = sqrt(9.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'sqrt', 'sqrt(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Power_Double_4100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = power(2.0 as double, 3.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'power', 'power(v: double, u: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Log10_Float_4200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = log10(100.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'log10', 'log10(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Log10_Double_4300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = log10(100.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'log10', 'log10(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Log1p_Float_4400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = log1p(1.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'log1p', 'log1p(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Log1p_Double_4500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = log1p(1.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'log1p', 'log1p(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Log2_Float_4600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = log2(8.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'log2', 'log2(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Log2_Double_4700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = log2(8.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'log2', 'log2(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Log_Float_4800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = log(2.718 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'log', 'log(v: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Log_Double_4900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = log(2.718 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'log', 'log(v: double): double', arkTsAveragedTime);
    })

    // ================================================================
    // 4. Math Rounding, Truncation & Modulo
    // ================================================================
    it('PerformanceTest_math_Ceil_Double_5000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = ceil(1.5 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'ceil', 'ceil(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Floor_Double_5100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = floor(1.5 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'floor', 'floor(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Round_Double_5200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = round(1.5 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'round', 'round(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Trunc_Double_5300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = trunc(1.5 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'trunc', 'trunc(v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Mod_Double_5400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = mod(5.0 as double, 2.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'mod', 'mod(u: double, v: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Rem_Double_5500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = rem(5.0 as double, 2.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'rem', 'rem(v: double, u: double): double', arkTsAveragedTime);
    })

    // ================================================================
    // 5. Math Bitwise & Leading Zeros
    // ================================================================
    it('PerformanceTest_math_Clz64_Long_5600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: int = 0 as int;
      for (let i = 0; i < BASE_COUNT; i++) { res = clz64(1 as long); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'clz64', 'clz64(v: long): int', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Clz64_Int_5700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: int = 0 as int;
      for (let i = 0; i < BASE_COUNT; i++) { res = clz64(1 as int); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'clz64', 'clz64(v: int): int', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Clz64_Short_5800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: int = 0 as int;
      for (let i = 0; i < BASE_COUNT; i++) { res = clz64(1 as short); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'clz64', 'clz64(v: short): int', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Clz64_Byte_5900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: int = 0 as int;
      for (let i = 0; i < BASE_COUNT; i++) { res = clz64(1 as byte); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'clz64', 'clz64(v: byte): int', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Clz64_Char_6000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: int = 0 as int;
      for (let i = 0; i < BASE_COUNT; i++) { res = clz64(c'a'); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'clz64', 'clz64(v: char): int', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Clz32_Int_6100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: int = 0 as int;
      for (let i = 0; i < BASE_COUNT; i++) { res = clz32(1 as int); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'clz32', 'clz32(v: int): int', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Clz32Double_Double_6200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = clz32Double(1.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'clz32Double', 'clz32Double(v: double): double', arkTsAveragedTime);
    })

    // ================================================================
    // 6. Math Max & Min Functions
    // ================================================================
    it('PerformanceTest_math_Max_Byte_6300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: byte = 0 as byte;
      for (let i = 0; i < BASE_COUNT; i++) { res = max(1 as byte, 2 as byte); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'max', 'max(v: byte, u: byte): byte', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Max_Char_6400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: char = c'a';
      for (let i = 0; i < BASE_COUNT; i++) { res = max(c'a', c'b'); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'max', 'max(v: char, u: char): char', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Max_Short_6500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: short = 0 as short;
      for (let i = 0; i < BASE_COUNT; i++) { res = max(1 as short, 2 as short); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'max', 'max(v: short, u: short): short', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Max_Int_6600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: int = 0 as int;
      for (let i = 0; i < BASE_COUNT; i++) { res = max(1 as int, 2 as int); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'max', 'max(v: int, u: int): int', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Max_Long_6700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: long = 0 as long;
      for (let i = 0; i < BASE_COUNT; i++) { res = max(1 as long, 2 as long); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'max', 'max(v: long, u: long): long', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Max_Float_6800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = max(1.0 as float, 2.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'max', 'max(v: float, u: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Max_Double_6900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = max(1.0 as double, 2.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'max', 'max(v: double, u: double): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Min_Byte_7000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: byte = 0 as byte;
      for (let i = 0; i < BASE_COUNT; i++) { res = min(1 as byte, 2 as byte); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'min', 'min(v: byte, u: byte): byte', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Min_Char_7100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: char = c'a';
      for (let i = 0; i < BASE_COUNT; i++) { res = min(c'a', c'b'); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'min', 'min(v: char, u: char): char', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Min_Short_7200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: short = 0 as short;
      for (let i = 0; i < BASE_COUNT; i++) { res = min(1 as short, 2 as short); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'min', 'min(v: short, u: short): short', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Min_Int_7300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: int = 0 as int;
      for (let i = 0; i < BASE_COUNT; i++) { res = min(1 as int, 2 as int); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'min', 'min(v: int, u: int): int', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Min_Long_7400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: long = 0 as long;
      for (let i = 0; i < BASE_COUNT; i++) { res = min(1 as long, 2 as long); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'min', 'min(v: long, u: long): long', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Min_Float_7500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: float = 0.0 as float;
      for (let i = 0; i < BASE_COUNT; i++) { res = min(1.0 as float, 2.0 as float); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'min', 'min(v: float, u: float): float', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Min_Double_7600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = min(1.0 as double, 2.0 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'min', 'min(v: double, u: double): double', arkTsAveragedTime);
    })

    // ================================================================
    // 7. Math Utilities (Random, Sign, Scale, C-like math)
    // ================================================================
    it('PerformanceTest_math_Scalbn_Double_7700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = scalbn(1.5 as double, 2 as int); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'scalbn', 'scalbn(v: double, n: int): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Signbit_Double_7800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: boolean = false;
      for (let i = 0; i < BASE_COUNT; i++) { res = signbit(-1.5 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'signbit', 'signbit(v: double): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Sign_Double_7900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: int = 0 as int;
      for (let i = 0; i < BASE_COUNT; i++) { res = sign(-1.5 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'sign', 'sign(v: double): int', arkTsAveragedTime);
    })

    it('PerformanceTest_math_SeedRandom_Long_8000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { seedRandom(12345 as long); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'seedRandom', 'seedRandom(value: long): void', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Random_8100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = random(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'random', 'random(): double', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Imul_Double_8200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: int = 0 as int;
      for (let i = 0; i < BASE_COUNT; i++) { res = imul(2.5 as double, 2.5 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'imul', 'imul(a: double, b: double): int', arkTsAveragedTime);
    })

    it('PerformanceTest_math_Fround_Double_8300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = fround(1.5 as double); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math', 'math', 'fround', 'fround(doubleVal: double): double', arkTsAveragedTime);
    })

  })
}