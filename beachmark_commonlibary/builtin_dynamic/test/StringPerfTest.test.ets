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
  expect,
  TestType,
  Size,
  Level,
  beforeAll,
  afterAll,
  beforeEach,
  afterEach
} from "@ohos/hypium";
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function StringPerfTest(): void {
  describe('StringPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_String_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let str: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        str = "";
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = str;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'constructor', 'constructor(value?: any): string', arkTsAveragedTime);
      expect(str === "").assertTrue();
      done();
    })

    it('PerformanceTest_String_constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let str: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        str = "Hello";
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = str;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'constructor', 'constructor(value?: any): string', arkTsAveragedTime);
      expect(str === "Hello").assertTrue();
      done();
    })

    it('PerformanceTest_String_constructor_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let obj: object = new Object();
      let str: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        str = String(obj);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = str;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_constructor_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'constructor', 'constructor(value?: any): string', arkTsAveragedTime);
      expect(str !== "").assertTrue();
      done();
    })

    it('PerformanceTest_String_invoke_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = String();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_invoke_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'constructor', 'constructor(value?: any): string', arkTsAveragedTime);
      expect(res === "").assertTrue();
      done();
    })

    it('PerformanceTest_String_invoke_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = String(true);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_invoke_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'constructor', 'constructor(value?: any): string', arkTsAveragedTime);
      expect(res === "true").assertTrue();
      done();
    })

    it('PerformanceTest_String_invoke_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = String(123);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_invoke_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'constructor', 'constructor(value?: any): string', arkTsAveragedTime);
      expect(res === "123").assertTrue();
      done();
    })

    it('PerformanceTest_String_get_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "hello";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.charAt(0);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_get_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'charAt', 'charAt(index: number): string', arkTsAveragedTime);
      expect(res === "h").assertTrue();
      done();
    })

    it('PerformanceTest_String_equals_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString1: string = "";
      let testString2: string = "";
      let res: boolean = false;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString1 === testString2;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_equals_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'equals', 'equals(other: any): boolean', arkTsAveragedTime);
      expect(res === true).assertTrue();
      done();
    })

    it('PerformanceTest_String_getLength_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "";
      let res: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.length;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_getLength_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'length', 'get length(): number', arkTsAveragedTime);
      expect(res === 0).assertTrue();
      done();
    })

    it('PerformanceTest_String_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "";
      let res: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.length;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'length', 'get length(): number', arkTsAveragedTime);
      expect(res === 0).assertTrue();
      done();
    })

    it('PerformanceTest_String_charAt_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "hello";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.charAt(0);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_charAt_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'charAt', 'charAt(index: number): string', arkTsAveragedTime);
      expect(res === "h").assertTrue();
      done();
    })

    it('PerformanceTest_String_isEmpty_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "";
      let res: boolean = false;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.length === 0;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_isEmpty_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'isEmpty', 'isEmpty(): boolean', arkTsAveragedTime);
      expect(res === true).assertTrue();
      done();
    })

    it('PerformanceTest_String_codePointAt_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "hello";
      let res: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.charCodeAt(0);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_codePointAt_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'charCodeAt', 'charCodeAt(index: number): number', arkTsAveragedTime);
      expect(res === 104).assertTrue();
      done();
    })

    it('PerformanceTest_String_getChars_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "hello";
      let res: string[] = [];
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.split('');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_getChars_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'split', 'split(separator: string): string[]', arkTsAveragedTime);
      expect(res.length === 5).assertTrue();
      done();
    })

    it('PerformanceTest_String_getChars_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "0123456789";
      let res: string[] = [];
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.slice(0, 5).split('');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_getChars_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'split', 'split(separator: string): string[]', arkTsAveragedTime);
      expect(res.length === 5).assertTrue();
      done();
    })

    it('PerformanceTest_String_compareTo_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString1: string = "hello";
      let testString2: string = "hello";
      let res: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString1.localeCompare(testString2);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_compareTo_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'localeCompare', 'localeCompare(other: string): number', arkTsAveragedTime);
      expect(res === 0).assertTrue();
      done();
    })

    it('PerformanceTest_String_startsWith_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let prefix: string = "Hello";
      let res: boolean = false;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.startsWith(prefix);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_startsWith_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'startsWith', 'startsWith(prefix: string, fromIndex?: number): boolean', arkTsAveragedTime);
      expect(res === true).assertTrue();
      done();
    })

    it('PerformanceTest_String_endsWith_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let suffix: string = "World";
      let res: boolean = false;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.endsWith(suffix);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_endsWith_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'endsWith', 'endsWith(suffix: string, endPosition?: number): boolean', arkTsAveragedTime);
      expect(res === true).assertTrue();
      done();
    })

    it('PerformanceTest_String_indexOf_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let searchChar: string = "o";
      let res: number = -1;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.indexOf(searchChar);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_indexOf_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'indexOf', 'indexOf(searchString: string, position?: number): number', arkTsAveragedTime);
      expect(res === 4).assertTrue();
      done();
    })

    it('PerformanceTest_String_indexOf_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let searchChar: string = "o";
      let fromIndex: number = 5;
      let res: number = -1;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.indexOf(searchChar, fromIndex);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_indexOf_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'indexOf', 'indexOf(searchString: string, position?: number): number', arkTsAveragedTime);
      expect(res === 7).assertTrue();
      done();
    })

    it('PerformanceTest_String_indexOf_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let searchStr: string = "World";
      let res: number = -1;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.indexOf(searchStr);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_indexOf_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'indexOf', 'indexOf(searchString: string, position?: number): number', arkTsAveragedTime);
      expect(res === 6).assertTrue();
      done();
    })

    it('PerformanceTest_String_lastIndexOf_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "oops!";
      let searchChar: string = "o";
      let res: number = -1;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.lastIndexOf(searchChar);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_lastIndexOf_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'lastIndexOf', 'lastIndexOf(searchString: string, position?: number): number', arkTsAveragedTime);
      expect(res === 1).assertTrue();
      done();
    })

    it('PerformanceTest_String_lastIndexOf_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "go go go!";
      let searchChar: string = "o";
      let fromIndex: number = 5;
      let res: number = -1;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.lastIndexOf(searchChar, fromIndex);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_lastIndexOf_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'lastIndexOf', 'lastIndexOf(searchString: string, position?: number): number', arkTsAveragedTime);
      expect(res === 4).assertTrue();
      done();
    })

    it('PerformanceTest_String_lastIndexOf_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World!";
      let searchStr: string = "World";
      let res: number = -1;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.lastIndexOf(searchStr);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_lastIndexOf_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'lastIndexOf', 'lastIndexOf(searchString: string, position?: number): number', arkTsAveragedTime);
      expect(res === 6).assertTrue();
      done();
    })

    it('PerformanceTest_String_substring_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.substring(3);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_substring_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'substring', 'substring(start: number, end?: number): string', arkTsAveragedTime);
      expect(res === "lo").assertTrue();
      done();
    })

    it('PerformanceTest_String_substring_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.substring(3, 8);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_substring_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'substring', 'substring(start: number, end?: number): string', arkTsAveragedTime);
      expect(res === "lo").assertTrue();
      done();
    })

    it('PerformanceTest_String_concat_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let suffix: string = "!";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString + suffix;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_concat_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'concat', 'concat(...strings: string[]): string', arkTsAveragedTime);
      expect(res === "Hello!").assertTrue();
      done();
    })

    it('PerformanceTest_String_concat_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let s1: string = "!";
      let s2: string = "!";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString + s1 + s2;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_concat_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'concat', 'concat(...strings: string[]): string', arkTsAveragedTime);
      expect(res === "Hello!!").assertTrue();
      done();
    })

    it('PerformanceTest_String_concat_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let s1: string = "!";
      let s2: string = "!";
      let s3: string = "!";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString + s1 + s2 + s3;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_concat_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'concat', 'concat(...strings: string[]): string', arkTsAveragedTime);
      expect(res === "Hello!!!").assertTrue();
      done();
    })

    it('PerformanceTest_String_replaceChar_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.replaceAll("l", "L");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_replaceChar_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'replaceAll', 'replaceAll(searchValue: string, replaceValue: string): string', arkTsAveragedTime);
      expect(res === "HeLLo").assertTrue();
      done();
    })

    it('PerformanceTest_String_contains_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let searchStr: string = "World";
      let res: boolean = false;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.includes(searchStr);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_contains_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'includes', 'includes(searchString: string, position?: number): boolean', arkTsAveragedTime);
      expect(res === true).assertTrue();
      done();
    })

    it('PerformanceTest_String_split_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "1 2 3 4 5";
      let sep: string = " ";
      let res: string[] = [];
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.split(sep);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_split_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'split', 'split(separator: string, limit?: number): string[]', arkTsAveragedTime);
      expect(res.length === 5).assertTrue();
      done();
    })

    it('PerformanceTest_String_toLowerCase_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let upper: string = "HELLO WORLD";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = upper.toLowerCase();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_toLowerCase_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'toLowerCase', 'toLowerCase(): string', arkTsAveragedTime);
      expect(res === "hello world").assertTrue();
      done();
    })

    it('PerformanceTest_String_toUpperCase_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.toUpperCase();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_toUpperCase_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'toUpperCase', 'toUpperCase(): string', arkTsAveragedTime);
      expect(res === "HELLO").assertTrue();
      done();
    })

    it('PerformanceTest_String_trim_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let spaced: string = "  Hello World  ";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = spaced.trim();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_trim_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'trim', 'trim(): string', arkTsAveragedTime);
      expect(res === "Hello World").assertTrue();
      done();
    })

    it('PerformanceTest_String_trimLeft_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let spaced: string = "  Hello World  ";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = spaced.trimStart();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_trimLeft_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'trimStart', 'trimStart(): string', arkTsAveragedTime);
      expect(res === "Hello World  ").assertTrue();
      done();
    })

    it('PerformanceTest_String_trimRight_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let spaced: string = "  Hello World  ";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = spaced.trimEnd();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_trimRight_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'trimEnd', 'trimEnd(): string', arkTsAveragedTime);
      expect(res === "  Hello World").assertTrue();
      done();
    })

    it('PerformanceTest_String_padLeft_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let padChar: string = "*";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.padStart(15, padChar);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_padLeft_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'padStart', 'padStart(targetLength: number, padString?: string): string', arkTsAveragedTime);
      expect(res.length === 15).assertTrue();
      done();
    })

    it('PerformanceTest_String_padRight_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let padChar: string = "*";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.padEnd(15, padChar);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_padRight_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'padEnd', 'padEnd(targetLength: number, padString?: string): string', arkTsAveragedTime);
      expect(res.length === 15).assertTrue();
      done();
    })

    it('PerformanceTest_String_repeat_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "x";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.repeat(3);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_repeat_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'repeat', 'repeat(count: number): string', arkTsAveragedTime);
      expect(res === "xxx").assertTrue();
      done();
    })

    it('PerformanceTest_String_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.toString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'toString', 'toString(): string', arkTsAveragedTime);
      expect(res === "Hello").assertTrue();
      done();
    })

    it('PerformanceTest_String_charCodeAt_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let res: number = -1;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.charCodeAt(0);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_charCodeAt_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'charCodeAt', 'charCodeAt(index: number): number', arkTsAveragedTime);
      expect(res === 72).assertTrue();
      done();
    })

    it('PerformanceTest_String_valueOf_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.valueOf();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_valueOf_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'valueOf', 'valueOf(): string', arkTsAveragedTime);
      expect(res === "Hello").assertTrue();
      done();
    })

    it('PerformanceTest_String_includes_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let searchStr: string = "World";
      let res: boolean = false;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.includes(searchStr);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_includes_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'includes', 'includes(searchString: string, position?: number): boolean', arkTsAveragedTime);
      expect(res === true).assertTrue();
      done();
    })

    it('PerformanceTest_String_padEnd_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.padEnd(15);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_padEnd_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'padEnd', 'padEnd(targetLength: number, padString?: string): string', arkTsAveragedTime);
      expect(res.length === 15).assertTrue();
      done();
    })

    it('PerformanceTest_String_padEnd_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let padChar: string = "*";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.padEnd(15, padChar);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_padEnd_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'padEnd', 'padEnd(targetLength: number, padString?: string): string', arkTsAveragedTime);
      expect(res === "Hello**********").assertTrue();
      done();
    })

    it('PerformanceTest_String_padEnd_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let fill: string = "*-";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.padEnd(15, fill);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_padEnd_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'padEnd', 'padEnd(targetLength: number, padString?: string): string', arkTsAveragedTime);
      expect(res.length === 15).assertTrue();
      done();
    })

    it('PerformanceTest_String_padStart_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let padChar: string = "*";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.padStart(15, padChar);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_padStart_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'padStart', 'padStart(targetLength: number, padString?: string): string', arkTsAveragedTime);
      expect(res === "**********Hello").assertTrue();
      done();
    })

    it('PerformanceTest_String_padStart_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello";
      let fill: string = "*-";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.padStart(15, fill);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_padStart_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'padStart', 'padStart(targetLength: number, padString?: string): string', arkTsAveragedTime);
      expect(res.length === 15).assertTrue();
      done();
    })

    it('PerformanceTest_String_substr_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.substr(3, 5);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_substr_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'substr', 'substr(start: number, length?: number): string', arkTsAveragedTime);
      expect(res === "lo Wo").assertTrue();
      done();
    })

    it('PerformanceTest_String_trimEnd_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let spaced: string = "  Hello World  ";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = spaced.trimEnd();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_trimEnd_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'trimEnd', 'trimEnd(): string', arkTsAveragedTime);
      expect(res === "  Hello World").assertTrue();
      done();
    })

    it('PerformanceTest_String_trimStart_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let spaced: string = "  Hello World  ";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = spaced.trimStart();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_trimStart_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'trimStart', 'trimStart(): string', arkTsAveragedTime);
      expect(res === "Hello World  ").assertTrue();
      done();
    })

    it('PerformanceTest_String_slice_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.slice(3, 8);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_slice_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'slice', 'slice(start?: number, end?: number): string', arkTsAveragedTime);
      expect(res === "lo Wo").assertTrue();
      done();
    })

    it('PerformanceTest_String_replace_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let searchStr: string = "World";
      let replaceStr: string = "Universe";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.replace(searchStr, replaceStr);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_replace_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'replace', 'replace(searchValue: string | RegExp, replaceValue: string): string', arkTsAveragedTime);
      expect(res === "Hello Universe").assertTrue();
      done();
    })

    it('PerformanceTest_String_replaceAll_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testStr: string = "Hello Hello Hello";
      let searchStr: string = "Hello";
      let replaceStr: string = "Hi";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testStr.replaceAll(searchStr, replaceStr);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_replaceAll_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'replaceAll', 'replaceAll(searchValue: string, replaceValue: string): string', arkTsAveragedTime);
      expect(res === "Hi Hi Hi").assertTrue();
      done();
    })

    it('PerformanceTest_String_join_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: string[] = ["A", "B", "C"];
      let delim: string = ", ";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.join(delim);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_join_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'join', 'join(separator?: string): string', arkTsAveragedTime);
      expect(res === "A, B, C").assertTrue();
      done();
    })

    it('PerformanceTest_String_join_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: string[] = ["A", "B", "C"];
      let delim: string = ", ";
      let prefix: string = "[";
      let suffix: string = "]";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = prefix + arr.join(delim) + suffix;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_join_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'join', 'join(separator?: string): string', arkTsAveragedTime);
      expect(res === "[A, B, C]").assertTrue();
      done();
    })

    it('PerformanceTest_String_fromCharCode_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = String.fromCharCode(65);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_fromCharCode_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'fromCharCode', 'fromCharCode(...codes: number[]): string', arkTsAveragedTime);
      expect(res === "A").assertTrue();
      done();
    })

    it('PerformanceTest_String_fromCharCode_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = String.fromCharCode(65, 66, 67);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_fromCharCode_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'fromCharCode', 'fromCharCode(...codes: number[]): string', arkTsAveragedTime);
      expect(res === "ABC").assertTrue();
      done();
    })

    it('PerformanceTest_String_localeCompare_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "hello";
      let other: string = "world";
      let res: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.localeCompare(other);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_localeCompare_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'localeCompare', 'localeCompare(other: string): number', arkTsAveragedTime);
      expect(res !== 0).assertTrue();
      done();
    })

    it('PerformanceTest_String_contains_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let searchStr: string = "World";
      let fromIdx: number = 6;
      let res: boolean = false;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.includes(searchStr, fromIdx);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_contains_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'includes', 'includes(searchString: string, position?: number): boolean', arkTsAveragedTime);
      expect(res === true).assertTrue();
      done();
    })

    it('PerformanceTest_String_split_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "1,2,3,4,5";
      let sep: string = ",";
      let limit: number = 3;
      let res: string[] = [];
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.split(sep, limit);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_split_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'split', 'split(separator: string, limit?: number): string[]', arkTsAveragedTime);
      expect(res.length === 3).assertTrue();
      done();
    })

    it('PerformanceTest_String_replace_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello123World456";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {

        res = testString.replace("123", "XXX");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_replace_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'replace', 'replace(searchValue: string | RegExp, replaceValue: string): string', arkTsAveragedTime);
      expect(res === "HelloXXXWorld456").assertTrue();
      done();
    })

    it('PerformanceTest_String_localeCompare_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "hello";
      let other: string = "world";
      let res: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.localeCompare(other);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_localeCompare_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'localeCompare', 'localeCompare(that: string, locales?: string | string[], options?: Intl.CollatorOptions): number', arkTsAveragedTime);
      expect(res !== 0).assertTrue();
      done();
    })

    it('PerformanceTest_String_toLocaleString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.toLocaleString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_toLocaleString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'toLocaleString', 'toLocaleString(): string', arkTsAveragedTime);
      expect(res === "Hello World").assertTrue();
      done();
    })

    it('PerformanceTest_String_toLocaleString_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.toLocaleString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_toLocaleString_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'toLocaleString', 'toLocaleString(): string', arkTsAveragedTime);
      expect(res === "Hello World").assertTrue();
      done();
    })

    it('PerformanceTest_String_empty_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "";
      let res: number = testString.length;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.length;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_empty_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'length', 'get length(): number', arkTsAveragedTime);
      expect(res === 0).assertTrue();
      done();
    })

    it('PerformanceTest_String_long_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let longStr: string = "a".repeat(10000);
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT / 100; i++) {
        res = longStr + "suffix";
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / (BASE_COUNT / 100);
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_long_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'concat', 'concat(...strings: string[]): string', arkTsAveragedTime);
      expect(res.length > 10000).assertTrue();
      done();
    })

    it('PerformanceTest_String_concat_multi_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let parts: string[] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"];
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT / 10; i++) {
        res = "";
        for (let p of parts) {
          res += p;
        }
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / (BASE_COUNT / 10);
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_concat_multi_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'concat', 'concat(...strings: string[]): string', arkTsAveragedTime);
      expect(res === "abcdefghij").assertTrue();
      done();
    })

    it('PerformanceTest_String_template_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let name: string = "World";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = `Hello ${name}`;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_template_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'template', 'template literal', arkTsAveragedTime);
      expect(res === "Hello World").assertTrue();
      done();
    })

    it('PerformanceTest_String_search_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello World";
      let searchStr: string = "World";
      let res: number = -1;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.indexOf(searchStr);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_search_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'indexOf', 'indexOf(searchString: string, position?: number): number', arkTsAveragedTime);
      expect(res === 6).assertTrue();
      done();
    })

    it('PerformanceTest_String_match_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "Hello123World456";
      let regex: RegExp = /[0-9]+/;
      let res: RegExpMatchArray | null = null;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.match(regex);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_match_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'match', 'match(regexp: string | RegExp): RegExpMatchArray | null', arkTsAveragedTime);
      expect(res !== null).assertTrue();
      done();
    })

    it('PerformanceTest_String_parseInt_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let numStr: string = "12345";
      let res: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = parseInt(numStr);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_parseInt_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'global', 'parseInt', 'parseInt(string: string, radix?: number): number', arkTsAveragedTime);
      expect(res === 12345).assertTrue();
      done();
    })

    it('PerformanceTest_String_parseFloat_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let numStr: string = "123.45";
      let res: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = parseFloat(numStr);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_parseFloat_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'global', 'parseFloat', 'parseFloat(string: string): number', arkTsAveragedTime);
      expect(Math.abs(res - 123.45) < 0.01).assertTrue();
      done();
    })

    it('PerformanceTest_String_large_index_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let largeStr: string = "x".repeat(100000);
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT / 1000; i++) {
        res = largeStr.charAt(50000);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / (BASE_COUNT / 1000);
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_large_index_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'charAt', 'charAt(index: number): string', arkTsAveragedTime);
      expect(res === "x").assertTrue();
      done();
    })

    it('PerformanceTest_String_unicode_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let unicodeStr: string = "你好世界🌍";
      let res: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT / 100; i++) {
        res = unicodeStr.length;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / (BASE_COUNT / 100);
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_unicode_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'length', 'get length(): number', arkTsAveragedTime);
      expect(res > 0).assertTrue();
      done();
    })

    it('PerformanceTest_String_literal_vs_object_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res1: string = "";
      let res2: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res1 = "literal";
        res2 = String("object");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_literal_vs_object_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'constructor', 'constructor(value?: any): string', arkTsAveragedTime);
      expect(res1 === "literal").assertTrue();
      expect(res2 === "object").assertTrue();
      done();
    })

    it('PerformanceTest_String_intern_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let str1: string = "test";
      let str2: string = "test";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        let result = (str1 === str2);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_intern_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'equals', 'equals(other: any): boolean', arkTsAveragedTime);
      expect(true).assertTrue();
      done();
    })

    it('PerformanceTest_String_contains_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let testString: string = "The quick brown fox jumps over the lazy dog";
      let searchStr: string = "fox";
      let res: boolean = false;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testString.includes(searchStr);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_contains_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'includes', 'includes(searchString: string, position?: number): boolean', arkTsAveragedTime);
      expect(res === true).assertTrue();
      done();
    })

    it('PerformanceTest_String_trim_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let spaced: string = "\t\n Hello World \n\t";
      let res: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = spaced.trim();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_String_trim_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'String', 'trim', 'trim(): string', arkTsAveragedTime);
      expect(res === "Hello World").assertTrue();
      done();
    })
  })
}