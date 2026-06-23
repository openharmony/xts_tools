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
import { Decimal } from '@kit.ArkTS';
import { systemDateTime } from '@kit.BasicServicesKit';
import performance from './Performance.util';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function DecimalPerfTest(): void {
  describe('DecimalPerfTest', () => {
    // Decimal arithmetic is computationally expensive; 100 avoids excessive test duration
    const BASE_COUNT = 100;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterEach(() => {
      Decimal.set({ precision: 20, rounding: 4, toExpNeg: -7, toExpPos: 21 });
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    // ==================== constructor ====================

    it('PerformanceTest_Decimal_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = new Decimal(5.0);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Decimal(5.0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'constructor',
          'constructor(n: number)', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = new Decimal('5');
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Decimal('5');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Constructor_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'constructor',
          'constructor(n: string)', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let base: Decimal = new Decimal(5);
        let res: Decimal = new Decimal(base);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Decimal(base);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Constructor_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'constructor',
          'constructor(n: Decimal)', arkTsAveragedTime);
        done();
      })

    // ==================== abs ====================

    it('PerformanceTest_Decimal_Abs_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(-0.5);
        let res: Decimal = decimalObj.abs();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.abs();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Abs_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'abs',
          'abs(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== floor ====================

    it('PerformanceTest_Decimal_Floor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(1.8);
        let res: Decimal = decimalObj.floor();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.floor();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Floor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'floor',
          'floor(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== ceil ====================

    it('PerformanceTest_Decimal_Ceil_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(1.8);
        let res: Decimal = decimalObj.ceil();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.ceil();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Ceil_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'ceil',
          'ceil(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== trunc ====================

    it('PerformanceTest_Decimal_Trunc_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(2.5);
        let res: Decimal = decimalObj.trunc();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.trunc();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Trunc_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'trunc',
          'trunc(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== clamp ====================

    it('PerformanceTest_Decimal_Clamp_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(10.1);
        let res: Decimal = decimalObj.clamp(0, 10);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.clamp(0, 10);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Clamp_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'clamp',
          'clamp(min: Value, max: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== add ====================

    it('PerformanceTest_Decimal_Add_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(0.5);
        let res: Decimal = decimalObj.add(0.5);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.add(0.5);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Add_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'add',
          'add(n: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== sub ====================

    it('PerformanceTest_Decimal_Sub_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(1);
        let res: Decimal = decimalObj.sub(0.5);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.sub(0.5);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Sub_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'sub',
          'sub(n: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== mul ====================

    it('PerformanceTest_Decimal_Mul_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(1);
        let res: Decimal = decimalObj.mul(0.5);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.mul(0.5);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Mul_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'mul',
          'mul(n: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== div ====================

    it('PerformanceTest_Decimal_Div_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(1);
        let res: Decimal = decimalObj.div(0.5);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.div(0.5);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Div_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'div',
          'div(n: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== mod ====================

    it('PerformanceTest_Decimal_Mod_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(2);
        let res: Decimal = decimalObj.mod(1);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.mod(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Mod_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'mod',
          'mod(n: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== sqrt ====================

    it('PerformanceTest_Decimal_Sqrt_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(3);
        let res: Decimal = decimalObj.sqrt();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.sqrt();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Sqrt_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'sqrt',
          'sqrt(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== cbrt ====================

    it('PerformanceTest_Decimal_Cbrt_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(3);
        let res: Decimal = decimalObj.cbrt();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.cbrt();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Cbrt_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'cbrt',
          'cbrt(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== pow ====================

    it('PerformanceTest_Decimal_Pow_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(3);
        let res: Decimal = decimalObj.pow(-2);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.pow(-2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Pow_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'pow',
          'pow(n: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== exp ====================

    it('PerformanceTest_Decimal_Exp_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(2);
        let res: Decimal = decimalObj.exp();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.exp();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Exp_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'exp',
          'exp(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== log ====================

    it('PerformanceTest_Decimal_Log_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(2);
        let res: Decimal = decimalObj.log(256);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.log(256);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Log_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'log',
          'log(n: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== ln ====================

    it('PerformanceTest_Decimal_Ln_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(1.23e+30);
        let res: Decimal = decimalObj.ln();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.ln();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Ln_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'ln',
          'ln(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== cos ====================

    it('PerformanceTest_Decimal_Cos_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(-0.25);
        let res: Decimal = decimalObj.cos();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.cos();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Cos_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'cos',
          'cos(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== sin ====================

    it('PerformanceTest_Decimal_Sin_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(0.75);
        let res: Decimal = decimalObj.sin();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.sin();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Sin_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'sin',
          'sin(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== tan ====================

    it('PerformanceTest_Decimal_Tan_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(0.75);
        let res: Decimal = decimalObj.tan();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.tan();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Tan_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'tan',
          'tan(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== cosh ====================

    it('PerformanceTest_Decimal_Cosh_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(0.5);
        let res: Decimal = decimalObj.cosh();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.cosh();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Cosh_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'cosh',
          'cosh(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== sinh ====================

    it('PerformanceTest_Decimal_Sinh_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(0.5);
        let res: Decimal = decimalObj.sinh();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.sinh();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Sinh_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'sinh',
          'sinh(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== tanh ====================

    it('PerformanceTest_Decimal_Tanh_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(0.5);
        let res: Decimal = decimalObj.tanh();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.tanh();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Tanh_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'tanh',
          'tanh(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== acos ====================

    it('PerformanceTest_Decimal_Acos_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(0.5);
        let res: Decimal = decimalObj.acos();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.acos();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Acos_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'acos',
          'acos(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== asin ====================

    it('PerformanceTest_Decimal_Asin_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(0.75);
        let res: Decimal = decimalObj.asin();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.asin();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Asin_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'asin',
          'asin(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== atan ====================

    it('PerformanceTest_Decimal_Atan_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(0.75);
        let res: Decimal = decimalObj.atan();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.atan();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Atan_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'atan',
          'atan(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== acosh ====================

    it('PerformanceTest_Decimal_Acosh_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(50);
        let res: Decimal = decimalObj.acosh();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.acosh();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Acosh_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'acosh',
          'acosh(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== asinh ====================

    it('PerformanceTest_Decimal_Asinh_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(50);
        let res: Decimal = decimalObj.asinh();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.asinh();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Asinh_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'asinh',
          'asinh(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== atanh ====================

    it('PerformanceTest_Decimal_Atanh_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(0.75);
        let res: Decimal = decimalObj.atanh();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.atanh();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Atanh_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'atanh',
          'atanh(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== comparedTo ====================

    it('PerformanceTest_Decimal_ComparedTo_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(Infinity);
        let decimalObj2: Decimal = new Decimal(5);
        let res: number = decimalObj.comparedTo(decimalObj2);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.comparedTo(decimalObj2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ComparedTo_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'comparedTo',
          'comparedTo(n: Value): number', arkTsAveragedTime);
        done();
      })

    // ==================== equals ====================

    it('PerformanceTest_Decimal_Equals_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(0);
        let res: boolean = decimalObj.equals('1e-324');
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.equals('1e-324');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Equals_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'equals',
          'equals(n: Value): boolean', arkTsAveragedTime);
        done();
      })

    // ==================== greaterThan ====================

    it('PerformanceTest_Decimal_GreaterThan_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(0.1);
        let compareArg: Decimal = new Decimal(0.3).sub(0.2);
        let res: boolean = decimalObj.greaterThan(compareArg);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.greaterThan(compareArg);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_GreaterThan_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'greaterThan',
          'greaterThan(n: Value): boolean', arkTsAveragedTime);
        done();
      })

    // ==================== greaterThanOrEqualTo ====================

    it('PerformanceTest_Decimal_GreaterThanOrEqualTo_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(0.3).sub(0.2);
        let res: boolean = decimalObj.greaterThanOrEqualTo(0.1);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.greaterThanOrEqualTo(0.1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_GreaterThanOrEqualTo_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'greaterThanOrEqualTo',
          'greaterThanOrEqualTo(n: Value): boolean', arkTsAveragedTime);
        done();
      })

    // ==================== lessThan ====================

    it('PerformanceTest_Decimal_LessThan_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(0.3).sub(0.2);
        let res: boolean = decimalObj.lessThan(0.1);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.lessThan(0.1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_LessThan_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'lessThan',
          'lessThan(n: Value): boolean', arkTsAveragedTime);
        done();
      })

    // ==================== lessThanOrEqualTo ====================

    it('PerformanceTest_Decimal_LessThanOrEqualTo_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(0.1);
        let compareArg: Decimal = new Decimal(0.3).sub(0.2);
        let res: boolean = decimalObj.lessThanOrEqualTo(compareArg);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.lessThanOrEqualTo(compareArg);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_LessThanOrEqualTo_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'lessThanOrEqualTo',
          'lessThanOrEqualTo(n: Value): boolean', arkTsAveragedTime);
        done();
      })

    // ==================== isFinite ====================

    it('PerformanceTest_Decimal_IsFinite_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(1);
        let res: boolean = decimalObj.isFinite();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.isFinite();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_IsFinite_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'isFinite',
          'isFinite(): boolean', arkTsAveragedTime);
        done();
      })

    // ==================== isInteger ====================

    it('PerformanceTest_Decimal_IsInteger_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(123.456);
        let res: boolean = decimalObj.isInteger();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.isInteger();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_IsInteger_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'isInteger',
          'isInteger(): boolean', arkTsAveragedTime);
        done();
      })

    // ==================== isNaN ====================

    it('PerformanceTest_Decimal_IsNaN_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(NaN);
        let res: boolean = decimalObj.isNaN();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.isNaN();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_IsNaN_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'isNaN',
          'isNaN(): boolean', arkTsAveragedTime);
        done();
      })

    // ==================== isNegative ====================

    it('PerformanceTest_Decimal_IsNegative_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(-5);
        let res: boolean = decimalObj.isNegative();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.isNegative();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_IsNegative_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'isNegative',
          'isNegative(): boolean', arkTsAveragedTime);
        done();
      })

    // ==================== isPositive ====================

    it('PerformanceTest_Decimal_IsPositive_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(5);
        let res: boolean = decimalObj.isPositive();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.isPositive();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_IsPositive_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'isPositive',
          'isPositive(): boolean', arkTsAveragedTime);
        done();
      })

    // ==================== isZero ====================

    it('PerformanceTest_Decimal_IsZero_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(0);
        let res: boolean = decimalObj.isZero();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.isZero();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_IsZero_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'isZero',
          'isZero(): boolean', arkTsAveragedTime);
        done();
      })

    // ==================== dividedToIntegerBy ====================

    it('PerformanceTest_Decimal_DividedToIntegerBy_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(5);
        let decimalObj2: Decimal = new Decimal(3);
        let res: Decimal = decimalObj.dividedToIntegerBy(decimalObj2);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.dividedToIntegerBy(decimalObj2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_DividedToIntegerBy_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'dividedToIntegerBy',
          'dividedToIntegerBy(n: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== negate ====================

    it('PerformanceTest_Decimal_Negate_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(1.8);
        let res: Decimal = decimalObj.negate();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.negate();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Negate_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'negate',
          'negate(): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== toBinary ====================

    it('PerformanceTest_Decimal_ToBinary_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(256);
        let res: string = decimalObj.toBinary();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toBinary();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToBinary_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toBinary',
          'toBinary(): string', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToBinary_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(256);
        let res: string = decimalObj.toBinary(1);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toBinary(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToBinary_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toBinary',
          'toBinary(significantDigits: number): string', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToBinary_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(256);
        let res: string = decimalObj.toBinary(1, Decimal.ROUND_HALF_UP);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toBinary(1, Decimal.ROUND_HALF_UP);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToBinary_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toBinary',
          'toBinary(significantDigits: number, rounding: Rounding): string', arkTsAveragedTime);
        done();
      })

    // ==================== toOctal ====================

    it('PerformanceTest_Decimal_ToOctal_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(256);
        let res: string = decimalObj.toOctal();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toOctal();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToOctal_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toOctal',
          'toOctal(): string', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToOctal_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(256);
        let res: string = decimalObj.toOctal(1);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toOctal(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToOctal_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toOctal',
          'toOctal(significantDigits: number): string', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToOctal_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(256);
        let res: string = decimalObj.toOctal(1, Decimal.ROUND_HALF_UP);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toOctal(1, Decimal.ROUND_HALF_UP);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToOctal_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toOctal',
          'toOctal(significantDigits: number, rounding: Rounding): string', arkTsAveragedTime);
        done();
      })

    // ==================== toHexadecimal ====================

    it('PerformanceTest_Decimal_ToHexadecimal_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(256);
        let res: string = decimalObj.toHexadecimal();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toHexadecimal();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToHexadecimal_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toHexadecimal',
          'toHexadecimal(): string', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToHexadecimal_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(256);
        let res: string = decimalObj.toHexadecimal(1);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toHexadecimal(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToHexadecimal_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toHexadecimal',
          'toHexadecimal(significantDigits: number): string', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToHexadecimal_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(256);
        let res: string = decimalObj.toHexadecimal(1, Decimal.ROUND_HALF_UP);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toHexadecimal(1, Decimal.ROUND_HALF_UP);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToHexadecimal_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toHexadecimal',
          'toHexadecimal(significantDigits: number, rounding: Rounding): string', arkTsAveragedTime);
        done();
      })

    // ==================== toDecimalPlaces ====================

    it('PerformanceTest_Decimal_ToDecimalPlaces_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(12.34567);
        let res: Decimal = decimalObj.toDecimalPlaces();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toDecimalPlaces();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToDecimalPlaces_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toDecimalPlaces',
          'toDecimalPlaces(): Decimal', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToDecimalPlaces_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(9876.54321);
        let res: Decimal = decimalObj.toDecimalPlaces(3);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toDecimalPlaces(3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToDecimalPlaces_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toDecimalPlaces',
          'toDecimalPlaces(decimalPlaces: number): Decimal', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToDecimalPlaces_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(9876.54321);
        let res: Decimal = decimalObj.toDecimalPlaces(1, Decimal.ROUND_DOWN);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toDecimalPlaces(1, Decimal.ROUND_DOWN);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToDecimalPlaces_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toDecimalPlaces',
          'toDecimalPlaces(decimalPlaces: number, rounding: Rounding): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== toExponential ====================

    it('PerformanceTest_Decimal_ToExponential_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(45.6);
        let res: string = decimalObj.toExponential();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toExponential();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToExponential_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toExponential',
          'toExponential(): string', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToExponential_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(45.6);
        let res: string = decimalObj.toExponential(1);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toExponential(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToExponential_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toExponential',
          'toExponential(decimalPlaces: number): string', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToExponential_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(45.6);
        let res: string = decimalObj.toExponential(1, Decimal.ROUND_DOWN);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toExponential(1, Decimal.ROUND_DOWN);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToExponential_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toExponential',
          'toExponential(decimalPlaces: number, rounding: Rounding): string', arkTsAveragedTime);
        done();
      })

    // ==================== toFixed ====================

    it('PerformanceTest_Decimal_ToFixed_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(3.456);
        let res: string = decimalObj.toFixed();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toFixed();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToFixed_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toFixed',
          'toFixed(): string', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToFixed_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(3.456);
        let res: string = decimalObj.toFixed(2);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toFixed(2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToFixed_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toFixed',
          'toFixed(decimalPlaces: number): string', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToFixed_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(3.456);
        let res: string = decimalObj.toFixed(2, Decimal.ROUND_DOWN);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toFixed(2, Decimal.ROUND_DOWN);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToFixed_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toFixed',
          'toFixed(decimalPlaces: number, rounding: Rounding): string', arkTsAveragedTime);
        done();
      })

    // ==================== toFraction ====================

    it('PerformanceTest_Decimal_ToFraction_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(1.75);
        let res: Decimal[] = decimalObj.toFraction();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toFraction();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToFraction_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toFraction',
          'toFraction(): Decimal[]', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToFraction_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal('3.14159265358');
        let res: Decimal[] = decimalObj.toFraction(100);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toFraction(100);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToFraction_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toFraction',
          'toFraction(maxDenominator: Value): Decimal[]', arkTsAveragedTime);
        done();
      })

    // ==================== toNearest ====================

    it('PerformanceTest_Decimal_ToNearest_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(1.39);
        let res: Decimal = decimalObj.toNearest(0.25);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toNearest(0.25);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToNearest_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toNearest',
          'toNearest(n: Value): Decimal', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToNearest_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(9.499);
        let res: Decimal = decimalObj.toNearest(0.5, Decimal.ROUND_UP);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toNearest(0.5, Decimal.ROUND_UP);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToNearest_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toNearest',
          'toNearest(n: Value, rounding: Rounding): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== toPrecision ====================

    it('PerformanceTest_Decimal_ToPrecision_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(45.6);
        let res: string = decimalObj.toPrecision();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toPrecision();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToPrecision_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toPrecision',
          'toPrecision(): string', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToPrecision_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(45.6);
        let res: string = decimalObj.toPrecision(5);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toPrecision(5);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToPrecision_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toPrecision',
          'toPrecision(significantDigits: number): string', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToPrecision_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(45.6);
        let res: string = decimalObj.toPrecision(2, Decimal.ROUND_UP);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toPrecision(2, Decimal.ROUND_UP);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToPrecision_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toPrecision',
          'toPrecision(significantDigits: number, rounding: Rounding): string', arkTsAveragedTime);
        done();
      })

    // ==================== toSignificantDigits ====================

    it('PerformanceTest_Decimal_ToSignificantDigits_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(987.654321);
        let res: Decimal = decimalObj.toSignificantDigits();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toSignificantDigits();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToSignificantDigits_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toSignificantDigits',
          'toSignificantDigits(): Decimal', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToSignificantDigits_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(987.654321);
        let res: Decimal = decimalObj.toSignificantDigits(6);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toSignificantDigits(6);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToSignificantDigits_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toSignificantDigits',
          'toSignificantDigits(significantDigits: number): Decimal', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_ToSignificantDigits_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(987.654321);
        let res: Decimal = decimalObj.toSignificantDigits(6, Decimal.ROUND_UP);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toSignificantDigits(6, Decimal.ROUND_UP);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToSignificantDigits_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toSignificantDigits',
          'toSignificantDigits(significantDigits: number, rounding: Rounding): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== toNumber ====================

    it('PerformanceTest_Decimal_ToNumber_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(456.789);
        let res: number = decimalObj.toNumber();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toNumber();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToNumber_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toNumber',
          'toNumber(): number', arkTsAveragedTime);
        done();
      })

    // ==================== toString ====================

    it('PerformanceTest_Decimal_ToString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(750000);
        let res: string = decimalObj.toString();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ToString_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'toString',
          'toString(): string', arkTsAveragedTime);
        done();
      })

    // ==================== valueOf ====================

    it('PerformanceTest_Decimal_ValueOf_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(-0);
        let res: string = decimalObj.valueOf();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.valueOf();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_ValueOf_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'valueOf',
          'valueOf(): string', arkTsAveragedTime);
        done();
      })

    // ==================== decimalPlaces ====================

    it('PerformanceTest_Decimal_DecimalPlaces_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(1.234);
        let res: number = decimalObj.decimalPlaces();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.decimalPlaces();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_DecimalPlaces_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'decimalPlaces',
          'decimalPlaces(): number', arkTsAveragedTime);
        done();
      })

    // ==================== precision ====================

    it('PerformanceTest_Decimal_Precision_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(1.234);
        let res: number = decimalObj.precision();
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.precision();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Precision_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'precision',
          'precision(): number', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Decimal_Precision_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let decimalObj: Decimal = new Decimal(987000);
        let res: number = decimalObj.precision(true);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = decimalObj.precision(true);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_Precision_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'precision',
          'precision(includeZeros: boolean | number): number', arkTsAveragedTime);
        done();
      })

    // ==================== static abs ====================

    it('PerformanceTest_Decimal_StaticAbs_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = Decimal.abs(-0.5);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Decimal.abs(-0.5);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_StaticAbs_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'abs',
          'static abs(n: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== static floor ====================

    it('PerformanceTest_Decimal_StaticFloor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = Decimal.floor(1.8);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Decimal.floor(1.8);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_StaticFloor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'floor',
          'static floor(n: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== static ceil ====================

    it('PerformanceTest_Decimal_StaticCeil_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = Decimal.ceil(1.8);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Decimal.ceil(1.8);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_StaticCeil_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'ceil',
          'static ceil(n: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== static trunc ====================

    it('PerformanceTest_Decimal_StaticTrunc_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = Decimal.trunc(2.5);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Decimal.trunc(2.5);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_StaticTrunc_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'trunc',
          'static trunc(n: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== static clamp ====================

    it('PerformanceTest_Decimal_StaticClamp_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = Decimal.clamp(10.1, 0, 10);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Decimal.clamp(10.1, 0, 10);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_StaticClamp_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'clamp',
          'static clamp(n: Value, min: Value, max: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== static add ====================

    it('PerformanceTest_Decimal_StaticAdd_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = Decimal.add(0.5, 0.5);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Decimal.add(0.5, 0.5);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_StaticAdd_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'add',
          'static add(x: Value, y: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== static sum ====================

    it('PerformanceTest_Decimal_StaticSum_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = Decimal.sum(0.5, 0.5);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Decimal.sum(0.5, 0.5);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_StaticSum_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'sum',
          'static sum(...n: Value[]): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== static sub ====================

    it('PerformanceTest_Decimal_StaticSub_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = Decimal.sub(1, 0.5);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Decimal.sub(1, 0.5);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_StaticSub_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'sub',
          'static sub(x: Value, y: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== static mul ====================

    it('PerformanceTest_Decimal_StaticMul_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = Decimal.mul(1, 0.5);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Decimal.mul(1, 0.5);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_StaticMul_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'mul',
          'static mul(x: Value, y: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== static div ====================

    it('PerformanceTest_Decimal_StaticDiv_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = Decimal.div(1, 0.5);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Decimal.div(1, 0.5);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_StaticDiv_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'div',
          'static div(x: Value, y: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== static mod ====================

    it('PerformanceTest_Decimal_StaticMod_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = Decimal.mod(2, 1);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Decimal.mod(2, 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_StaticMod_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'mod',
          'static mod(x: Value, y: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== static sqrt ====================

    it('PerformanceTest_Decimal_StaticSqrt_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = Decimal.sqrt(3);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Decimal.sqrt(3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_StaticSqrt_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'sqrt',
          'static sqrt(n: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== static cbrt ====================

    it('PerformanceTest_Decimal_StaticCbrt_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = Decimal.cbrt(3);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Decimal.cbrt(3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_StaticCbrt_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'cbrt',
          'static cbrt(n: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== static pow ====================

    it('PerformanceTest_Decimal_StaticPow_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = Decimal.pow(3, -2);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Decimal.pow(3, -2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_StaticPow_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'pow',
          'static pow(base: Value, exponent: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== static exp ====================

    it('PerformanceTest_Decimal_StaticExp_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = Decimal.exp(2);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Decimal.exp(2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_StaticExp_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'exp',
          'static exp(n: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== static log ====================

    it('PerformanceTest_Decimal_StaticLog_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = Decimal.log(2, 256);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Decimal.log(2, 256);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_StaticLog_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'log',
          'static log(n: Value, base: Value): Decimal', arkTsAveragedTime);
        done();
      })

    // ==================== static ln ====================

    it('PerformanceTest_Decimal_StaticLn_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Decimal = Decimal.ln(1.23e+30);
        let arkTsAveragedTime: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Decimal.ln(1.23e+30);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Decimal_StaticLn_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('kit.ArkTS', 'Decimal', 'ln',
          'static ln(n: Value): Decimal', arkTsAveragedTime);
        done();
      })

  })
}
