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

it('PerformanceTest_JSON_stringify_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: number = toByteValue(7);
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(number): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: string = 'a';
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(string): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: number = toShortValue(7);
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_0300: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(number): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: number = 7;
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_0400: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(number): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: number = toLongValue(7);
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_0500: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(number): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_0600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: number = toFloatValue(3.14);
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_0600: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(number): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_0700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: number = 3.14;
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_0700: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(number): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_0900',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: boolean = true;
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_0900: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(boolean): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_1000',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: string = "arkts";
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_1000: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(string): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_1100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: number[] = createByteFixedArray();
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_1100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(number[]): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_1200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: string[] = createCharFixedArray();
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_1200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(string[]): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_1300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: number[] = createShortFixedArray();
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_1300: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(number[]): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_1400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: number[] = createIntFixedArray();
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_1400: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(number[]): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_1500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: number[] = createLongFixedArray();
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_1500: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(number[]): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_1600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: number[] = createFloatFixedArray();
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_1600: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(number[]): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_1700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: number[] = createDoubleFixedArray();
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_1700: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(number[]): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_1800',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: boolean[] = createBooleanFixedArray();
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_1800: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(boolean[]): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_1900',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: number[] = createNumberArray();
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_1900: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(number[]): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_2000',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let d: number[] = createNumberArrayLike();
        let result: string = JSON.stringify(d);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(d);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_2000: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(number[]): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_2100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: SampleJsonReplacer = new SampleJsonReplacer();
        let result: string = JSON.stringify(obj);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_2100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(object): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_2200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: Record<string, Object> = createSimpleRecord();
        let result: string = JSON.stringify(obj);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_2200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(Record<string, Object>): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_2300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: Record<string, Object> = createSimpleRecord();
        let result: string = JSON.stringify(obj, commonReviver, 2);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj, commonReviver, 2);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_2300: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(obj: Object, replacer: ((key: string, value: Object) => Object) | undefined | null, space?: number | string): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_2400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: Record<string, Object> = createSimpleRecord();
        let replacer: (number | string)[] = createStringifyFilterFixedArray();
        let result: string = JSON.stringify(obj, replacer, 2);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj, replacer, 2);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_2400: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(Object, (number | string)[], number | string): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringify_2500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: Record<string, Object> = createSimpleRecord();
        let replacer: (number | string)[] = createStringifyFilterArray();
        let result: string = JSON.stringify(obj, replacer, 2);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj, replacer, 2);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringify_2500: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(obj: Object, replacer: (number | string)[], space?: number | string): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_parse_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let json: string = "{\"name\":\"arkts\",\"age\":1}";
        let result: SampleParsePojo | null | undefined = JSON.parse(json);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.parse(json);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_parse_0300: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse<T>(json: string): T', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_parse_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let json: string = "{\"name\":\"arkts\",\"age\":1}";
        let result: SampleParsePojo | null | undefined = JSON.parse(json, commonReviver);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.parse(json, commonReviver);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_parse_0400: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse<T>(json: string, reviver: ((key: string, value: Object) => Object) | undefined): T', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_parseJsonElement_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let text: string = "{\"name\":\"arkts\",\"age\":1}";
        let result: object = JSON.parse(text);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.parse(text);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_parseJsonElement_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse(string): object', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_parseJsonElement_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let text: string = "{\"name\":\"arkts\",\"age\":1}";
        let result: object = JSON.parse(text, jsonElementReviver);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.parse(text, jsonElementReviver);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_parseJsonElement_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse(string, (string, object) => object): object', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_parseJsonRecord_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let text: string = "{\"name\":\"arkts\",\"age\":1}";
        let result: Record<string, Object> = JSON.parse(text);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.parse(text);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_parseJsonRecord_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse(string): Record<string, Object>', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringifyWithGetters_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: Record<string, Object> = createSimpleRecord();
        let result: string = JSON.stringify(obj);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringifyWithGetters_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(Object): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringifyWithGetters_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: Record<string, Object> = createSimpleRecord();
        let result: string = JSON.stringify(obj, commonReviver, 2);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj, commonReviver, 2);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringifyWithGetters_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(obj: Object, replacer: ((key: string, value: Object) => Object) | undefined | null, space?: number | string): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_stringifyWithGetters_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: Record<string, Object> = createSimpleRecord();
        let replacer: (number | string)[] = createStringifyFilterArray();
        let result: string = JSON.stringify(obj, replacer, 2);
        let Stime: number = systemDateTime.getTime(true);

        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.stringify(obj, replacer, 2);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_stringifyWithGetters_0300: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'stringify',
          'stringify(obj: Object, replacer: (number | string)[], space?: number | string): string', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_parseUpdate_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let json: string = "{\"name\":\"test\",\"age\":25}";
        let result: SampleParsePojo = JSON.parse(json);
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.parse(json);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_parseUpdate_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse<T>(json: string): T', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });

    it('PerformanceTest_JSON_parseUpdate_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let json: string = "{\"name\":\"test\",\"age\":25}";
        let result: SampleParsePojo = JSON.parse(json, commonReviver);
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = JSON.parse(json, commonReviver);
        }

        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JSON_parseUpdate_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JSON', 'parse',
          'parse<T>(json: string, reviver: ((key: string, value: Object) => Object) | undefined): T', arkTsAveragedTime);
        expect(result !== null).assertTrue();
        done();
      });
  });
}