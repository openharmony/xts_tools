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

export default function MathmathPerfTest(): void {
  describe('MathmathPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    });

    afterAll(() => {
      performance.save('apiPerformance.txt');
    });

    it('PerformanceTest_mathmath_abs_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = -7;
        let result: number = Math.abs(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.abs(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_abs_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'abs',
          'abs(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_abs_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = -7;
        let result: number = Math.abs(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.abs(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_abs_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'abs',
          'abs(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_abs_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = -7;
        let result: number = Math.abs(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.abs(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_abs_0300: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'abs',
          'abs(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_abs_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = -7;
        let result: number = Math.abs(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.abs(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_abs_0400: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'abs',
          'abs(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_abs_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = -7.25;
        let result: number = Math.abs(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.abs(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_abs_0500: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'abs',
          'abs(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_abs_0600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = -7.25;
        let result: number = Math.abs(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.abs(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_abs_0600: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'abs',
          'abs(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_acos_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 0.5;
        let result: number = Math.acos(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.acos(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_acos_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'acos',
          'acos(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_acos_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 0.5;
        let result: number = Math.acos(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.acos(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_acos_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'acos',
          'acos(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_acosh_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 2.0;
        let result: number = Math.acosh(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.acosh(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_acosh_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'acosh',
          'acosh(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_acosh_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 2.0;
        let result: number = Math.acosh(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.acosh(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_acosh_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'acosh',
          'acosh(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_asin_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 0.5;
        let result: number = Math.asin(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.asin(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_asin_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'asin',
          'asin(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_asin_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 0.5;
        let result: number = Math.asin(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.asin(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_asin_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'asin',
          'asin(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_asinh_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.5;
        let result: number = Math.asinh(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.asinh(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_asinh_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'asinh',
          'asinh(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_asinh_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.5;
        let result: number = Math.asinh(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.asinh(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_asinh_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'asinh',
          'asinh(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_atan_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.atan(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.atan(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_atan_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'atan',
          'atan(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_atan_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.atan(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.atan(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_atan_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'atan',
          'atan(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_atan2_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let y: number = 1.0;
        let x: number = 2.0;
        let result: number = Math.atan2(y, x);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.atan2(y, x);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_atan2_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'atan2',
          'atan2(y: number, x: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_atan2_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let y: number = 1.0;
        let x: number = 2.0;
        let result: number = Math.atan2(y, x);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.atan2(y, x);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_atan2_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'atan2',
          'atan2(y: number, x: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_atanh_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 0.5;
        let result: number = Math.atanh(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.atanh(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_atanh_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'atanh',
          'atanh(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_atanh_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 0.5;
        let result: number = Math.atanh(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.atanh(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_atanh_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'atanh',
          'atanh(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_cbrt_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 27.0;
        let result: number = Math.cbrt(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.cbrt(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_cbrt_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'cbrt',
          'cbrt(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_cbrt_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 27.0;
        let result: number = Math.cbrt(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.cbrt(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_cbrt_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'cbrt',
          'cbrt(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_ceil_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3.14;
        let result: number = Math.ceil(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.ceil(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_ceil_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'ceil',
          'ceil(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_clz64_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 255;
        let result: number = Math.clz32(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.clz32(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_clz64_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'clz32',
          'clz32(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_clz64_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 65535;
        let result: number = Math.clz32(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.clz32(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_clz64_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'clz32',
          'clz32(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_clz64_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = -1;
        let result: number = Math.clz32(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.clz32(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_clz64_0300: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'clz32',
          'clz32(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_clz64_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 65535;
        let result: number = Math.clz32(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.clz32(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_clz64_0400: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'clz32',
          'clz32(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_clz64_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 65535;
        let result: number = Math.clz32(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.clz32(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_clz64_0500: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'clz32',
          'clz32(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_clz32_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 65535;
        let result: number = Math.clz32(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.clz32(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_clz32_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'clz32',
          'clz32(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_clz32Double_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 65535.0;
        let result: number = Math.clz32(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.clz32(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_clz32Double_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'clz32',
          'clz32(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_cos_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.cos(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.cos(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_cos_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'cos',
          'cos(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_cosh_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.cosh(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.cosh(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_cosh_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'cosh',
          'cosh(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_cosh_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.cosh(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.cosh(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_cosh_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'cosh',
          'cosh(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_exp_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.exp(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.exp(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_exp_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'exp',
          'exp(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_exp_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.exp(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.exp(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_exp_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'exp',
          'exp(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_expm1_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.expm1(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.expm1(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_expm1_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'expm1',
          'expm1(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_expm1_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.expm1(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.expm1(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_expm1_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'expm1',
          'expm1(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_floor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3.99;
        let result: number = Math.floor(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.floor(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_floor_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'floor',
          'floor(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_fround_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.337;
        let result: number = Math.fround(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.fround(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_fround_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'fround',
          'fround(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_hypot_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let u: number = 3.0;
        let v: number = 4.0;
        let result: number = Math.hypot(u, v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.hypot(u, v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_hypot_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'hypot',
          'hypot(u: number, v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_hypot_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let u: number = 3.0;
        let v: number = 4.0;
        let result: number = Math.hypot(u, v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.hypot(u, v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_hypot_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'hypot',
          'hypot(u: number, v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_imul_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let a: number = 5;
        let b: number = 7;
        let result: number = Math.imul(a, b);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.imul(a, b);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_imul_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'imul',
          'imul(a: number, b: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_log_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 10.0;
        let result: number = Math.log(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.log(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_log_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'log',
          'log(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_log_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 10.0;
        let result: number = Math.log(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.log(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_log_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'log',
          'log(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_log10_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 100.0;
        let result: number = Math.log10(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.log10(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_log10_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'log10',
          'log10(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_log10_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 100.0;
        let result: number = Math.log10(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.log10(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_log10_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'log10',
          'log10(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_log1p_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.log1p(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.log1p(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_log1p_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'log1p',
          'log1p(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_log1p_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.log1p(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.log1p(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_log1p_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'log1p',
          'log1p(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_log2_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 8.0;
        let result: number = Math.log2(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.log2(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_log2_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'log2',
          'log2(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_log2_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 8.0;
        let result: number = Math.log2(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.log2(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_log2_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'log2',
          'log2(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_max_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3;
        let u: number = 5;
        let result: number = Math.max(v, u);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.max(v, u);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_max_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'max',
          'max(v: number, u: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_max_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3;
        let u: number = 5;
        let result: number = Math.max(v, u);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.max(v, u);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_max_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'max',
          'max(v: number, u: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_max_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3;
        let u: number = 5;
        let result: number = Math.max(v, u);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.max(v, u);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_max_0300: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'max',
          'max(v: number, u: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_max_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3;
        let u: number = 5;
        let result: number = Math.max(v, u);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.max(v, u);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_max_0400: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'max',
          'max(v: number, u: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_max_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3;
        let u: number = 5;
        let result: number = Math.max(v, u);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.max(v, u);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_max_0500: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'max',
          'max(v: number, u: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_max_0600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3.0;
        let u: number = 5.0;
        let result: number = Math.max(v, u);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.max(v, u);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_max_0600: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'max',
          'max(v: number, u: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_max_0700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3.0;
        let u: number = 5.0;
        let result: number = Math.max(v, u);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.max(v, u);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_max_0700: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'max',
          'max(v: number, u: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_min_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3;
        let u: number = 5;
        let result: number = Math.min(v, u);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.min(v, u);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_min_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'min',
          'min(v: number, u: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_min_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3;
        let u: number = 5;
        let result: number = Math.min(v, u);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.min(v, u);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_min_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'min',
          'min(v: number, u: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_min_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3;
        let u: number = 5;
        let result: number = Math.min(v, u);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.min(v, u);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_min_0300: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'min',
          'min(v: number, u: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_min_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3;
        let u: number = 5;
        let result: number = Math.min(v, u);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.min(v, u);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_min_0400: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'min',
          'min(v: number, u: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_min_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3;
        let u: number = 5;
        let result: number = Math.min(v, u);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.min(v, u);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_min_0500: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'min',
          'min(v: number, u: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_min_0600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3.0;
        let u: number = 5.0;
        let result: number = Math.min(v, u);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.min(v, u);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_min_0600: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'min',
          'min(v: number, u: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_min_0700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3.0;
        let u: number = 5.0;
        let result: number = Math.min(v, u);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.min(v, u);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_min_0700: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'min',
          'min(v: number, u: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_mod_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let u: number = 7.0;
        let v: number = 3.0;
        let result: number = u % v;
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = u % v;
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_mod_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'mod',
          'mod(u: number, v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_power_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 2.0;
        let u: number = 10.0;
        let result: number = Math.pow(v, u);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.pow(v, u);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_power_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'pow',
          'pow(v: number, u: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_power2_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 10.0;
        let result: number = v * v;
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = v * v;
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_power2_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'power2',
          'power2(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_random_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let result: number = Math.random();
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.random();
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_random_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'random',
          'random(): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_rem_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 7.0;
        let u: number = 3.0;
        let result: number = v % u;
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = v % u;
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_rem_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'rem',
          'rem(v: number, u: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_round_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3.6;
        let result: number = Math.round(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.round(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_round_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'round',
          'round(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_scalbn_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.5;
        let n: number = 5;
        let result: number = v * Math.pow(2, n);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = v * Math.pow(2, n);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_scalbn_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'scalbn',
          'scalbn(v: number, n: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_seedRandom_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = 42;
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          Math.random();
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = value;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_seedRandom_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'seedRandom',
          'seedRandom(value: number): void', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_sign_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = -3.6;
        let result: number = Math.sign(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.sign(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_sign_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'sign',
          'sign(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_signbit_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = -3.6;
        let result: boolean = Math.sign(v) < 0;
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.sign(v) < 0;
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_signbit_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'signbit',
          'signbit(v: number): boolean', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_sin_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.sin(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.sin(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_sin_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'sin',
          'sin(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_sinh_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.sinh(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.sinh(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_sinh_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'sinh',
          'sinh(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_sinh_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.sinh(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.sinh(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_sinh_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'sinh',
          'sinh(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_sqrt_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 144.0;
        let result: number = Math.sqrt(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.sqrt(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_sqrt_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'sqrt',
          'sqrt(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_tan_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.tan(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.tan(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_tan_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'tan',
          'tan(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_tan_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.tan(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.tan(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_tan_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'tan',
          'tan(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_tanh_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.tanh(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.tanh(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_tanh_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'tanh',
          'tanh(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_tanh_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 1.0;
        let result: number = Math.tanh(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.tanh(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_tanh_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'tanh',
          'tanh(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_trunc_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let v: number = 3.99;
        let result: number = Math.trunc(v);
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.trunc(v);
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_trunc_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'trunc',
          'trunc(v: number): number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_PI_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let result: number = 0.0;
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.PI;
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_PI_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'PI',
          'readonly PI: number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_E_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let result: number = 0.0;
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.E;
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_E_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'E',
          'readonly E: number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_LN10_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let result: number = 0.0;
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.LN10;
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_LN10_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'LN10',
          'readonly LN10: number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_LN2_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let result: number = 0.0;
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.LN2;
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_LN2_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'LN2',
          'readonly LN2: number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_LOG2E_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let result: number = 0.0;
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.LOG2E;
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_LOG2E_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'LOG2E',
          'readonly LOG2E: number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_SQRT1_2_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let result: number = 0.0;
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.SQRT1_2;
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_SQRT1_2_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'SQRT1_2',
          'readonly SQRT1_2: number', arkTsAveragedTime);
        done();
      });

    it('PerformanceTest_mathmath_SQRT2_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let result: number = 0.0;
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Math.SQRT2;
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_mathmath_SQRT2_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('Math', 'Math', 'SQRT2',
          'readonly SQRT2: number', arkTsAveragedTime);
        done();
      });
  });
}