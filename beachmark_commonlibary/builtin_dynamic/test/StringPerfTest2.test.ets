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

export default function StringPerfTest2(): void {
  describe('StringPerfTest2', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {

    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_String_constructor_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let data: string[] = ['H', 'e', 'l', 'l', 'o'];
      let str: string = 'Hello';
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        str = data[0] + data[1] + data[2] + data[3] + data[4];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = str;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_constructor_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'constructor',
        'constructor(data: ValueArray<char>)',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_invoke_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = (127).toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_invoke_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        '$_invoke',
        '$_invoke(value: byte): string',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_invoke_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = 'A';
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_invoke_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        '$_invoke',
        '$_invoke(value: char): string',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_invoke_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = (100).toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_invoke_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        '$_invoke',
        '$_invoke(value: short): string',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_invoke_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = (100).toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_invoke_0700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        '$_invoke',
        '$_invoke(value: long): string',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_invoke_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = (1.5).toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_invoke_0800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        '$_invoke',
        '$_invoke(value: float): string',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_invoke_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = (1.5).toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_invoke_0900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        '$_invoke',
        '$_invoke(value: double): string',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_invoke_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = true.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_invoke_1000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        '$_invoke',
        '$_invoke(value: Any): string',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_codePointCount_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.substring(0, 5).length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_codePointCount_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'codePointCount',
        'codePointCount(begin: number, end: number): number',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_concat_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let s1: string = " ";
      let s2: string = "World";
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.concat(s1, s2);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_concat_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'concat',
        'concat(...strings: String[]): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_split_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello,World,Test";
      let re: RegExp = new RegExp(",");
      let res: string[] = [];
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.split(re);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string[] = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_split_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'split',
        'split(separator: RegExp, limit?: int): String[]',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_split_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello,World,Test";
      let sep: string | RegExp = ",";
      let res: string[] = [];
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.split(sep);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string[] = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_split_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'split',
        'split(separator: StringOrRegExp, limit?: int): String[]',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_trimLeft_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "xxHelloxx";
      let removeChars: string[] = ['x', 'o'];
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.replace(new RegExp('^[' + removeChars.join('') + ']+'), '');
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_trimLeft_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'trimLeft',
        'trimLeft(remove: char[]): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_trimRight_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "xxHelloxx";
      let removeChars: string[] = ['x', 'o'];
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.replace(new RegExp('[' + removeChars.join('') + ']+$'), '');
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_trimRight_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'trimRight',
        'trimRight(remove: char[]): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_big_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = '<big>' + testString + '</big>';
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_big_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'big',
        'big(): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_small_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = '<small>' + testString + '</small>';
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_small_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'small',
        'small(): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_blink_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = '<blink>' + testString + '</blink>';
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_blink_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'blink',
        'blink(): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_strike_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = '<strike>' + testString + '</strike>';
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_strike_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'strike',
        'strike(): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_sub_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = '<sub>' + testString + '</sub>';
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_sub_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'sub',
        'sub(): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_sup_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = '<sup>' + testString + '</sup>';
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_sup_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'sup',
        'sup(): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_iterator_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let res: IterableIterator<string> = testString[Symbol.iterator]();
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString[Symbol.iterator]();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: IterableIterator<string> = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_iterator_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        '$_iterator',
        '$_iterator(): IterableIterator<String>',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_replace_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let re: RegExp = new RegExp("World");
      let replaceStr: string = "Universe";
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.replace(re, replaceStr);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_replace_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'replace',
        'replace(searchValue: RegExp, replaceValue: String): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_replace_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let sv: string | RegExp = "World";
      let replaceStr: string = "Universe";
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.replace(sv, replaceStr);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_replace_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'replace',
        'replace(searchValue: StringOrRegExp, replaceValue: String): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_replace_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let re: RegExp = new RegExp("World");
      let replacer = (substr: string, args: Object[]): string => { return "Replaced"; };
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.replace(re, replacer);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_replace_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'replace',
        'replace(searchValue: RegExp, replacer: (substr: String, args: Object[]) => String): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_replace_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let searchStr: string = "World";
      let replacer = (substr: string, args: Object[]): string => { return "Replaced"; };
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.replace(searchStr, replacer);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_replace_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'replace',
        'replace(searchValue: String, replacer: (substr: String, args: Object[]) => String): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_replace_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let sv: string | RegExp = "World";
      let replacer = (substr: string, args: Object[]): string => { return "Replaced"; };
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.replace(sv, replacer);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_replace_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'replace',
        'replace(searchValue: StringOrRegExp, replacer: (substr: String, args: Object[]) => String): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_replaceAll_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testStr: string = "Hello Hello Hello";
      let re: RegExp = new RegExp("Hello", "g");
      let replaceStr: string = "Hi";
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testStr.replaceAll(re, replaceStr);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_replaceAll_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'replaceAll',
        'replaceAll(searchValue: RegExp, replaceValue: String): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_replaceAll_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testStr: string = "Hello Hello Hello";
      let sv: string | RegExp = "Hello";
      let replaceStr: string = "Hi";
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testStr.replaceAll(sv, replaceStr);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_replaceAll_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'replaceAll',
        'replaceAll(searchValue: StringOrRegExp, replaceValue: String): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_replaceAll_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testStr: string = "Hello Hello Hello";
      let re: RegExp = new RegExp("Hello", "g");
      let replacer = (substr: string, args: Object[]): string => { return "Hi"; };
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testStr.replaceAll(re, replacer);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_replaceAll_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'replaceAll',
        'replaceAll(searchValue: RegExp, replacer: (substr: String, args: Object[]) => String): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_replaceAll_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testStr: string = "Hello Hello Hello";
      let searchStr: string = "Hello";
      let replacer = (substr: string, args: Object[]): string => { return "Hi"; };
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testStr.replaceAll(searchStr, replacer);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_replaceAll_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'replaceAll',
        'replaceAll(searchValue: String, replacer: (substr: String, args: Object[]) => String): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_replaceAll_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testStr: string = "Hello Hello Hello";
      let sv: string | RegExp = "Hello";
      let replacer = (substr: string, args: Object[]): string => { return "Hi"; };
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testStr.replaceAll(sv, replacer);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_replaceAll_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'replaceAll',
        'replaceAll(searchValue: StringOrRegExp, replacer: (substr: String, args: Object[]) => String): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_search_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.search("World");
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_search_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'search',
        'search(implicitRegExp: String): int',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_search_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let re: RegExp = new RegExp("World");
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.search(re);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_search_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'search',
        'search(regexp: RegExp): int',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_search_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let re: string | RegExp = new RegExp("World");
      let res: number = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.search(re);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_search_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'search',
        'search(regexp: StringOrRegExp): int',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_toLocaleLowerCase_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "HELLO";
      let locale: string = "en-US";
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.toLocaleLowerCase(locale);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_toLocaleLowerCase_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'toLocaleLowerCase',
        'toLocaleLowerCase(locale: String): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_toLocaleLowerCase_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "HELLO";
      let locales: string[] = ['en-US', 'zh-CN'];
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.toLocaleLowerCase(locales);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_toLocaleLowerCase_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'toLocaleLowerCase',
        'toLocaleLowerCase(locale: String[]): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_toLocaleLowerCase_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "HELLO";
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.toLocaleLowerCase();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_toLocaleLowerCase_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'toLocaleLowerCase',
        'toLocaleLowerCase(): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_toLocaleUpperCase_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "hello";
      let locale: string = "en-US";
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.toLocaleUpperCase();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_toLocaleUpperCase_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'toLocaleUpperCase',
        'toLocaleUpperCase(locale: String): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_toLocaleUpperCase_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "hello";
      let locales: string[] = ['en-US', 'zh-CN'];
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.toLocaleUpperCase();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_toLocaleUpperCase_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'toLocaleUpperCase',
        'toLocaleUpperCase(locale: String[]): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_toLocaleUpperCase_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "hello";
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.toLocaleUpperCase();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_toLocaleUpperCase_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'toLocaleUpperCase',
        'toLocaleUpperCase(): String',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_match_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let res: RegExpMatchArray | null = testString.match("World");
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.match("World");
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: RegExpMatchArray | null = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_match_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'match',
        'match(implicitRegExp: String): RegExpMatchArray | null',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_match_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let re: RegExp = new RegExp("World");
      let res: RegExpMatchArray | null = testString.match(re);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.match(re);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: RegExpMatchArray | null = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_match_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'match',
        'match(regexp: RegExp): RegExpMatchArray | null',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_match_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let re: string | RegExp = new RegExp("World");
      let res: RegExpMatchArray | null = testString.match(re);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.match(re);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: RegExpMatchArray | null = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_match_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'match',
        'match(regexp: StringOrRegExp): RegExpMatchArray | null',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_matchAll_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello Hello Hello";
      let re: RegExp = new RegExp("Hello", "g");
      let res: IterableIterator<RegExpMatchArray> = testString.matchAll(re);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = testString.matchAll(re);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: IterableIterator<RegExpMatchArray> = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_matchAll_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'matchAll',
        'matchAll(reg: RegExp): IterableIterator<RegExpMatchArray>',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_String_getSubstitution_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let matched: string = "Hello";
      let str: string = "Hello World";
      let position: number = 0;
      let captures: string[] = ['capture1', 'capture2'];
      let replacement: string = "$1 $2";
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = replacement.replace('$1', captures[0]).replace('$2', captures[1]);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_getSubstitution_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'String',
        'getSubstitution',
        'getSubstitution(matched: String, str: String, position: int, captures: String[], namedCaptures: Record<String, String | undefined> | undefined, replacement: String): string',
        arkTsAveragedTime
      );
      expect(res1 != null).assertTrue();
      done();
    })

  })
}