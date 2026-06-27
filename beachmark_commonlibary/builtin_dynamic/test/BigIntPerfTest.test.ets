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

export default function BigIntPerfTest(): void {
  describe('BigIntPerfTest', () => {

    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_BigInt_constructor_default_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigInt(0);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime constructor(): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'constructor',
        'constructor()', arkTsAveragedTime);
      expect(res1 === BigInt(0)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_constructor_byte_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let val: number = 42;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigInt(val);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime constructor(byte): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'constructor',
        'constructor(d: number)', arkTsAveragedTime);
      expect(res1 === BigInt(42)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_constructor_short_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let val: number = 10000;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigInt(val);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime constructor(short): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'constructor',
        'constructor(d: number)', arkTsAveragedTime);
      expect(res1 === BigInt(10000)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_constructor_int_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigInt(42);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime constructor(int): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'constructor',
        'constructor(d: number)', arkTsAveragedTime);
      expect(res1 === BigInt(42)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_constructor_long_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigInt(9999999999);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime constructor(long): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'constructor',
        'constructor(d: bigint)', arkTsAveragedTime);
      expect(res1 === BigInt(9999999999)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_constructor_double_0600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigInt(3140000000000000);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime constructor(double): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'constructor',
        'constructor(d: bigint)', arkTsAveragedTime);
      expect(res1 === BigInt(3140000000000000)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_constructor_string_0700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigInt("12345678901234567890");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime constructor(string): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'constructor',
        'constructor(d: string)', arkTsAveragedTime);
      expect(res1 === BigInt("12345678901234567890")).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_constructor_boolean_0800',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigInt(true);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime constructor(boolean): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'constructor',
        'constructor(d: boolean)', arkTsAveragedTime);
      expect(res1 === BigInt(1)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_constructor_BigInt_0900',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let bigNum = BigInt("123456789012345678901234567890");
      let src = bigNum;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigInt(src);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime constructor(BigInt): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'constructor',
        'constructor(d: bigint)', arkTsAveragedTime);
      expect(res1 === src).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_constructor_FixedArray_sign_1000',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let arr: number[] = [1, 2, 3, 4];
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigInt(arr[0]);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime constructor(array, sign): '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'constructor',
        'constructor(v: number[], sign: number)', arkTsAveragedTime);
      expect(res1 === BigInt(1)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_constructor_ValueArray_sign_1010',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let vArr: number[] = [1, 2, 3, 4];
      let res: bigint = BigInt(0);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigInt(vArr[0]);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime constructor(array, sign): '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'constructor',
        'constructor(v: number[], sign: number)', arkTsAveragedTime);
      expect(res1 === BigInt(1)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_fromULong_1100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let val = 4294967295;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigInt(val);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime fromULong: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'constructor',
        'constructor(val: number): bigint', arkTsAveragedTime);
      expect(res1 === BigInt(4294967295)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_asIntN_long_1200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let bigNum = BigInt("123456789012345678901234567890");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = bigNum;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime asIntN(long): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'asIntN',
        'asIntN(bits: number, num: bigint): bigint', arkTsAveragedTime);
      expect(res1 === bigNum).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_asIntN_Number_1300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let bigNum = BigInt("123456789012345678901234567890");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = bigNum;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime asIntN(Number): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'asIntN',
        'asIntN(bits: number, num: bigint): bigint', arkTsAveragedTime);
      expect(res1 === bigNum).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_asUintN_long_1400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let bigNum = BigInt("123456789012345678901234567890");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = bigNum;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime asUintN(long): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'asUintN',
        'asUintN(bits: number, num: bigint): bigint', arkTsAveragedTime);
      expect(res1 === bigNum).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_asUintN_Number_1500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let bigNum = BigInt("123456789012345678901234567890");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = bigNum;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime asUintN(Number): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'asUintN',
        'asUintN(bits: number, num: bigint): bigint', arkTsAveragedTime);
      expect(res1 === bigNum).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_invoke_BigInt_1600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let a = BigInt(123456789);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigInt(a);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime $_invoke(BigInt): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'constructor',
        'constructor(value: bigint): bigint', arkTsAveragedTime);
      expect(res1 === a).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_invoke_long_1700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigInt(99999);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime $_invoke(long): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'constructor',
        'constructor(value: number): bigint', arkTsAveragedTime);
      expect(res1 === BigInt(99999)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_invoke_number_1800',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigInt(12345);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime $_invoke(number): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'constructor',
        'constructor(value: number): bigint', arkTsAveragedTime);
      expect(res1 === BigInt(12345)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_invoke_string_1900',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigInt("987654321");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime $_invoke(string): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'constructor',
        'constructor(value: string): bigint', arkTsAveragedTime);
      expect(res1 === BigInt("987654321")).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_invoke_boolean_2000',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigInt(true);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime $_invoke(boolean): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'constructor',
        'constructor(value: boolean): bigint', arkTsAveragedTime);
      expect(res1 === BigInt(1)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_equals_BigInt_2100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: boolean = false;
      let a = BigInt(123456789);
      let b = BigInt(987654321);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = a === b;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime equals(BigInt): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'equals',
        '===(other: bigint): boolean', arkTsAveragedTime);
      expect(res1 === (a === b)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_equals_Any_2200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: boolean = false;
      let a = BigInt(123456789);
      let other = BigInt("987654321");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = a === other;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime equals(Any): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'equals',
        '===(other: bigint): boolean', arkTsAveragedTime);
      expect(res1 === (a === other)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_negative_2300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: boolean = false;
      let negNum = BigInt(-999999);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = negNum < BigInt(0);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime negative: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'negative',
        'negative(): boolean', arkTsAveragedTime);
      expect(res1 === (negNum < BigInt(0))).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_positive_2400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: boolean = false;
      let negNum = BigInt(-999999);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = negNum > BigInt(0);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime positive: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'positive',
        'positive(): boolean', arkTsAveragedTime);
      expect(res1 === (negNum > BigInt(0))).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_toString_noArgs_2500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let bigNum = BigInt("123456789012345678901234567890");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = bigNum.toString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime toString(): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 === bigNum.toString()).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_toString_int_2600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let bigNum = BigInt("123456789012345678901234567890");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = bigNum.toString(16);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime toString(int): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'toString',
        'toString(radix: number): string', arkTsAveragedTime);
      expect(res1 === bigNum.toString(16)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_toStringAsBinary_2800',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let bigNum = BigInt("123456789012345678901234567890");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = bigNum.toString(2);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime toStringAsBinary: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'toStringAsBinary',
        'toString(radix: number): string', arkTsAveragedTime);
      expect(res1 === bigNum.toString(2)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_toStringAsDecimal_2900',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let bigNum = BigInt("123456789012345678901234567890");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = bigNum.toString(10);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime toStringAsDecimal: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'toStringAsDecimal',
        'toString(radix: number): string', arkTsAveragedTime);
      expect(res1 === bigNum.toString(10)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_toStringAsPowerOfTwoRadix_3000',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let bigNum = BigInt("123456789012345678901234567890");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = bigNum.toString(16);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime toStringAsPowerOfTwoRadix: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'toStringAsPowerOfTwoRadix',
        'toString(radix: number): string', arkTsAveragedTime);
      expect(res1 === bigNum.toString(16)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_toLocaleString_typed_3100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let bigNum = BigInt(123456789);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = bigNum.toLocaleString("zh-CN");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime toLocaleString(typed): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'toLocaleString',
        'toLocaleString(locales?: Intl.LocalesArgument, options?: BigIntToLocaleStringOptions): string',
        arkTsAveragedTime);
      expect(res1 === bigNum.toLocaleString("zh-CN")).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_toLocaleString_options_3200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let bigNum = BigInt(123456789);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = bigNum.toLocaleString("en-US", undefined);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime toLocaleString(object): ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'toLocaleString',
        'override toLocaleString(locales?: Intl.LocalesArgument, options?: object): String',
        arkTsAveragedTime);
      expect(res1 === bigNum.toLocaleString("en-US", undefined)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_valueOf_3300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let a = BigInt(123456789);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = a.valueOf();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime valueOf: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'valueOf',
        'valueOf(): bigint', arkTsAveragedTime);
      expect(res1 === a.valueOf()).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_doubleValue_3400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let a = BigInt(123456789);
      let res: number = 0.0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Number(a);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime doubleValue: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'doubleValue',
        'Number(bigint): number', arkTsAveragedTime);
      expect(res1 === Number(a)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_getLong_3410',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let a = BigInt(123456789);
      let res: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Number(a);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime getLong: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'getLong',
        'Number(bigint): number', arkTsAveragedTime);
      expect(res1 === Number(a)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_getULong_3420',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let a = BigInt(123456789);
      let res: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Number(a);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime getULong: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'getULong',
        'Number(bigint): number', arkTsAveragedTime);
      expect(res1 === Number(a)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_operatorAdd_3500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let a = BigInt(123456789);
      let b = BigInt(987654321);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = a + b;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime operator+: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'operatorAdd',
        '+(other: bigint): bigint', arkTsAveragedTime);
      expect(res1 === (a + b)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_operatorSubtract_3600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let a = BigInt(123456789);
      let b = BigInt(987654321);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = a - b;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime operator-: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'operatorSubtract',
        '-(other: bigint): bigint', arkTsAveragedTime);
      expect(res1 === (a - b)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_operatorMultiply_3700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let a = BigInt(123456789);
      let b = BigInt(987654321);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = a * b;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime operator*: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'operatorMultiply',
        '*(other: bigint): bigint', arkTsAveragedTime);
      expect(res1 === (a * b)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_operatorDivide_3800',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let a = BigInt(123456789);
      let b = BigInt(987654321);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = b / a;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime operator/: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'operatorDivide',
        '/(other: bigint): bigint', arkTsAveragedTime);
      expect(res1 === (b / a)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_operatorModule_3900',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let a = BigInt(123456789);
      let b = BigInt(987654321);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = b % a;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime operator%: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'operatorModule',
        '%(other: bigint): bigint', arkTsAveragedTime);
      expect(res1 === (b % a)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_operatorBitwiseAnd_4000',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let a = BigInt(123456789);
      let b = BigInt(987654321);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = a & b;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime operator&: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'operatorBitwiseAnd',
        '&(other: bigint): bigint', arkTsAveragedTime);
      expect(res1 === (a & b)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_operatorBitwiseOr_4100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let a = BigInt(123456789);
      let b = BigInt(987654321);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = a | b;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime operator|: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'operatorBitwiseOr',
        '|(other: bigint): bigint', arkTsAveragedTime);
      expect(res1 === (a | b)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_operatorBitwiseXor_4200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let a = BigInt(123456789);
      let b = BigInt(987654321);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = a ^ b;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime operator^: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'operatorBitwiseXor',
        '^(other: bigint): bigint', arkTsAveragedTime);
      expect(res1 === (a ^ b)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_operatorBitwiseNot_4300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let a = BigInt(123456789);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ~a;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime operator~: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'operatorBitwiseNot',
        '~(): bigint', arkTsAveragedTime);
      expect(res1 === (~a)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_operatorLeftShift_4400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let a = BigInt(123456789);
      let shift = BigInt(8);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = a << shift;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime operator<<: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'operatorLeftShift',
        '<<(other: bigint): bigint', arkTsAveragedTime);
      expect(res1 === (a << shift)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_operatorRightShift_4500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let a = BigInt(123456789);
      let shift = BigInt(4);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = a >> shift;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime operator>>: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'operatorRightShift',
        '>>(other: bigint): bigint', arkTsAveragedTime);
      expect(res1 === (a >> shift)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_operatorIncrement_4600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let val = BigInt(100);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ++val;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime operator++: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'operatorIncrement',
        '++(): bigint', arkTsAveragedTime);
      expect(res1 === BigInt(100 + BASE_COUNT)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_operatorDecrement_4700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let val = BigInt(200);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = --val;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime operator--: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'operatorDecrement',
        '--(): bigint', arkTsAveragedTime);
      expect(res1 === BigInt(200 - BASE_COUNT)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_operatorGreaterThan_4800',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: boolean = false;
      let a = BigInt(123456789);
      let b = BigInt(987654321);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = (b > a);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime operator>: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'operatorGreaterThan',
        '>(other: bigint): boolean', arkTsAveragedTime);
      expect(res1 === (b > a)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_operatorLessThan_4900',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: boolean = false;
      let a = BigInt(123456789);
      let b = BigInt(987654321);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = (a < b);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime operator<: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'operatorLessThan',
        '<(other: bigint): boolean', arkTsAveragedTime);
      expect(res1 === (a < b)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_operatorGreaterThanEqual_5000',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: boolean = false;
      let a = BigInt(123456789);
      let b = BigInt(987654321);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = (b >= a);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime operator>=: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'operatorGreaterThanEqual',
        '>=(other: bigint): boolean', arkTsAveragedTime);
      expect(res1 === (b >= a)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_operatorLessThanEqual_5100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: boolean = false;
      let a = BigInt(123456789);
      let b = BigInt(987654321);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = (a <= b);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime operator<=: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'operatorLessThanEqual',
        '<=(other: bigint): boolean', arkTsAveragedTime);
      expect(res1 === (a <= b)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_negate_5200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let a = BigInt(123456789);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = -a;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime negate: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'negate',
        '-(): bigint', arkTsAveragedTime);
      expect(res1 === (-a)).assertTrue();
      done();
    })

    it('PerformanceTest_BigInt_pow_5300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: bigint = BigInt(0);
      let base = BigInt(2);
      let exp = BigInt(10);
      let powValue = (): bigint => {
        let temp = BigInt(1);
        for (let j = BigInt(0); j < exp; j++) {
          temp = temp * base;
        }
        return temp;
      };
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = powValue();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime pow: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigInt', 'pow',
        'pow(exponent: bigint): bigint', arkTsAveragedTime);
      expect(res1 === BigInt(1024)).assertTrue();
      done();
    })
  })
}