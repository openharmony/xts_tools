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

function createLargeArrayObject(count: int): Record<String, Any> {
  let record = new Record<String, Any>();
  let arr = new Array<number>();
  for (let i = 0; i < count; i++) {
    arr.push(i);
  }
  record.set("data", arr);
  return record;
}

function createLargeNestedObject(depth: int): Record<String, Any> {
  if (depth <= 0) {
    let record = new Record<String, Any>();
    record.set("value", 12345);
    return record;
  }
  let record = new Record<String, Any>();
  record.set("nested", createLargeNestedObject(depth - 1));
  return record;
}

function createLargeObjectWithManyKeys(): Record<String, Any> {
  let record = new Record<String, Any>();
  for (let i = 0; i < 50; i++) {
    record.set(`key${i}`, `value${i}`);
  }
  return record;
}

function createLargeArrayOfObjects(count: int): Array<Record<String, Any>> {
  let arr = new Array<Record<String, Any>>();
  for (let i = 0; i < count; i++) {
    let obj = new Record<String, Any>();
    obj.set("id", i);
    obj.set("name", `item${i}`);
    obj.set("value", i * 100);
    arr.push(obj);
  }
  return arr;
}

function createDeepArrayObject(depth: int): Record<String, Any> {
  if (depth <= 0) {
    let record = new Record<String, Any>();
    record.set("value", "leaf");
    return record;
  }
  let record = new Record<String, Any>();
  let arr = new Array<Any>();
  arr.push(createDeepArrayObject(depth - 1));
  record.set("children", arr);
  return record;
}

export default function JsonPerfTest04(): void {

  describe('JsonPerfTest04', () => {

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

    it('PerformanceTest_JSON_stringify_largeArray100_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let obj: Record<String, Any> = createLargeArrayObject(100);
        let result: string = JSON.stringify(obj);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_largeArray100_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify large array 100', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_largeArray500_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let obj: Record<String, Any> = createLargeArrayObject(500);
        let result: string = JSON.stringify(obj);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_largeArray500_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify large array 500', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_deepNested5_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let obj: Record<String, Any> = createLargeNestedObject(5);
        let result: string = JSON.stringify(obj);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_deepNested5_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify deep nested 5', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_deepNested10_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let obj: Record<String, Any> = createLargeNestedObject(10);
        let result: string = JSON.stringify(obj);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_deepNested10_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify deep nested 10', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_manyKeys50_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let obj: Record<String, Any> = createLargeObjectWithManyKeys();
        let result: string = JSON.stringify(obj);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_manyKeys50_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify many keys 50', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_arrayOfObjects50_0600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let arr: Array<Record<String, Any>> = createLargeArrayOfObjects(50);
        let result: string = JSON.stringify(arr);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(arr);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_arrayOfObjects50_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify array of objects 50', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_deepArray5_0700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let obj: Record<String, Any> = createDeepArrayObject(5);
        let result: string = JSON.stringify(obj);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_deepArray5_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify deep array 5', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_largeArray100_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"data":[]}';
        let arr: string[] = [];
        for (let i = 0; i < 100; i++) {
          arr.push(`${i}`);
        }
        json = `{"data":[${arr.join(",")}]}`;
        let result = JSON.parseJsonElement(json);

        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_largeArray100_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse large array 100', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_deepNested5_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"nested":{"nested":{"nested":{"nested":{"nested":{"value":12345}}}}}}';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_deepNested5_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse deep nested 5', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_deepNested10_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"nested":{"nested":{"nested":{"nested":{"nested":{"nested":{"nested":{"nested":{"nested":{"nested":{"value":12345}}}}}}}}}}}';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_deepNested10_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse deep nested 10', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_manyKeys50_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let pairs: string[] = [];
        for (let i = 0; i < 50; i++) {
          pairs.push(`"key${i}":"value${i}"`);
        }
        let json: string = `{${pairs.join(",")}}`;
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_manyKeys50_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse many keys 50', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_arrayOfObjects50_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let items: string[] = [];
        for (let i = 0; i < 50; i++) {
          items.push(`{"id":${i},"name":"item${i}","value":${i * 100}}`);
        }
        let json: string = `[${items.join(",")}]`;
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_arrayOfObjects50_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse array of objects 50', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_parse_deepArray5_0600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let json: string = '{"children":[{"children":[{"children":[{"children":[{"children":[{"value":"leaf"}]}]}]}]}]}';
        let result = JSON.parseJsonElement(json);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.parseJsonElement(json);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_parse_deepArray5_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse deep array 5', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_space_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let obj: Record<String, Any> = new Record<String, Any>();
        obj.set("name", "arkts");
        obj.set("age", 25);
        let result: string = JSON.stringify(obj, undefined, 2);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj, undefined, 2);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_space_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify with space', arkTsAveragedTime);
      });

    it('PerformanceTest_JSON_stringify_spaceTab_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let obj: Record<String, Any> = new Record<String, Any>();
        obj.set("name", "arkts");
        obj.set("age", 25);
        let result: string = JSON.stringify(obj, undefined, "\t");
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj, undefined, "\t");
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest PerformanceTest_JSON_stringify_spaceTab_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify with tab space', arkTsAveragedTime);
      });
  });
}
