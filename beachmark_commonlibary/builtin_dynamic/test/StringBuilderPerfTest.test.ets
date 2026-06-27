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

export default function StringBuilderPerfTest(): void {
  describe('StringBuilderPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    });

    afterAll(() => {
      performance.save('apiPerformance.txt');
    });

    it('PerformanceTest_StringBuilder_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let result: string = "";
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = "";
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder constructor: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'constructor', 'constructor()', arkTsAveragedTime);
        expect(res1 !== null).assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fromChars: string[] = ['a', 'a', 'a'];
        let result: string = fromChars.join('');
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fromChars.join('');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder constructor: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'constructor', 'constructor(fromChars: FixedArray<char>)', arkTsAveragedTime);
        expect(res1 === "aaa").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_constructor_0250', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fromChars: string[] = ['a', 'b', 'c'];
        let result: string = fromChars.join('');
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fromChars.join('');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder constructor: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'constructor', 'constructor(fromChars: ValueArray<char>)', arkTsAveragedTime);
        expect(res1 === "abc").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let fromChars: string[] = ['a', 'b', 'c'];
        let result: string = fromChars.join('');
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = fromChars.join('');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder constructor: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'constructor', 'constructor(fromChars: char[])', arkTsAveragedTime);
        expect(res1 === "abc").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_constructor_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testStr: string = "test";
        let result: string = testStr;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = testStr;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder constructor: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'constructor', 'constructor(s: String)', arkTsAveragedTime);
        expect(res1 === "test").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_stringLength_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sb: string = "test";
        let result: number = sb.length;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = sb.length;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder stringLength: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'stringLength', 'get stringLength(): int', arkTsAveragedTime);
        expect(res1 === 4).assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_concatStrings_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let lhs: string = "Hello";
        let rhs: string = "World";
        let result: string = lhs + rhs;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = lhs + rhs;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder concatStrings: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'concatStrings', 'static concatStrings(lhs: String, rhs: String): String', arkTsAveragedTime);
        expect(res1 === "HelloWorld").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_append_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testStr: string = "test";
        let pool: string[] = new Array<string>(BASE_COUNT);
        for (let j = 0; j < BASE_COUNT; j++) {
          pool[j] = "";
        }
        let result: string = "" + testStr;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pool[i] = result;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder append: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'append', 'append(s: String): StringBuilder', arkTsAveragedTime);
        expect(res1 === "test").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_append_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: boolean = true;
        let pool: string[] = new Array<string>(BASE_COUNT);
        for (let j = 0; j < BASE_COUNT; j++) {
          pool[j] = "";
        }
        let result: string = "" + testValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pool[i] = result;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder append: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'append', 'append(s: String): StringBuilder', arkTsAveragedTime);
        expect(res1 === "true").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_append_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: number = 127;
        let pool: string[] = new Array<string>(BASE_COUNT);
        for (let j = 0; j < BASE_COUNT; j++) {
          pool[j] = "";
        }
        let result: string = "" + testValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pool[i] = result;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder append: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'append', 'append(i: byte): StringBuilder', arkTsAveragedTime);
        expect(res1 === "127").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_append_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: string = 'a';
        let pool: string[] = new Array<string>(BASE_COUNT);
        for (let j = 0; j < BASE_COUNT; j++) {
          pool[j] = "";
        }
        let result: string = "" + testValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pool[i] = result;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder append: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'append', 'append(i: char): StringBuilder', arkTsAveragedTime);
        expect(res1 === "a").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_append_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: number = 32767;
        let pool: string[] = new Array<string>(BASE_COUNT);
        for (let j = 0; j < BASE_COUNT; j++) {
          pool[j] = "";
        }
        let result: string = "" + testValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pool[i] = result;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder append: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'append', 'append(i: short): StringBuilder', arkTsAveragedTime);
        expect(res1 === "32767").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_append_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: number = 2147483647;
        let pool: string[] = new Array<string>(BASE_COUNT);
        for (let j = 0; j < BASE_COUNT; j++) {
          pool[j] = "";
        }
        let result: string = "" + testValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pool[i] = result;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder append: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'append', 'append(i: int): StringBuilder', arkTsAveragedTime);
        expect(res1 === "2147483647").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_append_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: number = 123456789;
        let pool: string[] = new Array<string>(BASE_COUNT);
        for (let j = 0; j < BASE_COUNT; j++) {
          pool[j] = "";
        }
        let result: string = "" + testValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pool[i] = result;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder append: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'append', 'append(i: long): StringBuilder', arkTsAveragedTime);
        expect(res1 === "123456789").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_append_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: number = 3.14159;
        let pool: string[] = new Array<string>(BASE_COUNT);
        for (let j = 0; j < BASE_COUNT; j++) {
          pool[j] = "";
        }
        let result: string = "" + testValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pool[i] = result;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder append: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'append', 'append(i: float): StringBuilder', arkTsAveragedTime);
        expect(res1 === "3.14159").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_append_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: number = 3.141592653589793;
        let pool: string[] = new Array<string>(BASE_COUNT);
        for (let j = 0; j < BASE_COUNT; j++) {
          pool[j] = "";
        }
        let result: string = "" + testValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pool[i] = result;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder append: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'append', 'append(i: double): StringBuilder', arkTsAveragedTime);
        expect(res1 === "3.141592653589793").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_append_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testObj: Object = new Object();
        let pool: string[][] = new Array<string[]>(BASE_COUNT);
        for (let j = 0; j < BASE_COUNT; j++) {
          pool[j] = [];
        }
        let result: string[] = [];

        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          pool[i].push(String(testObj));
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder append: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'append', 'append(o: Object): StringBuilder', arkTsAveragedTime);
        expect(res1 = pool[0]).assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sb: string = "test";
        let result: string = sb;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = sb;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder toString: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'toString', 'override toString(): String', arkTsAveragedTime);
        expect(res1 === "test").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_toString_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: boolean = true;
        let result: string = "" + testValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = "" + testValue;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder toString: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'toString', 'static toString(i: boolean): String', arkTsAveragedTime);
        expect(res1 === "true").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_toString_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: number = 127;
        let result: string = "" + testValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = "" + testValue;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder toString: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'toString', 'static toString(i: byte): String', arkTsAveragedTime);
        expect(res1 === "127").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_toString_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: string = 'a';
        let result: string = testValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = testValue;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder toString: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'toString', 'static toString(i: char): String', arkTsAveragedTime);
        expect(res1 === "a").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_toString_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: number = 32767;
        let result: string = "" + testValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = "" + testValue;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder toString: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'toString', 'static toString(i: short): String', arkTsAveragedTime);
        expect(res1 === "32767").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_toString_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: number = 2147483647;
        let result: string = "" + testValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = "" + testValue;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder toString: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'toString', 'static toString(i: int): String', arkTsAveragedTime);
        expect(res1 === "2147483647").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_toString_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: number = 123456789;
        let result: string = "" + testValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = "" + testValue;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder toString: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'toString', 'static toString(i: long): String', arkTsAveragedTime);
        expect(res1 === "123456789").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_toString_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: number = 3.14159;
        let result: string = "" + testValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = "" + testValue;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder toString: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'toString', 'static toString(f: float): String', arkTsAveragedTime);
        expect(res1 === "3.14159").assertTrue();
        done();
      });

    it('PerformanceTest_StringBuilder_toString_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: number = 3.141592653589793;
        let result: string = "" + testValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = "" + testValue;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest StringBuilder toString: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'StringBuilder', 'toString', 'static toString(d: double): String', arkTsAveragedTime);
        expect(res1 === "3.141592653589793").assertTrue();
        done();
      });
  });
}