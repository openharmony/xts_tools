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
import { systemDateTime } from '@kit.BasicServicesKit';
import performance from './Performance.util';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function CharPerfTest(): void {
  describe('CharPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_Char_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'constructor',
          'function constructor()', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Constructor_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'constructor',
          'function constructor(value: char)', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_compare_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_compare_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'compare',
          'static compare(lhs: Char, rhs: Char): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_toByte_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_toByte_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toByte',
          'static toByte(value: char): byte', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_toShort_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_toShort_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toShort',
          'static toShort(value: char): short', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_toInt_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_toInt_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toInt',
          'static toInt(value: char): int', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_toLong_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_toLong_0800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toLong',
          'static toLong(value: char): long', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_toFloat_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_toFloat_0900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toFloat',
          'static toFloat(value: char): float', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_toDouble_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_toDouble_1000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toDouble',
          'static toDouble(value: char): double', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_toString_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_toString_1100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toString',
          'static toString(value: char): string', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_toChar_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_toChar_1200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toChar',
          'static toChar(value: char): char', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_isInBasicMultilingualPlane_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_isInBasicMultilingualPlane_1300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isInBasicMultilingualPlane',
          'static isInBasicMultilingualPlane(value: char): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_isInBasicMultilingualPlane_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_isInBasicMultilingualPlane_1400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isInBasicMultilingualPlane',
          'static isInBasicMultilingualPlane(value: UTF_16_CodePoint): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_isValidCodePoint_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_isValidCodePoint_1500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isValidCodePoint',
          'static isValidCodePoint(codePoint: UTF_16_CodePoint): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_codeUnitsToEncode_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_codeUnitsToEncode_1600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'codeUnitsToEncode',
          'static codeUnitsToEncode(value: UTF_16_CodePoint): int', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_isHighSurrogate_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_isHighSurrogate_1700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isHighSurrogate',
          'static isHighSurrogate(value: char): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_isLowSurrogate_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_isLowSurrogate_1800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isLowSurrogate',
          'static isLowSurrogate(value: char): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_getHighSurrogate_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_getHighSurrogate_1900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'getHighSurrogate',
          'static getHighSurrogate(value: UTF_16_CodePoint): char', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_getLowSurrogate_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_getLowSurrogate_2000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'getLowSurrogate',
          'static getLowSurrogate(value: UTF_16_CodePoint): char', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_isPartOfSurrogatePair_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_isPartOfSurrogatePair_2100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isPartOfSurrogatePair',
          'static isPartOfSurrogatePair(value: char): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_charsToCodePoint_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_charsToCodePoint_2200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'charsToCodePoint',
          'static charsToCodePoint(highValue: char, lowValue: char): UTF_16_CodePoint', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_isBinDigit_2300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_isBinDigit_2300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isBinDigit',
          'static isBinDigit(value: char): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_isDecDigit_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_isDecDigit_2400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isDecDigit',
          'static isDecDigit(value: char): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_isHexDigit_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_isHexDigit_2500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isHexDigit',
          'static isHexDigit(value: char): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_isLetter_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_isLetter_2600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isLetter',
          'static isLetter(value: char): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_isUpperCase_2700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_isUpperCase_2700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isUpperCase',
          'static isUpperCase(value: char): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_isLowerCase_2800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_isLowerCase_2800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isLowerCase',
          'static isLowerCase(value: char): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_toUpperCase_2900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_toUpperCase_2900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toUpperCase',
          'static toUpperCase(value: char): char', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_toLowerCase_3000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_toLowerCase_3000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toLowerCase',
          'static toLowerCase(value: char): char', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_isWhiteSpace_3100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_isWhiteSpace_3100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isWhiteSpace',
          'static isWhiteSpace(value: char): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_Properties_3200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_Properties_3200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'CHAR_BIT_SIZE',
          'static readonly CHAR_BIT_SIZE: int', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_Properties_3300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_Properties_3300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'MAX_CODE_POINT',
          'static readonly MAX_CODE_POINT: int', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_Properties_3400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_Properties_3400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'MIN_VALUE',
          'static readonly MIN_VALUE: char', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_Properties_3500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_Properties_3500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'MAX_VALUE',
          'static readonly MAX_VALUE: char', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_toByte_3600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_toByte_3600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toByte',
          'toByte(): byte', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_toShort_3700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_toShort_3700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toShort',
          'toShort(): short', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_toInt_3800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_toInt_3800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toInt',
          'toInt(): int', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_toLong_3900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_toLong_3900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toLong',
          'toLong(): long', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_toFloat_4000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_toFloat_4000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toFloat',
          'toFloat(): float', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_toDouble_4100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_toDouble_4100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toDouble',
          'toDouble(): double', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_toChar_4200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_toChar_4200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toChar',
          'toChar(): char', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_toString_4300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_toString_4300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toString',
          'toString(): string', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_equals_4400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_equals_4400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'equals',
          'equals(other: Any): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_compareTo_4500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_compareTo_4500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'compareTo',
          'compareTo(other: Char): int', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_isInBasicMultilingualPlane_4600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_isInBasicMultilingualPlane_4600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isInBasicMultilingualPlane',
          'isInBasicMultilingualPlane(): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_isPartOfSurrogatePair_4700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_isPartOfSurrogatePair_4700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isPartOfSurrogatePair',
          'isPartOfSurrogatePair(): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_isBinDigit_4800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_isBinDigit_4800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isBinDigit',
          'isBinDigit(): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_isDecDigit_4900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_isDecDigit_4900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isDecDigit',
          'isDecDigit(): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_isHexDigit_5000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_isHexDigit_5000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isHexDigit',
          'isHexDigit(): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_isLetter_5100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_isLetter_5100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isLetter',
          'isLetter(): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_isUpperCase_5200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_isUpperCase_5200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isUpperCase',
          'isUpperCase(): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_isLowerCase_5300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_toUpperCase_5300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isLowerCase',
          'isLowerCase(): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_toUpperCase_5400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_toUpperCase_5400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toUpperCase',
          'toUpperCase(): Char', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_toLowerCase_5500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_toLowerCase_5500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toLowerCase',
          'toLowerCase(): Char', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_isWhiteSpace_5600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_isWhiteSpace_5600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'isWhiteSpace',
          'isWhiteSpace(): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Instance_toStringWithRadix_5700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Instance_toStringWithRadix_5700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'toString',
          'toString(radix: int): string', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_Properties_5800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_Properties_5800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'HIGH_SURROGATE_MIN',
          'static readonly HIGH_SURROGATE_MIN: char', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_Properties_5900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_Properties_5900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'HIGH_SURROGATE_MAX',
          'static readonly HIGH_SURROGATE_MAX: char', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_Properties_6000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_Properties_6000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'LOW_SURROGATE_MIN',
          'static readonly LOW_SURROGATE_MIN: char', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_Char_Static_Properties_6100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 'test';
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = 'test';
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Char_Static_Properties_6100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Char', 'LOW_SURROGATE_MAX',
          'static readonly LOW_SURROGATE_MAX: char', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

  })
}