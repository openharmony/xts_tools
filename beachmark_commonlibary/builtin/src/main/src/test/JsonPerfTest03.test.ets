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

export default function JsonPerfTest03(): void {
  describe('JsonPerfTest03', () => {

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

    it('PerformanceTest_JSON_parseJsonRecord_simple_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"name":"arkts","age":25}';
        let result = JSON.parseJsonRecord(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonRecord(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parseJsonRecord_simple_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parseJsonRecord',
          'parseJsonRecord simple', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parseJsonRecord_complex_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"id":1,"name":"test","active":true,"balance":123.45}';
        let result = JSON.parseJsonRecord(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonRecord(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parseJsonRecord_complex_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parseJsonRecord',
          'parseJsonRecord complex', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parseJsonRecord_nested_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"user":{"city":"Beijing","country":"China"},"timestamp":1234567890}';
        let result = JSON.parseJsonRecord(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonRecord(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parseJsonRecord_nested_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parseJsonRecord',
          'parseJsonRecord nested', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parseJsonRecord_withArrays_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"numbers":[1,2,3,4,5],"strings":["a","b","c"],"booleans":[true,false,true]}';
        let result = JSON.parseJsonRecord(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonRecord(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parseJsonRecord_withArrays_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parseJsonRecord',
          'parseJsonRecord with arrays', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parseJsonRecord_nestedArray_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"matrix":[[1,2],[3,4],[5,6]]}';
        let result = JSON.parseJsonRecord(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonRecord(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parseJsonRecord_nestedArray_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parseJsonRecord',
          'parseJsonRecord nested array', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parseJsonRecord_empty_0600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{}';
        let result = JSON.parseJsonRecord(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonRecord(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parseJsonRecord_empty_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parseJsonRecord',
          'parseJsonRecord empty', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parseJsonRecord_withNull_0700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"name":"test","value":null}';
        let result = JSON.parseJsonRecord(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonRecord(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parseJsonRecord_withNull_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parseJsonRecord',
          'parseJsonRecord with null', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parseJsonRecord_large_0800',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"id":1,"name":"test","active":true,"balance":123.45,"email":"test@example.com","phone":"1234567890"}';
        let result = JSON.parseJsonRecord(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonRecord(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parseJsonRecord_large_0800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parseJsonRecord',
          'parseJsonRecord large', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parseJsonRecord_specialChars_0900',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"key with space":"value","unicode":"中文测试"}';
        let result = JSON.parseJsonRecord(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonRecord(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parseJsonRecord_specialChars_0900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parseJsonRecord',
          'parseJsonRecord special chars', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_recordSimple_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let record: Record<string, string | number | boolean> = {"name":"arkts","age":25};
        let result: string = JSON.stringify(record);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(record);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_recordSimple_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify record simple', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_recordComplex_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let record: Record<string, string | number | boolean> = {"id":1,"name":"test","active":true,"balance":123.45};
        let result: string = JSON.stringify(record);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(record);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_recordComplex_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify record complex', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_recordNested_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let record: Record<string, string | number | Record<string, string | number> | boolean> = {"user":{"city":"Beijing","country":"China"},"timestamp":1234567890};
        let result: string = JSON.stringify(record);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(record);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_recordNested_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify record nested', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_recordWithArrays_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let record: Record<string, string | number | boolean | Array<string | number | boolean>> = {"numbers":[1,2,3,4,5],"strings":["a","b","c"],"booleans":[true,false,true]};
        let result: string = JSON.stringify(record);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(record);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_recordWithArrays_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify record with arrays', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_recordWithNestedArray_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let record: Record<string, Array<Array<number>>> = {"matrix":[[1,2],[3,4],[5,6]]};
        let result: string = JSON.stringify(record);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(record);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_recordWithNestedArray_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify record with nested array', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_recordWithNull_0600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let record: Record<string, string | null> = {"name":"test","value":null};
        let result: string = JSON.stringify(record);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(record);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_recordWithNull_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify record with null', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_recordEmpty_0700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let record: Record<string, string | number | boolean | null> = {};
        let result: string = JSON.stringify(record);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(record);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_recordEmpty_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify record empty', arkTsAveragedTime);
      });
  });
}
