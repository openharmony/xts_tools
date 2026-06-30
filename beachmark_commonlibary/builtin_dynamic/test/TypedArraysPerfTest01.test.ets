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
  TestType,
  Size,
  Level,
  beforeAll,
  afterAll,
  beforeEach,
  afterEach,
  expect
} from "@ohos/hypium";
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function TypedArraysPerfTest01(): void {
  describe('TypedArraysPerfTest01', () => {

    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

it('PerformanceTest_Int16Array_copyWithin', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.copyWithin(0, 2, 5);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array copyWithin: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'copyWithin', 'copyWithin(target: int, start?: int, end?: int): this', arkTsAveragedTime);

      expect(res1[0] === 5 && arr[1] === 4 && arr[2] === 5).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_entries', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res = arr.entries();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.entries();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array entries: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'entries', 'entries(): IterableIterator<[int, short]>', arkTsAveragedTime);

      expect(res1.next().done === false).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_fill', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array(100);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.fill(10 as number, 0, 50);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array fill: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'fill', 'fill(value: short, start?: int, end?: int): this', arkTsAveragedTime);

      expect(res1[0] === 10 && arr[49] === 10 && arr[50] === 0).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_set_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array(100);
      let srcArr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.set(srcArr, 10);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array set_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'set', 'set(arr: TypedArray, offset?: int): void', arkTsAveragedTime);

      expect(res1[10] === 1 && arr[14] === 5).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_includes', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res: boolean = arr.includes(3);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.includes(3);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array includes: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'includes', 'includes(searchElement: short, fromIndex?: int): boolean', arkTsAveragedTime);

      expect(res1).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_indexOf', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res: number = arr.indexOf(3);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.indexOf(3);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array indexOf: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'indexOf', 'indexOf(searchElement: short, fromIndex?: int): int', arkTsAveragedTime);

      expect(res1 === 2).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_join', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res: string = arr.join(',');
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.join(',');
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array join: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'join', 'join(separator?: String): string', arkTsAveragedTime);

      expect(res1 === '1,2,3,4,5').assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_lastIndexOf', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res: number = arr.lastIndexOf(3);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.lastIndexOf(3);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array lastIndexOf: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'lastIndexOf', 'lastIndexOf(searchElement: short, fromIndex?: int): int', arkTsAveragedTime);

      expect(res1 === 2).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_reverse', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res: Int16Array = arr.reverse();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.reverse();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array reverse: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'reverse', 'reverse(): this', arkTsAveragedTime);

      expect(res1.length === 5).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_slice', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res: Int16Array = arr.slice(1, 3);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.slice(1, 3);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array slice: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'slice', 'slice(begin?: int, end?: int): this', arkTsAveragedTime);

      expect(res1.length === 2 && res[0] === 2 && res[1] === 3).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_subarray', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res: Int16Array = arr.subarray(1, 3);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.subarray(1, 3);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array subarray: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'subarray', 'subarray(begin?: int, end?: int): this', arkTsAveragedTime);

      expect(res1.length === 2 && res[0] === 2 && res[1] === 3).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_toString', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res: string = arr.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array toString: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'toString', 'toString(): string', arkTsAveragedTime);

      expect(res1 === '1,2,3,4,5').assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_keys', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res: IterableIterator<number> = arr.keys();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.keys();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array keys: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'keys', 'keys(): IterableIterator<int>', arkTsAveragedTime);

      expect(res1.next().value === 0).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_values', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res = arr.values();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.values();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array values: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'values', 'values(): IterableIterator<short>', arkTsAveragedTime);

      expect(res1.next().value === 1).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_some', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res: boolean = arr.some((v) => v > 3);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.some((v) => v > 3);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array some: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'some', 'some(predicate: (v, i, arr) => boolean): boolean', arkTsAveragedTime);

      expect(res1).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_every', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res: boolean = arr.every((v) => v > 0);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.every((v) => v > 0);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array every: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'every', 'every(predicate: (v, i, arr) => boolean): boolean', arkTsAveragedTime);

      expect(res1).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_find', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res = arr.find((v) => v > 3);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.find((v) => v > 3);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array find: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'find', 'find(predicate: (v, i, arr) => boolean): short | undefined', arkTsAveragedTime);

      expect(res1 === 4).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_findIndex', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res: number = arr.findIndex((v) => v > 3);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.findIndex((v) => v > 3);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array findIndex: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'findIndex', 'findIndex(predicate: (v, i, arr) => boolean): int', arkTsAveragedTime);

      expect(res1 === 3).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_filter', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res: Int16Array = arr.filter((v) => v > 2);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.filter((v) => v > 2);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array filter: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'filter', 'filter(fn: (v, i, arr) => boolean): this', arkTsAveragedTime);

      expect(res1.length === 3 && res[0] === 3 && res[2] === 5).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_map', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res: Int16Array = arr.map((v) => v * 2);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.map((v) => v * 2);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array map: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'map', 'map(fn: (v, i, arr) => short): this', arkTsAveragedTime);

      expect(res1.length === 5 && res[0] === 2 && res[4] === 10).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_reduce', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res: number = arr.reduce((previousValue: number, currentValue: number, currentIndex: number, array: Int16Array): number => {
        return previousValue + currentValue;
      }, 0);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.reduce((previousValue: number, currentValue: number, currentIndex: number, array: Int16Array): number => previousValue + currentValue, 0);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array reduce: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'reduce', 'reduce(callbackfn: (previousValue: U, currentValue: number, currentIndex: int, array: Int16Array) => U, initialValue: U): U', arkTsAveragedTime);

      expect(res1 === 15).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_reduceRight', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let res: number = arr.reduceRight((previousValue: number, currentValue: number, currentIndex: number, array: Int16Array): number => {
        return previousValue + currentValue;
      }, 0);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.reduceRight((previousValue: number, currentValue: number, currentIndex: number, array: Int16Array): number => previousValue + currentValue, 0);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array reduceRight: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'reduceRight', 'reduceRight(callbackfn: (previousValue: U, currentValue: number, currentIndex: int, array: Int16Array) => U, initialValue: U): U', arkTsAveragedTime);

      expect(res1 === 15).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_forEach', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.forEach((v) => { let x = v; });
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array forEach: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'forEach', 'forEach(callbackfn: (v, i, arr) => void): void', arkTsAveragedTime);

      expect(res1.length === 5 && arr[0] === 1 && arr[4] === 5).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_sort', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arrays: Int16Array[] = [];
      for (let j = 0; j < BASE_COUNT; j++) {
        arrays.push(new Int16Array([5, 2, 3, 1, 4]));
      }
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arrays[i].sort();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arrays[BASE_COUNT - 1];
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array sort: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'sort', 'sort(compareFn?: (a, b) => int): this', arkTsAveragedTime);

      expect(res1[0] === 1 && res[4] === 5).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_static_of', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: Int16Array = Int16Array.of(1 as number, 2 as number, 3 as number, 4 as number, 5 as number);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Int16Array.of(1 as number, 2 as number, 3 as number, 4 as number, 5 as number);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array static_of: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'static_of', 'static of(...items: FixedArray<short>): Int16Array', arkTsAveragedTime);

      expect(res1.length === 5 && res[0] === 1 && res[4] === 5).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_static_from_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let srcArr: Array<number> = new Array<number>();
      for (let i = 0; i < 100; i++) {
        srcArr.push(i);
      }
      let makeFromArray = (): Int16Array => Int16Array.from(srcArr);
      let res: Int16Array = makeFromArray();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = makeFromArray();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array static_from_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'static_from_array', 'static from(arr: Array<number>): Int16Array', arkTsAveragedTime);

      expect(res1.length === 100 && res[99] === 99).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_static_from_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let srcArr: Int16Array = new Int16Array(100);
      let shortVar = 1;
      for (let i = 0; i < 100; i++) {
        srcArr[i] = shortVar;
      }
      let makeFromTypedArray = (): Int16Array => Int16Array.from(srcArr);
      let res: Int16Array = makeFromTypedArray();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = makeFromTypedArray();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array static_from_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'static_from_typedArray', 'static from(arr: TypedArray): Int16Array', arkTsAveragedTime);

      expect(res1.length === 100 && res[99] === 1).assertTrue();
      done();
    })

    it('PerformanceTest_Int16Array_static_from_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let srcArr: Array<number> = [1, 2, 3, 4, 5];
      let makeFromIterable = (): Int16Array => Int16Array.from(srcArr);
      let res: Int16Array = makeFromIterable();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = makeFromIterable();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int16Array static_from_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'static_from_iterable', 'static from(iterable: Iterable<number>): Int16Array', arkTsAveragedTime);

      expect(res1.length === 5 && res[0] === 1 && res[4] === 5).assertTrue();
      done();
    })
  })
}