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


export default function JsonPerfTest05(): void {
  describe('JsonPerfTest05', () => {

    const BASE_COUNT = 50000;
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

    it('PerformanceTest_JSON_stringify_tuple_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let tuple = [42, "hello", true];
        let result: string = JSON.stringify(tuple);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(tuple);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_tuple_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify tuple', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_nestedTuple_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let tuple = [[1, 2], [3, 4]];
        let result: string = JSON.stringify(tuple);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(tuple);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_nestedTuple_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify nested tuple', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_arrayOfTuples_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let arr = [[1, "a"], [2, "b"], [3, "c"]];
        let result: string = JSON.stringify(arr);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(arr);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_arrayOfTuples_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify array of tuples', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_stringLiteral_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '"hello world"';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_stringLiteral_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse string literal', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_unicodeString_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '"中文测试 unicode ABC"';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_unicodeString_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse unicode string', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_largeNumber_0600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"value":2147483647}';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_largeNumber_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse large number', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_negativeDecimal_0700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '-123.456789';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_negativeDecimal_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse negative decimal', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_specialNumbers_0800',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"maxInt":2147483647,"minInt":-2147483648,"maxFloat":1.7976931348623157e308,"minFloat":2.2250738585072014e-308}';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_specialNumbers_0800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse special numbers', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_withSpace_0900',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{ "name": "arkts", "age": 25, "active": true }';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_withSpace_0900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse JSON with space', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_record_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"name":"test","count":42,"active":true}';
        let result = JSON.parseJsonRecord(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonRecord(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_record_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parseJsonRecord',
          'parse JsonRecord', arkTsAveragedTime);
      });
  });
}
