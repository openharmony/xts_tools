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
  beforeAll,
  afterAll,
  beforeEach,
  afterEach
} from "@ohos/hypium";
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function BuiltinArrayPerfTest09(): void {
  describe('BuiltinArrayPerfTest09', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {

    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_BuiltinArrayTest_0010', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let res: string = fixArray[0];
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = fixArray[1];
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0010: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'at',
        'at(self: string[], index: number): string', arkTsAveragedTime);
      expect(res1).assertEqual('b');
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_0020', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let res: string[] = new Array(5);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = fixArray.copyWithin(0, 0);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0020: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(self: string[], target: number): string[]', arkTsAveragedTime);
      expect(res1[0]).assertEqual('a');
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_0030', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let res: string[] = new Array(5);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = [...fixArray].copyWithin( 0, 2);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0030: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(self: string[], target: number, start: number): string[]', arkTsAveragedTime);
      expect(res1[0]).assertEqual('c');
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_0040', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let res: string[] = new Array(5);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = [...fixArray].copyWithin( 0, 1, 4);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0040: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'copyWithin',
        'copyWithin(self: string[], target: number, start: number, end?: number): string[]', arkTsAveragedTime);
      expect(res1[0]).assertEqual('b');
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_0050', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let result: string[] = new Array(5);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.fill('x');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0050: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'fill',
        'fill(self: string[], value: number, start?: number, end?: number): string[]', arkTsAveragedTime);
      expect(res1[0]).assertEqual('x');
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_0060', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let result: string | undefined = fixArray[0];
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.find((value: string) => value > 'c');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0060: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'find',
        'find(self: FixedArray<char>, predicate: (value: number, index: number, array: FixedArray<char>) => boolean): Char | undefined', arkTsAveragedTime);
      expect(res1).assertEqual('d');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0070', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let result: number = -1;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.findIndex((value: string) => value > 'c');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0070: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'findIndex',
        'findIndex(self: FixedArray<char>, predicate: (value: number, index: number, array: FixedArray<char>) => boolean): number', arkTsAveragedTime);
      expect(res1).assertEqual(3);
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0080', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['c', 'b', 'a', 'd', 'e'];
      let result: string[] = new Array(5);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.sort();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0080: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'sort',
        'sort(self: FixedArray<char>): FixedArray<char>', arkTsAveragedTime);
      expect(res1[0]).assertEqual('a');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0090', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['c', 'b', 'a', 'd', 'e'];
      let result: string[] = new Array(5);
      let sortCb = (a: string, b: string): number => {
        return a > b ? -1 : (a < b ? 1 : 0);
      };
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.sort(sortCb);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0090: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'sort',
        'sort(self: FixedArray<char>, comparator: (a: number, b: number) => int, start?: number, end?: number): FixedArray<char>', arkTsAveragedTime);
      expect(res1[0]).assertEqual('e');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let result: string[] = new Array(5);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [...fixArray].reverse();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reverse',
        'reverse(self: FixedArray<char>): FixedArray<char>', arkTsAveragedTime);
      expect(res1[0]).assertEqual('e');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0130', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let result: boolean = false;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.every((value: string) => value < 'z');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0130: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'every',
        'every(self: FixedArray<char>, predicate: (value: number, index: number, array: FixedArray<char>) => boolean): boolean', arkTsAveragedTime);
      expect(res1).assertTrue();
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0140', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let result: boolean = false;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.some((value: string) => value == 'c');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0140: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'some',
        'some(self: FixedArray<char>, predicate: (value: number, index: number, array: FixedArray<char>) => boolean): boolean', arkTsAveragedTime);
      expect(res1).assertTrue();
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0160', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c'];
      let result: string = '\0';
      let reduceCb1 = (previousValue: string, currentValue: string): string => {
        return previousValue > currentValue ? previousValue : currentValue;
      };
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.reduce(reduceCb1);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0160: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reduce',
        'reduce(self: FixedArray<char>, callbackfn: (previousValue: number, currentValue: number, index: number, array: FixedArray<char>) => char): number', arkTsAveragedTime);
      expect(res1).assertEqual('c');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0170', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c'];
      let result: string = '';
      let reduceCb2 = (previousValue: string, currentValue: string): string => {
        return previousValue + currentValue;
      };
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.reduce(reduceCb2, '');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0170: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reduce',
        'reduce<U>(self: FixedArray<char>, callbackfn: (previousValue: U, currentValue: number, index: number, array: FixedArray<char>) => U, initialValue: U): U', arkTsAveragedTime);
      expect(res1).assertEqual('abc');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0180', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c'];
      let result: string = '';
      let reduceRightCb = (previousValue: string, currentValue: string): string => {
        return previousValue + currentValue;
      };
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.reduceRight(reduceRightCb, '');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0180: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reduceRight',
        'reduceRight<U>(self: FixedArray<char>, callbackfn: (previousValue: U, currentValue: number, index: number, array: FixedArray<char>) => U, initialValue: U): U', arkTsAveragedTime);
      expect(res1).assertEqual('cba');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0190', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let result: number = 0;
      let forEachCb = (value: string, index: number): void => {
        result = Number(value.charCodeAt(0));
      };
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        fixArray.forEach(forEachCb);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0190: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'forEach',
        'forEach(self: FixedArray<char>, callbackfn: (value: number, index: number, array: FixedArray<char>) => void): void', arkTsAveragedTime);
      expect(res1).assertEqual(101);
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let result: string[] = new Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice(2);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice',
        'slice(self: FixedArray<char>, start: number): FixedArray<char>', arkTsAveragedTime);
      expect(res1[0]).assertEqual('c');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0210', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let result: string[] = new Array(2);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice(1, 3);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0210: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice',
        'slice(self: FixedArray<char>, start?: number, end?: number): FixedArray<char>', arkTsAveragedTime);
      expect(res1[0]).assertEqual('b');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0220', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'b', 'a'];
      let result: number = -1;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.lastIndexOf('b');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0220: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'lastIndexOf',
        'lastIndexOf(self: FixedArray<char>, element: number): number', arkTsAveragedTime);
      expect(res1).assertEqual(3);
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0230', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c'];
      let result: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.join('-');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0230: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'join',
        'join(self: FixedArray<char>, sep?: string): string', arkTsAveragedTime);
      expect(res1).assertEqual('a-b-c');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0240', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c'];
      let result: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0240: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toString',
        'toString(self: FixedArray<char>): string', arkTsAveragedTime);
      expect(res1).assertEqual('a,b,c');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0250', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c'];
      let result: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.toLocaleString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0250: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toLocaleString',
        'toLocaleString(self: FixedArray<char>): string', arkTsAveragedTime);
      expect(res1.length > 0).assertTrue();
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0270', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let result: string[] = new Array(5);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice(0, 1);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0270: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toSpliced',
        'toSpliced(self: FixedArray<char>, start: number): FixedArray<char>', arkTsAveragedTime);
      expect(res1[0]).assertEqual('a');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0280', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let result: string[] = new Array(5);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice(0, 1).concat(fixArray.slice(3));
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0280: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toSpliced',
        'toSpliced(self: FixedArray<char>, start: number, delete: number): FixedArray<char>', arkTsAveragedTime);
      expect(res1[0]).assertEqual('a');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0290', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let result: string[] = new Array(5);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice(0, 1).concat(['x', 'y'], fixArray.slice(2));
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0290: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toSpliced',
        'toSpliced(self: FixedArray<char>, start: number, delete: number, ...items: number[]): FixedArray<char>', arkTsAveragedTime);
      expect(res1[1]).assertEqual('x');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let result: boolean = false;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.includes('c');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'includes',
        'includes(self: FixedArray<char>, val: number): boolean', arkTsAveragedTime);
      expect(res1).assertTrue();
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0310', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'b', 'a'];
      let result: number = -1;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.indexOf('b');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0310: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'indexOf',
        'indexOf(self: FixedArray<char>, val: number): number', arkTsAveragedTime);
      expect(res1).assertEqual(1);
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0320', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['c', 'b', 'a'];
      let result: string[] = new Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [...fixArray].sort();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0320: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toSorted',
        'toSorted(self: FixedArray<char>): FixedArray<char>', arkTsAveragedTime);
      expect(res1[0]).assertEqual('a');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0330', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['c', 'b', 'a'];
      let result: string[] = new Array(3);
      let toSortedCb = (a: string, b: string): number => {
        return a > b ? -1 : (a < b ? 1 : 0);
      };
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [...fixArray].sort(toSortedCb);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0330: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toSorted',
        'toSorted(self: FixedArray<char>, comparator: (a: number, b: number) => int): FixedArray<char>', arkTsAveragedTime);
      expect(res1[0]).assertEqual('c');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0340', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let result: string[] = new Array(5);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [...fixArray].reverse();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0340: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'toReversed',
        'toReversed(self: FixedArray<char>): FixedArray<char>', arkTsAveragedTime);
      expect(res1[0]).assertEqual('e');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0360', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c'];
      let result: IterableIterator<string> = fixArray.values();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.values();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0360: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'values',
        'values(self: FixedArray<char>): IterableIterator<char>', arkTsAveragedTime);
      expect(typeof result.next === 'function').assertTrue();
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0380', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c', 'd', 'e'];
      let result: string[] = new Array(5);
      let filterCb = (v: string, k: number, arr: string[]): boolean => {
        return v > 'c';
      };
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.filter(filterCb);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0380: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'filter',
        'filter(self: FixedArray<char>, fn: (v: number, k: number, array: FixedArray<char>) => boolean): FixedArray<char>', arkTsAveragedTime);
      expect(res1[0]).assertEqual('d');
      done();
    });

    it('PerformanceTest_BuiltinArrayTest_0390', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: string[] = ['a', 'b', 'c'];
      let fixArray2: string[] = ['d', 'e', 'f'];
      let result: string[] = new Array(6);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.concat(fixArray2);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_0390: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'concat',
        'concat(self: FixedArray<char>, fst: FixedArray<char>, ...more: FixedArray<FixedArray<char>>): FixedArray<char>', arkTsAveragedTime);
      expect(res1.length).assertEqual(6);
      done();
    });

  })
}