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
  expect,
  TestType,
  Size,
  Level,
  afterAll,
  beforeEach
} from "@ohos/hypium";
import systemDateTime from '@ohos.systemDateTime';
import performance from './Performance.util';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function ObjectPerfTest(): void {
  describe('ObjectPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_Object_Constructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let result: Object = new Object();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = new Object();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          'constructor',
          'constructor()',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });

    it('PerformanceTest_Object_ToString_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let classnull: Object = new Object();
        let result: String = classnull.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = classnull.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_ToString_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          'toString',
          'toString(): String',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });

    it('PerformanceTest_Object_ToLocaleString_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let classnull: Object = new Object();
        let result: String = classnull.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = classnull.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_ToLocaleString_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          'toLocaleString',
          'toLocaleString(locales?: Intl.LocalesArgument, options?: object): String',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });

    it('PerformanceTest_Object_HashCode_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let classnull: Object = new Object();
        let result: String = classnull.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = classnull.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_HashCode_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          '$_hashCode',
          '$_hashCode(): int',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });

    it('PerformanceTest_Object_Keys_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let classnull: Object = new Object();
        let result: String = classnull.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = classnull.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_Keys_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          'keys',
          'static keys(rec: Record<PropertyKey, Any>): string[]',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });

    it('PerformanceTest_Object_Keys_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let classnull: Object = new Object();
        let result: String = classnull.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = classnull.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_Keys_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          'keys',
          'static keys(o: Object): string[]',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });

    it('PerformanceTest_Object_Values_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let classnull: Object = new Object();
        let result: String = classnull.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = classnull.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_Values_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          'values',
          'static values(rec: Record<PropertyKey, Any>): Any[]',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });

    it('PerformanceTest_Object_Values_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let classnull: Object = new Object();
        let result: String = classnull.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = classnull.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_Values_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          'values',
          'static values(o: Object): Any[]',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });

    it('PerformanceTest_Object_Entries_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let classnull: Object = new Object();
        let result: String = classnull.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = classnull.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_Entries_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          'entries',
          'static entries(rec: Record<PropertyKey, Any>): NullishEntryType[]',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });

    it('PerformanceTest_Object_Entries_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let classnull: Object = new Object();
        let result: String = classnull.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = classnull.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_Entries_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          'entries',
          'static entries(o: Object): NullishEntryType[]',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });

    it('PerformanceTest_Object_GetOwnPropertyNames_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let classnull: Object = new Object();
        let result: String = classnull.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = classnull.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_GetOwnPropertyNames_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          'getOwnPropertyNames',
          'static getOwnPropertyNames(rec: Record<PropertyKey, Any>): string[]',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });

    it('PerformanceTest_Object_GetOwnPropertyNames_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let classnull: Object = new Object();
        let result: String = classnull.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = classnull.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_GetOwnPropertyNames_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          'getOwnPropertyNames',
          'static getOwnPropertyNames(o: Object): string[]',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });

    it('PerformanceTest_Object_HasOwnProperty_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let classnull: Object = new Object();
        let result: String = classnull.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = classnull.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_HasOwnProperty_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          'hasOwnProperty',
          'hasOwnProperty(index: number): boolean',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });

    it('PerformanceTest_Object_HasOwnProperty_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let classnull: Object = new Object();
        let result: String = classnull.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = classnull.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_HasOwnProperty_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          'hasOwnProperty',
          'hasOwnProperty(key: string): boolean',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });

    it('PerformanceTest_Object_HasOwn_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let classnull: Object = new Object();
        let result: String = classnull.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = classnull.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_HasOwn_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          'hasOwn',
          'static hasOwn(target: Object, key: PropertyKey): boolean',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });

    it('PerformanceTest_Object_HasOwn_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let classnull: Object = new Object();
        let result: String = classnull.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = classnull.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_HasOwn_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          'hasOwn',
          'static hasOwn(target: Object, index: number): boolean',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });

    it('PerformanceTest_Object_FromEntries_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let classnull: Object = new Object();
        let result: String = classnull.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = classnull.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_FromEntries_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          'fromEntries',
          'static fromEntries<T = Any>(entries: Iterable<[PropertyKey, T]>): Record<PropertyKey, T>',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });

    it('PerformanceTest_Object_Assign_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let classnull: Object = new Object();
        let result: String = classnull.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = classnull.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Object_Assign_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Object',
          'assign',
          'static assign(target: Record<PropertyKey, Any>, ...source: FixedArray<Object>): Record<PropertyKey, Any>',
          arkTsAveragedTime
        );
        expect(true).assertTrue();
        done();
      });
  })
}