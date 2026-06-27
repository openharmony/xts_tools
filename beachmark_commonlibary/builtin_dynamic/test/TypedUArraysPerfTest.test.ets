/*
 * Copyright (c) 2026 SwanLink (Jiangsu) Technology Development Co., LTD.
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

export default function TypedUArraysPerfTest(): void {
  describe('TypedUArraysPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {

    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_Uint8Array_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Uint8Array = new Uint8Array();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Uint8Array();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'constructor',
        'constructor(): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Uint8Array = new Uint8Array(100);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Uint8Array(100);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'constructor_length',
        'constructor(length: int | number): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let srcArr: number[] = [];
      for (let i = 0; i < 100; i++) {
        srcArr.push(i);
      }
      let res: Uint8Array = new Uint8Array(srcArr);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Uint8Array(srcArr);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'constructor_array',
        'constructor(array: Array<int>): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_at', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let result: number | undefined = arr[50];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr[50];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_at: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'at',
        'at(index: int): Number | undefined', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_copyWithin', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.copyWithin(0, 50, 80);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_copyWithin: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'copyWithin',
        'copyWithin(target: int, start: int, end?: int): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_fill', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.fill(42, 0, 100);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_fill: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'fill',
        'fill(value: byte, start?: int, end?: int): this', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_set_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr[50] = 99;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_set_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'set',
        'set(insertPos: int, val: byte): void', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_set_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      let srcArr: Uint8Array = new Uint8Array(50);
      for (let i = 0; i < 50; i++) {
        srcArr[i] = i ;
      }
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.set(srcArr, 0);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_set_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'set_array_offset',
        'set(array: Uint8Array, offset: int): void', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_includes', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let result: boolean = arr.includes(50);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr.includes(50);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_includes: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'includes',
        'includes(searchElement: byte): boolean', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_indexOf', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let result: number = arr.indexOf(50);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr.indexOf(50);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_indexOf: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'indexOf',
        'indexOf(searchElement: int, fromIndex?: int): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_join', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(10);
      for (let i = 0; i < 10; i++) {
        arr[i] = i ;
      }
      let result: string = arr.join(",");
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr.join(",");
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_join: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'join',
        'join(separator?: String): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_lastIndexOf', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = (i % 10) ;
      }
      let result: number = arr.lastIndexOf(5);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr.lastIndexOf(5);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_lastIndexOf: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'lastIndexOf',
        'lastIndexOf(searchElement: int, fromIndex?: int): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_reverse', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.reverse();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_reverse: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'reverse',
        'reverse(): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_slice', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let result: Uint8Array = arr.slice(10, 50);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr.slice(10, 50);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_slice: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'slice',
        'slice(begin?: int, end?: int): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_subarray', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let result: Uint8Array = arr.subarray(10, 50);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr.subarray(10, 50);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_subarray: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'subarray',
        'subarray(begin?: int, end?: int): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_sort', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let j = 0; j < 100; j++) {
        arr[j] = (100 - j) ;
      }
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.sort();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_sort: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'sort',
        'sort(compareFn?: (a: number, b: number) => int): this', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_toReversed', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let makeReversed = (): Uint8Array => Uint8Array.from(arr).reverse();
      let result: Uint8Array = makeReversed();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = makeReversed();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_toReversed: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'toReversed',
        'toReversed(): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_toSorted', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = (100 - i) ;
      }
      let makeSorted = (): Uint8Array => Uint8Array.from(arr).sort();
      let result: Uint8Array = makeSorted();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = makeSorted();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_toSorted: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'toSorted',
        'toSorted(): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_with', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let makeWith = (): Uint8Array => {
        let next: Uint8Array = Uint8Array.from(arr);
        next[50] = 99;
        return next;
      };
      let result: Uint8Array = makeWith();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = makeWith();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_with: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'with',
        'with(index: int, value: byte): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_entries', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let iter: IterableIterator<[number, number]> = arr.entries();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        iter = arr.entries();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = iter;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_entries: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'entries',
        'entries(): IterableIterator<[int, Number]>', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_keys', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let iter: IterableIterator<number> = arr.keys();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        iter = arr.keys();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = iter;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_keys: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'keys',
        'keys(): IterableIterator<int>', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_values', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let iter: IterableIterator<number> = arr.values();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        iter = arr.values();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = iter;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_values: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'values',
        'values(): IterableIterator<Number>', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_some', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let result: boolean = arr.some((val: number, index: number, array: Uint8Array): boolean => {
        return val > 50;
      });
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr.some((val: number, index: number, array: Uint8Array): boolean => val > 50);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_some: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'some',
        'some(predicate: (element: number, index: int, array: Uint8Array) => boolean): boolean', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_every', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let result: boolean = arr.every((val: number, index: number, array: Uint8Array): boolean => {
        return val >= 0;
      });
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr.every((val: number, index: number, array: Uint8Array): boolean => val >= 0);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_every: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'every',
        'every(predicate: (element: number, index: int, array: Uint8Array) => boolean): boolean', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_find', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let predicate = (val: number, index: number, obj: Uint8Array): boolean => val > 50;
      let result: number | undefined = arr.find(predicate);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr.find(predicate);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_find: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'find',
        'find(predicate: (value: number, index: int, obj: Uint8Array) => boolean): number | undefined', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_findIndex', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let predicate = (val: number, index: number, obj: Uint8Array): boolean => val > 50;
      let result: number = arr.findIndex(predicate);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr.findIndex(predicate);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_findIndex: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'findIndex',
        'findIndex(predicate: (value: number, index: int, obj: Uint8Array) => boolean): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_filter', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let result: Uint8Array = arr.filter((val: number, index: number, array: Uint8Array): boolean => {
        return val > 50;
      });
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr.filter((val: number, index: number, array: Uint8Array): boolean => val > 50);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_filter: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'filter',
        'filter(fn: (val: number, index: int, array: Uint8Array) => boolean): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_map', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let result: Uint8Array = arr.map((val: number, index: number, array: Uint8Array): number => {
        return val * 2;
      });
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr.map((val: number, index: number, array: Uint8Array): number => val * 2);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_map: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'map',
        'map(fn: (val: number, index: int, array: Uint8Array) => number): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_reduce', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = 1 ;
      }
      let result: number = arr.reduce((previousValue: number, currentValue: number, currentIndex: number, array: Uint8Array): number => {
        return previousValue + currentValue;
      }, 0);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr.reduce((previousValue: number, currentValue: number, currentIndex: number, array: Uint8Array): number => previousValue + currentValue, 0);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_reduce: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'reduce',
        'reduce(callbackfn: (previousValue: U, currentValue: number, currentIndex: int, array: Uint8Array) => U, initialValue: U): U', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_reduceRight', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = 1 ;
      }
      let result: number = arr.reduceRight((previousValue: number, currentValue: number, currentIndex: number, array: Uint8Array): number => {
        return previousValue + currentValue;
      }, 0);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr.reduceRight((previousValue: number, currentValue: number, currentIndex: number, array: Uint8Array): number => previousValue + currentValue, 0);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_reduceRight: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'reduceRight',
        'reduceRight(callbackfn: (previousValue: U, currentValue: number, currentIndex: int, array: Uint8Array) => U, initialValue: U): U', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_forEach', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i ;
      }
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.forEach((value: number, index: number, array: Uint8Array): void => { let sum = value + index; });
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_forEach: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'forEach',
        'forEach(callbackfn: (value: number, index: int, array: Uint8Array) => void): void', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_static_of', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result: Uint8Array = Uint8Array.of(1, 2, 3, 4, 5);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = Uint8Array.of(1, 2, 3, 4, 5);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_static_of: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'static_of',
        'static of(...items: FixedArray<byte>): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_static_from_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let srcArr: number[] = [];
      for (let i = 0; i < 100; i++) {
        srcArr.push(i);
      }
      let makeFromArray = (): Uint8Array => Uint8Array.from(srcArr);
      let result: Uint8Array = makeFromArray();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = makeFromArray();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_static_from_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'static_from_array',
        'static from(arr: Array<int>): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_static_from_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let srcArr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        srcArr[i] = i ;
      }
      let makeFromTypedArray = (): Uint8Array => Uint8Array.from(srcArr);
      let result: Uint8Array = makeFromTypedArray();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = makeFromTypedArray();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_static_from_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'static_from_typedarray',
        'static from(arr: Uint8Array): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_Constructor_copy', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let srcArr: Uint8Array = new Uint8Array(100);
      for (let i = 0; i < 100; i++) {
        srcArr[i] = i ;
      }
      let result: Uint8Array = new Uint8Array(srcArr);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = new Uint8Array(srcArr);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_Constructor_copy: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'constructor_copy',
        'constructor(other: Uint8Array): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_Constructor_buffer', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let buf: ArrayBuffer = new ArrayBuffer(100);
      let result: Uint8Array = new Uint8Array(buf);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = new Uint8Array(buf);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_Constructor_buffer: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'constructor_buffer',
        'constructor(buf: ArrayBuffer): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_Constructor_buffer_offset', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let buf: ArrayBuffer = new ArrayBuffer(200);
      let result: Uint8Array = new Uint8Array(buf, 50);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = new Uint8Array(buf, 50);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_Constructor_buffer_offset: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'constructor_buffer_offset',
        'constructor(buf: ArrayBuffer, byteOffset: int): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Uint8Array_Constructor_buffer_offset_length', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let buf: ArrayBuffer = new ArrayBuffer(200);
      let result: Uint8Array = new Uint8Array(buf, 50, 100);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = new Uint8Array(buf, 50, 100);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Uint8Array_Constructor_buffer_offset_length: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Uint8Array', 'constructor_buffer_offset_length',
        'constructor(buf: ArrayBuffer, byteOffset: int, length: int): Uint8Array', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

  })
}