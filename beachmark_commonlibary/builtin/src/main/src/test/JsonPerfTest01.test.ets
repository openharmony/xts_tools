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



export default function JsonPerfTest01(): void {

  describe('JsonPerfTest01', () => {
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

    it('PerformanceTest_JSON_stringify_simple_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let obj: Record<string, string | number | boolean> = {"name":"arkts","age":25,"active":true};
        let result: string = JSON.stringify(obj);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_simple_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify simple object', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_largeArray_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let obj: Record<string, Array<number> | string | number | boolean> = {"data":[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99]};
        let result: string = JSON.stringify(obj);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_largeArray_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify large array object', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_mixedArray_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let arr = [1,"string",true,3.14,null];
        let result: string = JSON.stringify(arr);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(arr);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_mixedArray_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify mixed type array', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_largeRecord_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let obj: Record<string, string | number | boolean> = {"id":1,"name":"test","active":true};
        let result: string = JSON.stringify(obj);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_largeRecord_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify large record', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_specialChars_0700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let obj: Record<string, string> = {"key with space":"value","unicode":"中文测试"};
        let result: string = JSON.stringify(obj);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_specialChars_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify with special characters', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_simple_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"name":"arkts","age":25,"active":true}';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_simple_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse simple JSON', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_largeArray_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"data":[0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99]}';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_largeArray_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse large array JSON', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_mixedArray_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '[1,"string",true,3.14,null]';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_mixedArray_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse mixed array JSON', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_complexRecord_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"id":1,"name":"test","active":true}';
        let result = JSON.parseJsonElement(json);

        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }
        let Dtime = new Date().getTime() - Stime;

        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_complexRecord_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse complex record JSON', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_specialChars_0700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"key with space":"value","unicode":"中文测试"}';
        let result = JSON.parseJsonElement(json);

        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }
        let Dtime = new Date().getTime() - Stime;

        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_specialChars_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse special characters JSON', arkTsAveragedTime);
      });
  });
}
