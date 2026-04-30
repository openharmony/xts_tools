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
  expect,
  TestType,
  Size,
  Level,
  beforeAll,
  afterAll,
  beforeEach,
  afterEach
} from "../../../hypium/index";
import performance from './Performance.util';
import { uri, util, url, xml, buffer, transfer } from '@kit.ArkTS';

export default function BooleanPerfTest() {
  describe('BooleanPerfTest', () => {
    // 毫秒 * 1000 = 微秒 毫秒 * 1000000 = 纳秒
    const BASE_COUNT = 50000;
    // url.URLParams.get --url.URLParams.has --util.getHash --util.Types.isMap --uri.uri.checkIsAbsolute --util.Types.isArrayBuffer
    const BASE_COUNT_BIG = 500000;
    const UNIT_TIME = 1000000;
    // buffer.from
    const BASE_COUNT_MIX = 100;

    beforeEach(() => {
      let ret = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret);
      let ret1 = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret1);
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_Boolean_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Boolean = new Boolean(false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
         res = new Boolean(true);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'constructor',
        'constructor(value: boolean)', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Boolean = new Boolean(false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Boolean(1 as byte);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'constructor',
        'constructor(value: byte)', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Constructor_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Boolean = new Boolean(false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Boolean(c'A');
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Constructor_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'constructor',
        'constructor(value: char)', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Constructor_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Boolean = new Boolean(false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Boolean(10 as short);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Constructor_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'constructor',
        'constructor(value: short)', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Constructor_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Boolean = new Boolean(false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Boolean(100);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Constructor_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'constructor',
        'constructor(value: number)', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Constructor_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Boolean = new Boolean(false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Boolean(1000 as long);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Constructor_0700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'constructor',
        'constructor(value: long)', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Constructor_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Boolean = new Boolean(false);
      let comt = new BigInt(123)
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Boolean(comt);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Constructor_0800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'constructor',
        'constructor(value: BigInt)', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Constructor_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Boolean = new Boolean(false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Boolean(3.14 as float);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Constructor_0900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'constructor',
        'function constructor(value: float)', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Constructor_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Boolean = new Boolean(false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Boolean('hello');
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Constructor_1100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'constructor',
        'function constructor(value: string)', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Constructor_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Boolean = new Boolean(false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Boolean(null);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Constructor_1200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'constructor',
        'function constructor(value: Object|null|undefined)', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Boolean = new Boolean(false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Boolean.TRUE.valueOf();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'TRUE|FALSE',
        'static readonly TRUE: Boolean, static readonly FALSE: Boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Static_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Boolean.toBoolean(true);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Static_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'toBoolean',
        'static toBoolean(value: boolean): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Static_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Boolean = new Boolean(false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Boolean.valueOf(true);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Static_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'valueOf',
        'static valueOf(value: boolean): Boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Static_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: string = '';
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Boolean.toString(true);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Static_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'toString',
        'static toString(value: boolean): string', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Static_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Boolean.$_invoke();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Static_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', '$_invoke',
        'static $_invoke(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Instance_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let boolTrue = new Boolean(true);
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = boolTrue.toBoolean();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Instance_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'toBoolean',
        'toBoolean(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Instance_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let boolTrue = new Boolean(true);
      let res: Boolean = new Boolean(false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = boolTrue.valueOf();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Instance_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'valueOf',
        'valueOf(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Instance_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let boolTrue = new Boolean(true);
      let res: string = '';
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = boolTrue.toString();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Instance_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'toString',
        'toString(): string', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Instance_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let bool1 = new Boolean(true);
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = bool1.equals(bool1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Instance_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'equals',
        'equals(obj: Object): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Instance_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let boolTrue = new Boolean(true);
      let res: number = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = boolTrue.compareTo(boolTrue);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Instance_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'compareTo',
        'compareTo(other: Boolean): number', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Instance_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let boolTrue = new Boolean(true);
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = boolTrue.isTrue();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Instance_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'isTrue',
        'isTrue(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Instance_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let boolTrue = new Boolean(true);
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = boolTrue.isFalse();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Instance_0700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'isFalse',
        'isFalse(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Instance_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let boolTrue = new Boolean(true);
      let res: Boolean = new Boolean(false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = boolTrue.negate();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Instance_0800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'negate',
        'negate(): Boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Instance_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let boolTrue = new Boolean(true);
      let res: Boolean = new Boolean(false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = boolTrue.and(boolTrue);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Instance_0900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'and',
        'and(other: Boolean): Boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Instance_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let boolTrue = new Boolean(true);
      let res: Boolean = new Boolean(false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = boolTrue.or(boolTrue);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Instance_1000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'or',
        'or(other: Boolean): Boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_Boolean_Instance_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let boolTrue = new Boolean(true);
      let res: Boolean = new Boolean(false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = boolTrue.xor(boolTrue);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Boolean_Instance_1100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Boolean', 'xor',
        'xor(other: Boolean): Boolean', arkTsAveragedTime);
    })

  })
}