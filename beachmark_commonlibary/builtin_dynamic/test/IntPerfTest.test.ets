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

export default function IntPerfTest(): void {
  describe('IntPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {

    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_Int_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = 0;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'constructor',
        'function constructor()', arkTsAveragedTime);
      expect(res1 === 0).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = 100;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'constructor',
        'function constructor(value: int)', arkTsAveragedTime);
      expect(res1 === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Static_Properties_MIN_VALUE_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = -2147483648;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Static_Properties_MIN_VALUE_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'MIN_VALUE',
        'static readonly MIN_VALUE: int', arkTsAveragedTime);
      expect(res1 === -2147483648).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Static_Properties_MAX_VALUE_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = 2147483647;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Static_Properties_MAX_VALUE_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'MAX_VALUE',
        'static readonly MAX_VALUE: int', arkTsAveragedTime);
      expect(res1 === 2147483647).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Static_Properties_BIT_SIZE_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = 32;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Static_Properties_BIT_SIZE_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'BIT_SIZE',
        'static readonly BIT_SIZE: byte', arkTsAveragedTime);
      expect(res1 === 32).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Static_Properties_BYTE_SIZE_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = 4;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Static_Properties_BYTE_SIZE_0700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'BYTE_SIZE',
        'static readonly BYTE_SIZE: byte', arkTsAveragedTime);
      expect(res1 === 4).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Static_toByte_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = 100;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Static_toByte_0800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toByte',
        'static toByte(value: int): byte', arkTsAveragedTime);
      expect(res1 === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Static_toShort_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = 100;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Static_toShort_0900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toShort',
        'static toShort(value: int): short', arkTsAveragedTime);
      expect(res1 === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Static_toLong_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = 100;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Static_toLong_1000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toLong',
        'static toLong(value: int): long', arkTsAveragedTime);
      expect(res1 === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Static_toFloat_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: number = 1.0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = 100.0;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Static_toFloat_1100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toFloat',
        'static toFloat(value: int): float', arkTsAveragedTime);
      expect(res1 === 100.0).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Static_toDouble_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: number = 0.0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = 100.0;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Static_toDouble_1200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toDouble',
        'static toDouble(value: int): double', arkTsAveragedTime);
      expect(res1 === 100.0).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Static_toChar_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '\u0000';
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = String.fromCharCode(65);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Static_toChar_1300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toChar',
        'static toChar(value: int): char', arkTsAveragedTime);
      expect(res1 === 'A').assertTrue();
      done();
    })

    it('PerformanceTest_Int_Static_toInt_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = 100;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Static_toInt_1400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toInt',
        'static toInt(value: int): int', arkTsAveragedTime);
      expect(res1 === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Static_toString_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = (100).toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Static_toString_1500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toString',
        'static toString(v: int): string', arkTsAveragedTime);
      expect(res1 === '100').assertTrue();
      done();
    })

    it('PerformanceTest_Int_Static_parseInt_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = parseInt('100', 10);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Static_parseInt_1600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'parseInt',
        'static parseInt(s: String, r: int): int', arkTsAveragedTime);
      expect(res1 === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_toByte_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 100;
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_toByte_1700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toByte',
        'toByte(): byte', arkTsAveragedTime);
      expect(res1 === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_toShort_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 100;
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_toShort_1800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toShort',
        'toShort(): short', arkTsAveragedTime);
      expect(res1 === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_toInt_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 100;
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_toInt_1900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toInt',
        'toInt(): int', arkTsAveragedTime);
      expect(res1 === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_toLong_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 100;
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_toLong_2000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toLong',
        'toLong(): long', arkTsAveragedTime);
      expect(res1 === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_toFloat_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 100;
      let res: number = 1.0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_toFloat_2100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toFloat',
        'toFloat(): float', arkTsAveragedTime);
      expect(res1 === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_toDouble_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 100;
      let res: number = 0.0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_toDouble_2200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toDouble',
        'toDouble(): double', arkTsAveragedTime);
      expect(res1 === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_toChar_2300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 65;
      let res: string = '\u0000';
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = String.fromCharCode(intObj);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_toChar_2300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toChar',
        'toChar(): char', arkTsAveragedTime);
      expect(res1 === 'A').assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_compareTo_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 100;
      let intObj2: number = 200;
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj < intObj2 ? -1 : (intObj > intObj2 ? 1 : 0);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_compareTo_2400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'compareTo',
        'compareTo(other: Int): int', arkTsAveragedTime);
      expect(res1 === -1).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_equals_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 100;
      let intObj2: number = 100;
      let res: boolean = false;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj === intObj2;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: boolean = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_equals_2500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'equals',
        'equals(other: Any): boolean', arkTsAveragedTime);
      expect(res1 === true).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_toString_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 100;
      let res: string = '';
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_toString_2600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toString',
        'toString(): String', arkTsAveragedTime);
      expect(res1 === '100').assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_toString_radix_2700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 100;
      let res: string = '';
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj.toString(16);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_toString_radix_2700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toString',
        'toString(radix: number): string', arkTsAveragedTime);
      expect(res1 === '64').assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_add_2900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 100;
      let intObj2: number = 200;
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj + intObj2;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_add_2900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'add',
        'add(other: Int): Int', arkTsAveragedTime);
      expect(res1 === 300).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_sub_3000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 200;
      let intObj2: number = 100;
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj - intObj2;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_sub_3000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'sub',
        'sub(other: Int): Int', arkTsAveragedTime);
      expect(res1 === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_mul_3100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 10;
      let intObj2: number = 20;
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj * intObj2;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_mul_3100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'mul',
        'mul(other: Int): Int', arkTsAveragedTime);
      expect(res1 === 200).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_div_3200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 200;
      let intObj2: number = 10;
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = Math.trunc(intObj / intObj2);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_div_3200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'div',
        'div(other: Int): Int', arkTsAveragedTime);
      expect(res1 === 20).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_isLessThan_3300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 100;
      let intObj2: number = 200;
      let res: boolean = false;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj < intObj2;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: boolean = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_isLessThan_3300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'isLessThan',
        'isLessThan(other: Int): boolean', arkTsAveragedTime);
      expect(res1 === true).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_isLessEqualThan_3400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 100;
      let intObj2: number = 100;
      let res: boolean = false;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj <= intObj2;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: boolean = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_isLessEqualThan_3400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'isLessEqualThan',
        'isLessEqualThan(other: Int): boolean', arkTsAveragedTime);
      expect(res1 === true).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_isGreaterThan_3500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 200;
      let intObj2: number = 100;
      let res: boolean = false;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj > intObj2;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: boolean = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_isGreaterThan_3500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'isGreaterThan',
        'isGreaterThan(other: Int): boolean', arkTsAveragedTime);
      expect(res1 === true).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_isGreaterEqualThan_3600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 100;
      let intObj2: number = 100;
      let res: boolean = false;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj >= intObj2;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: boolean = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_isGreaterEqualThan_3600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'isGreaterEqualThan',
        'isGreaterEqualThan(other: Int): boolean', arkTsAveragedTime);
      expect(res1 === true).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_toLocaleString_3700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 123;
      let res: string = '';
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj.toLocaleString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_toLocaleString_3700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toLocaleString',
        'toLocaleString(locales?: Intl.LocalesArgument, options?: Intl.NumberFormatOptions): String', arkTsAveragedTime);
      expect(res1.length > 0).assertTrue();
      done();
    })

    it('PerformanceTest_Int_Instance_toLocaleString_3800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let intObj: number = 1234567;
      let res: string = '';
      let options: Intl.NumberFormatOptions = {
        style: 'currency',
        currency: 'USD'
      };
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = intObj.toLocaleString('en-US', options);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Int_Instance_toLocaleString_3800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int', 'toLocaleString',
        'toLocaleString(locales?: Intl.LocalesArgument, options?: Intl.NumberFormatOptions): String', arkTsAveragedTime);
      expect(res1.length > 0).assertTrue();
      done();
    })

  })
}