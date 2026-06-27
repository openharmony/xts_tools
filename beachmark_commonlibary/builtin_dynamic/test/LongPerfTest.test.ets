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
  beforeEach,
  afterAll
} from "@ohos/hypium";
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

const BASE_COUNT = 1000;
const BASE_COUNT_MIX = 500;
function getLong123(): number {
  return parseInt("123", 10);
}

function getLong456(): number {
  return parseInt("456", 10);
}

function getLong7(): number {
  return parseInt("7", 10);
}

function createLong123(): number {
  return getLong123();
}

function createLong456(): number {
  return getLong456();
}

function createLong7(): number {
  return getLong7();
}

export default function LongPerfTest(): void {
  describe('LongPerfTest', () => {
    beforeEach(() => {

    });

    afterAll(() => {
      performance.save('apiPerformance.txt');
    });

    it('PerformanceTest_Long_Constructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 0;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'constructor',
          'constructor()', arkTsAveragedTime);
      expect(res1).assertEqual(0);
      done();
    })

    it('PerformanceTest_Long_Constructor_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = getLong123();
        let res: number = value;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Constructor_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'constructor',
          'constructor(value: number)', arkTsAveragedTime);
      expect(res1).assertEqual(123);
      done();
    })

    it('PerformanceTest_Long_Static_2000',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Number.MIN_SAFE_INTEGER;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Static_2000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'MIN_VALUE',
          'static readonly MIN_VALUE: number', arkTsAveragedTime);
      expect(res1).assertEqual(Number.MIN_SAFE_INTEGER);
      done();
    })

    it('PerformanceTest_Long_Static_2010',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Number.MAX_SAFE_INTEGER;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Static_2010: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'MAX_VALUE',
          'static readonly MAX_VALUE: number', arkTsAveragedTime);
      expect(res1).assertEqual(Number.MAX_SAFE_INTEGER);
      done();
    })

    it('PerformanceTest_Long_Static_2020',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 64;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Static_2020: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'BIT_SIZE',
          'static readonly BIT_SIZE: number', arkTsAveragedTime);
      expect(res1).assertEqual(64);
      done();
    })

    it('PerformanceTest_Long_Static_2030',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 8;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Static_2030: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'BYTE_SIZE',
          'static readonly BYTE_SIZE: number', arkTsAveragedTime);
      expect(res1).assertEqual(8);
      done();
    })

    it('PerformanceTest_Long_Static_2100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = getLong123();
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = String(value);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Static_2100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toString',
          'static toString(v: number): string', arkTsAveragedTime);
      expect(res1).assertEqual('123');
      done();
    })

    it('PerformanceTest_Long_Static_2200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = getLong123();
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Static_2200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toByte',
          'static toByte(value: number): number', arkTsAveragedTime);
      expect(res1).assertEqual(123);
      done();
    })

    it('PerformanceTest_Long_Static_2210',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = getLong123();
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Static_2210: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toShort',
          'static toShort(value: number): number', arkTsAveragedTime);
      expect(res1).assertEqual(123);
      done();
    })

    it('PerformanceTest_Long_Static_2220',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = getLong123();
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Static_2220: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toInt',
          'static toInt(value: number): number', arkTsAveragedTime);
      expect(res1).assertEqual(123);
      done();
    })

    it('PerformanceTest_Long_Static_2230',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = getLong123();
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Static_2230: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toLong',
          'static toLong(value: number): number', arkTsAveragedTime);
      expect(res1).assertEqual(123);
      done();
    })

    it('PerformanceTest_Long_Static_2240',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = getLong123();
        let res: number = 0.0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Static_2240: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toFloat',
          'static toFloat(value: number): number', arkTsAveragedTime);
      expect(res1).assertEqual(123);
      done();
    })

    it('PerformanceTest_Long_Static_2250',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = getLong123();
        let res: number = 0.0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Static_2250: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toDouble',
          'static toDouble(value: number): number', arkTsAveragedTime);
      expect(res1).assertEqual(123);
      done();
    })

    it('PerformanceTest_Long_Static_2260',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = getLong123();
        let res: string = "/0";
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = String.fromCharCode(value);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Static_2260: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toChar',
          'static toChar(value: number): number', arkTsAveragedTime);
      expect(res1).assertEqual(String.fromCharCode(123));
      done();
    })

    it('PerformanceTest_Long_Static_2300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let s: string = "123456";
        let r: number = 10;
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = parseInt(s, r);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Static_2300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'parseInt',
          'static parseInt(s: string, r: number): number', arkTsAveragedTime);
      expect(res1).assertEqual(123456);
      done();
    })

    it('PerformanceTest_Long_Instance_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong123();
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = (value << 24) >> 24;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toByte',
          'toByte(): number', arkTsAveragedTime);
      expect(res1).assertEqual(123);
      done();
    })

    it('PerformanceTest_Long_Instance_0110',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong123();
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = (value << 16) >> 16;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0110: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toShort',
          'toShort(): number', arkTsAveragedTime);
      expect(res1).assertEqual(123);
      done();
    })

    it('PerformanceTest_Long_Instance_0120',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong123();
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value | 0;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0120: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toInt',
          'toInt(): number', arkTsAveragedTime);
      expect(res1).assertEqual(123);
      done();
    })

    it('PerformanceTest_Long_Instance_0130',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong123();
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0130: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toLong',
          'toLong(): number', arkTsAveragedTime);
      expect(res1).assertEqual(123);
      done();
    })

    it('PerformanceTest_Long_Instance_0140',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong123();
        let res: number = 0.0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0140: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toFloat',
          'toFloat(): number', arkTsAveragedTime);
      expect(res1).assertEqual(123);
      done();
    })

    it('PerformanceTest_Long_Instance_0150',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong123();
        let res: number = 0.0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0150: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toDouble',
          'toDouble(): number', arkTsAveragedTime);
      expect(res1).assertEqual(123);
      done();
    })

    it('PerformanceTest_Long_Instance_0160',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong123();
        let res: string = "\0";
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = String.fromCharCode(value & 0xFFFF);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0160: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toChar',
          'toChar(): number', arkTsAveragedTime);
      expect(res1).assertEqual(String.fromCharCode(123));
      done();
    })

    it('PerformanceTest_Long_Instance_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong123();
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toString',
          'toString(): string', arkTsAveragedTime);
      expect(res1).assertEqual('123');
      done();
    })

    it('PerformanceTest_Long_Instance_0210',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong123();
        let radix: number = 16;
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value.toString(radix);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0210: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toString',
          'toString(radix: number): string', arkTsAveragedTime);
      expect(res1).assertEqual('7b');
      done();
    })

    it('PerformanceTest_Long_Instance_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong123();
        let other: Object = createLong123();
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value === other;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'equals',
          'equals(other: Object): boolean', arkTsAveragedTime);
      expect(res1).assertTrue();
      done();
    })

    it('PerformanceTest_Long_Instance_0310',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong123();
        let other: number = createLong456();
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Math.sign(value - other);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0310: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'compareTo',
          'compareTo(other: number): number', arkTsAveragedTime);
      expect(res1).assertEqual(-1);
      done();
    })

    it('PerformanceTest_Long_Instance_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong123();
        let options: Intl.NumberFormatOptions | undefined = undefined;
        let res: string = '';
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT_MIX; i++) {
          res = value.toLocaleString(undefined, options);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT_MIX;
        let res1 = res;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toLocaleString',
          'toLocaleString(locales?: Intl.LocalesArgument, options?: Intl.NumberFormatOptions): string', arkTsAveragedTime);
      expect(res1.length > 0).assertTrue();
      done();
    })

    it('PerformanceTest_Long_Instance_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong123();
        let other: number = createLong456();
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value + other;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'add',
          'add(other: number): number', arkTsAveragedTime);
      expect(res1).assertEqual(579);
      done();
    })

    it('PerformanceTest_Long_Instance_0510',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong456();
        let other: number = createLong123();
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value - other;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0510: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'sub',
          'sub(other: number): number', arkTsAveragedTime);
      expect(res1).assertEqual(333);
      done();
    })

    it('PerformanceTest_Long_Instance_0520',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong123();
        let other: number = createLong7();
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value * other;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0520: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'mul',
          'mul(other: number): number', arkTsAveragedTime);
      expect(res1).assertEqual(861);
      done();
    })

    it('PerformanceTest_Long_Instance_0530',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong456();
        let other: number = createLong7();
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value / other;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0530: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'div',
          'div(other: number): number', arkTsAveragedTime);
      expect(res1).assertEqual(456 / 7);
      done();
    })

    it('PerformanceTest_Long_Instance_0600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong123();
        let other: number = createLong456();
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value < other;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'isLessThan',
          'isLessThan(other: number): boolean', arkTsAveragedTime);
      expect(res1).assertTrue();
      done();
    })

    it('PerformanceTest_Long_Instance_0610',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong123();
        let other: number = createLong456();
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value <= other;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0610: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'isLessEqualThan',
          'isLessEqualThan(other: number): boolean', arkTsAveragedTime);
      expect(res1).assertTrue();
      done();
    })

    it('PerformanceTest_Long_Instance_0620',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong456();
        let other: number = createLong123();
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value > other;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0620: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'isGreaterThan',
          'isGreaterThan(other: number): boolean', arkTsAveragedTime);
      expect(res1).assertTrue();
      done();
    })

    it('PerformanceTest_Long_Instance_0630',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let value: number = createLong456();
        let other: number = createLong123();
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = value >= other;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_Instance_0630: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'isGreaterEqualThan',
          'isGreaterEqualThan(other: number): boolean', arkTsAveragedTime);
      expect(res1).assertTrue();
      done();
    })
  });
}