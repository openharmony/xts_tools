/*
 * Copyright (C) 2025-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
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
  TestType,
  Size,
  Level,
  beforeEach,
  afterAll
} from "../../../hypium/index";
import performance from './Performance.util';


function createNullValue(): null {
  return null;
}

function createUndefinedValue(): undefined {
  return undefined;
}

function createEmptyObject(): Record<String, Any> {
  return new Record<String, Any>();
}

function createEmptyArray(): Array<Any> {
  return new Array<Any>();
}

function createObjectWithNull(): Record<String, Any> {
  let record = new Record<String, Any>();
  record.set("name", "test");
  record.set("value", null);
  return record;
}

function createObjectWithUndefined(): Record<String, Any> {
  let record = new Record<String, Any>();
  record.set("name", "test");
  record.set("value", undefined);
  return record;
}

function createArrayWithNull(): Array<Any> {
  let arr = new Array<Any>();
  arr.push(1);
  arr.push(null);
  arr.push("string");
  arr.push(null);
  return arr;
}

function createSparseArray(): Array<Any> {
  let arr = new Array<Any>();
  arr.push(1);
  arr.push(null);
  arr.push(null);
  arr.push(null);
  arr.push(null);
  arr.push(2);
  arr.push(null);
  arr.push(null);
  arr.push(null);
  arr.push(3);
  return arr;
}

function createRecordWithNumberValues(): Record<String, Any> {
  let record = new Record<String, Any>();
  record.set("zero", 0);
  record.set("negative", -100);
  record.set("decimal", 3.14159);
  record.set("scientific", 1.23e10);
  return record;
}

function createRecordWithSpecialNumbers(): Record<String, Any> {
  let record = new Record<String, Any>();
  record.set("maxInt", 2147483647);
  record.set("minInt", -2147483648);
  record.set("maxFloat", 3.402823e38);
  record.set("minFloat", -3.402823e38);
  return record;
}

export default function JsonPerfTest02(): void {
  describe('JsonPerfTest02', () => {
    const BASE_COUNT = 50000;
    // const BASE_COUNT = 1000;
    const UNIT_TIME = 1000000;

    beforeEach(() => {
      let ret = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret);
      let ret1 = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret1);
    });

    afterAll(() => {
      performance.save('apiPerformance.txt');
    });

    it('PerformanceTest_JSON_stringify_nullValue_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: null = null;
        let result: string = JSON.stringify(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_nullValue_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify null value', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_undefinedValue_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: undefined = undefined;
        let result: string = JSON.stringify(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_undefinedValue_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify undefined value', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_emptyObject_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let obj: Record<String, Any> = createEmptyObject();
        let result: string = JSON.stringify(obj);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_emptyObject_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify empty object', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_emptyArray_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let arr: Array<Any> = createEmptyArray();
        let result: string = JSON.stringify(arr);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(arr);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_emptyArray_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify empty array', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_objectWithNull_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let obj: Record<String, Any> = createObjectWithNull();
        let result: string = JSON.stringify(obj);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_objectWithNull_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify object with null', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_objectWithUndefined_0600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let obj: Record<String, Any> = createObjectWithUndefined();
        let result: string = JSON.stringify(obj);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_objectWithUndefined_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify object with undefined', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_arrayWithNull_0700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let arr: Array<Any> = createArrayWithNull();
        let result: string = JSON.stringify(arr);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(arr);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_arrayWithNull_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify array with null', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_sparseArray_0800',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let arr: Array<Any> = createSparseArray();
        let result: string = JSON.stringify(arr);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(arr);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_sparseArray_0800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify sparse array', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_numberValues_0900',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let obj: Record<String, Any> = createRecordWithNumberValues();
        let result: string = JSON.stringify(obj);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_numberValues_0900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify number values', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_specialNumbers_1000',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let obj: Record<String, Any> = createRecordWithSpecialNumbers();
        let result: string = JSON.stringify(obj);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_specialNumbers_1000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify special numbers', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_nullLiteral_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = 'null';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_nullLiteral_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse null literal', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_emptyObject_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{}';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_emptyObject_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse empty object', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_emptyArray_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '[]';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_emptyArray_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse empty array', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_trueLiteral_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = 'true';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_trueLiteral_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse true literal', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_falseLiteral_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = 'false';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_falseLiteral_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse false literal', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_numberZero_0600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '0';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_numberZero_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse number zero', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_numberNegative_0700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '-100';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_numberNegative_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse negative number', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_numberDecimal_0800',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '3.14159';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_numberDecimal_0800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse decimal number', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_numberScientific_0900',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '1.23e10';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_numberScientific_0900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse scientific notation', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_emptyString_1000',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '""';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_emptyString_1000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse empty string', arkTsAveragedTime);
      });
  });
}
