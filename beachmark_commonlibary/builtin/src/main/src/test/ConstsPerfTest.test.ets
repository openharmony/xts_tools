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
} from "../../../../../../../hypium/index";
import performance from '../../Performance.util';


import {
  PI,
  E,
  LN10,
  LN2,
  LOG2E,
  LOG10E,
  SQRT1_2,
  SQRT2,
  doubleEpsilon,
  doubleMinimum,
  doubleMaximum,
  doubleNaN,
  doubleInf,
  doubleNegInf
} from 'std/math/consts';

export default function ConstsPerfTest() {
  describe('ConstsPerfTest', () => {

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
    // 1. Math Constants
    // ================================================================
    it('PerformanceTest_consts_PI_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = PI; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math.consts', 'consts', 'PI', 'PI: double', arkTsAveragedTime);
    })

    it('PerformanceTest_consts_E_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = E; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math.consts', 'consts', 'E', 'E: double', arkTsAveragedTime);
    })

    it('PerformanceTest_consts_LN10_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = LN10; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math.consts', 'consts', 'LN10', 'LN10: double', arkTsAveragedTime);
    })

    it('PerformanceTest_consts_LN2_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = LN2; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math.consts', 'consts', 'LN2', 'LN2: double', arkTsAveragedTime);
    })

    it('PerformanceTest_consts_LOG2E_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = LOG2E; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math.consts', 'consts', 'LOG2E', 'LOG2E: double', arkTsAveragedTime);
    })

    it('PerformanceTest_consts_LOG10E_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = LOG10E; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math.consts', 'consts', 'LOG10E', 'LOG10E: double', arkTsAveragedTime);
    })

    it('PerformanceTest_consts_SQRT1_2_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = SQRT1_2; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math.consts', 'consts', 'SQRT1_2', 'SQRT1_2: double', arkTsAveragedTime);
    })

    it('PerformanceTest_consts_SQRT2_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = SQRT2; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math.consts', 'consts', 'SQRT2', 'SQRT2: double', arkTsAveragedTime);
    })

    // ================================================================
    // 2. Double-Precision IEEE 754 Constants
    // ================================================================
    it('PerformanceTest_consts_DoubleEpsilon_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = doubleEpsilon; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math.consts', 'consts', 'doubleEpsilon', 'doubleEpsilon: double', arkTsAveragedTime);
    })

    it('PerformanceTest_consts_DoubleMinimum_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = doubleMinimum; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math.consts', 'consts', 'doubleMinimum', 'doubleMinimum: double', arkTsAveragedTime);
    })

    it('PerformanceTest_consts_DoubleMaximum_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = doubleMaximum; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math.consts', 'consts', 'doubleMaximum', 'doubleMaximum: double', arkTsAveragedTime);
    })

    it('PerformanceTest_consts_DoubleNaN_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = doubleNaN; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math.consts', 'consts', 'doubleNaN', 'doubleNaN: double', arkTsAveragedTime);
    })

    it('PerformanceTest_consts_DoubleInf_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = doubleInf; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math.consts', 'consts', 'doubleInf', 'doubleInf: double', arkTsAveragedTime);
    })

    it('PerformanceTest_consts_DoubleNegInf_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: double = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) { res = doubleNegInf; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.math.consts', 'consts', 'doubleNegInf', 'doubleNegInf: double', arkTsAveragedTime);
    })

  })
}