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
  beforeEach,
  afterAll,
  expect
} from "@ohos/hypium";
import performance from './Performance.util';
import { collections } from '@kit.ArkTS';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function TypedArraysPerfTest02(): void {
  describe('TypedArraysPerfTest02', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_Int32Array_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res = new Int32Array();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Int32Array();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'constructor', 'constructor()', arkTsAveragedTime);
      expect(res1.length === 0).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res = new Int32Array(100);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Int32Array(100);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'constructor', 'constructor(length: int)', arkTsAveragedTime);
      expect(res.length === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res = new Int32Array(100);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Int32Array(100);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'constructor', 'constructor(length: number)', arkTsAveragedTime);
      expect(res.length === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_Constructor_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res = new Int32Array([1, 2, 3, 4, 5]);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Int32Array([1, 2, 3, 4, 5]);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array Constructor_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'constructor', 'constructor(numbers: FixedArray<int>)', arkTsAveragedTime);
      expect(res.length === 5).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_Constructor_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = i;
      }
      let res = new Int32Array(arr);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Int32Array(arr);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array Constructor_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'constructor', 'constructor(numbers: Int32Array)', arkTsAveragedTime);
      expect(res.length === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_Constructor_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let buf: ArrayBuffer = new ArrayBuffer(400);
      let res = new Int32Array(buf);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Int32Array(buf);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array Constructor_0800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'constructor', 'constructor(buf: ArrayBuffer)', arkTsAveragedTime);
      expect(res.length === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_Constructor_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let buf: ArrayBuffer = new ArrayBuffer(400);
      let res = new Int32Array(buf, 100);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Int32Array(buf, 100);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array Constructor_0900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'constructor', 'constructor(buf: ArrayBuffer, byteOffset: int)', arkTsAveragedTime);
      expect(res.length === 75).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_Constructor_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let buf: ArrayBuffer = new ArrayBuffer(600);
      let res = new Int32Array(buf, 100, 100);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Int32Array(buf, 100, 100);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array Constructor_1000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'constructor', 'constructor(buf: ArrayBuffer, byteOffset: int, length: int)', arkTsAveragedTime);
      expect(res.length === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_buffer', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array(100);
      let res = arr.buffer;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.buffer;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array buffer: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'buffer', 'buffer: ArrayBuffer', arkTsAveragedTime);
      expect(res.byteLength === 400).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_byteLength', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array(100);
      let res = arr.byteLength;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.byteLength;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array byteLength: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'byteLength', 'byteLength: int', arkTsAveragedTime);
      expect(res === 400).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_byteOffset', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let buf: ArrayBuffer = new ArrayBuffer(600);
      let arr: Int32Array = new Int32Array(buf, 100, 100);
      let res = arr.byteOffset;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.byteOffset;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array byteOffset: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'byteOffset', 'byteOffset: int', arkTsAveragedTime);
      expect(res === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_BYTES_PER_ELEMENT', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res = Int32Array.BYTES_PER_ELEMENT;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Int32Array.BYTES_PER_ELEMENT;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array BYTES_PER_ELEMENT: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'BYTES_PER_ELEMENT', 'static BYTES_PER_ELEMENT: int', arkTsAveragedTime);
      expect(res === 4).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_length', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array(100);
      let res = arr.length;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.length;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array length: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'length', 'length: int', arkTsAveragedTime);
      expect(res === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_at', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: collections.Int32Array = collections.Int32Array.from([1, 2, 3, 4, 5]);
      let res: number | undefined = arr.at(2);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = arr.at(2);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number | undefined = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array at: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'at', 'at(index: int): Number | undefined', arkTsAveragedTime);
      expect(res === 3).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_copyWithin', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.copyWithin(0, 2, 5);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array copyWithin: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'copyWithin', 'copyWithin(target: int, start?: int, end?: int): this', arkTsAveragedTime);
      expect(arr.length === 5).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_entries', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let res = arr.entries();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.entries();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array entries: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'entries', 'entries(): IterableIterator<[int, int]>', arkTsAveragedTime);
      expect(res != null).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_fill', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array(100);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.fill(10, 0, 50);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array fill: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'fill', 'fill(value: int, start?: int, end?: int): this', arkTsAveragedTime);
      expect(arr.length === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_set_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array(100);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        arr[5] = 10;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: Int32Array = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array set_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'set', 'set(insertPos: int, val: int): void', arkTsAveragedTime);
      expect(arr[5] === 10).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_set_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let srcArr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let pools: Int32Array[] = new Array<Int32Array>(BASE_COUNT);
      for (let i: number = 0; i < BASE_COUNT; i++) { pools[i] = new Int32Array(100); }
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        pools[i].set(srcArr, 10);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = pools[0];
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array set_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'set', 'set(arr: TypedArray, offset?: int): void', arkTsAveragedTime);
      expect(res1.length === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_includes', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let res = arr.includes(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.includes(3);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array includes: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'includes', 'includes(searchElement: int, fromIndex?: int): boolean', arkTsAveragedTime);
      expect(res).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_indexOf', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let res = arr.indexOf(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.indexOf(3);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array indexOf: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'indexOf', 'indexOf(searchElement: int, fromIndex?: int): int', arkTsAveragedTime);
      expect(res === 2).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_join', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let res = arr.join(',');
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.join(',');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array join: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'join', 'join(separator?: String): string', arkTsAveragedTime);
      expect(res === '1,2,3,4,5').assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_lastIndexOf', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let res = arr.lastIndexOf(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.lastIndexOf(3);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array lastIndexOf: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'lastIndexOf', 'lastIndexOf(searchElement: int, fromIndex?: int): int', arkTsAveragedTime);
      expect(res === 2).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_reverse', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let res = arr.reverse();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.reverse();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array reverse: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'reverse', 'reverse(): this', arkTsAveragedTime);
      expect(res.length === 5).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_slice', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let res = arr.slice(1, 3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.slice(1, 3);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array slice: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'slice', 'slice(begin?: int, end?: int): this', arkTsAveragedTime);
      expect(res.length === 2).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_subarray', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let res = arr.subarray(1, 3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.subarray(1, 3);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array subarray: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'subarray', 'subarray(begin?: int, end?: int): this', arkTsAveragedTime);
      expect(res.length === 2).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_toReversed', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let res: Int32Array = arr.slice().reverse();
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = arr.slice().reverse();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: Int32Array = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array toReversed: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'toReversed', 'toReversed(): this', arkTsAveragedTime);
      expect(res.length === 5).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_toSorted', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([5, 2, 3, 1, 4]);
      let res: Int32Array = arr.slice().sort();
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = arr.slice().sort();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: Int32Array = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array toSorted: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'toSorted', 'toSorted(): this', arkTsAveragedTime);
      expect(res.length === 5).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_toString', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let res = arr.toString();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.toString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array toString: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'toString', 'toString(): string', arkTsAveragedTime);
      expect(res.length > 0).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_keys', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let res = arr.keys();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.keys();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array keys: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'keys', 'keys(): IterableIterator<int>', arkTsAveragedTime);
      expect(res != null).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_values', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let res = arr.values();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.values();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array values: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'values', 'values(): IterableIterator<int>', arkTsAveragedTime);
      expect(res != null).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_with', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let updateValue = (source: Int32Array): Int32Array => {
        let value = source.slice();
        value[2] = 10;
        return value;
      };
      let res: Int32Array = updateValue(arr);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = updateValue(arr);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: Int32Array = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array with: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'with', 'with(index: int, value: int): this', arkTsAveragedTime);
      expect(res[2] === 10).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_some', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let cmp = (v: number): boolean => v > 3;
      let res = arr.some(cmp);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.some(cmp);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array some: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'some', 'some(predicate: (v, i, arr) => boolean): boolean', arkTsAveragedTime);
      expect(res).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_every', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let cmp = (v: number): boolean => v > 0;
      let res = arr.every(cmp);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.every(cmp);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array every: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'every', 'every(predicate: (v, i, arr) => boolean): boolean', arkTsAveragedTime);
      expect(res).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_find', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let cmp = (v: number): boolean => v > 3;
      let res = arr.find(cmp);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.find(cmp);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array find: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'find', 'find(predicate: (v, i, arr) => boolean): int | undefined', arkTsAveragedTime);
      expect(res === 4).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_findIndex', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let cmp = (v: number): boolean => v > 3;
      let res = arr.findIndex(cmp);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.findIndex(cmp);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array findIndex: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'findIndex', 'findIndex(predicate: (v, i, arr) => boolean): int', arkTsAveragedTime);
      expect(res === 3).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_filter', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let cmp = (v: number): boolean => v > 2;
      let res = arr.filter(cmp);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.filter(cmp);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array filter: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'filter', 'filter(fn: (v, i, arr) => boolean): this', arkTsAveragedTime);
      expect(res.length === 3).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_map', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let cmp = (v: number): number => v * 2;
      let res = arr.map(cmp);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.map(cmp);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array map: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'map', 'map(fn: (v, i, arr) => int): this', arkTsAveragedTime);
      expect(res.length === 5).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_reduce', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let cmp = (previousValue: number, currentValue: number, currentIndex: number, array: Int32Array): number => {
        return previousValue + currentValue;
      };
      let res = arr.reduce(cmp, 0);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.reduce(cmp, 0);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array reduce: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'reduce', 'reduce(callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: Int32Array) => U, initialValue: U): U', arkTsAveragedTime);
      expect(res === 15).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_reduceRight', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let cmp = (previousValue: number, currentValue: number, currentIndex: number, array: Int32Array): number => {
        return previousValue + currentValue;
      };
      let res = arr.reduceRight(cmp, 0);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.reduceRight(cmp, 0);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array reduceRight: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'reduceRight', 'reduceRight(callbackfn: (previousValue: U, currentValue: number, currentIndex: number, array: Int32Array) => U, initialValue: U): U', arkTsAveragedTime);
      expect(res === 15).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_forEach', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([1, 2, 3, 4, 5]);
      let cmp = (v: number): void => {
        let x = v;
      };
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.forEach(cmp);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array forEach: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'forEach', 'forEach(callbackfn: (v, i, arr) => void): void', arkTsAveragedTime);
      expect(arr.length === 5).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_sort', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: Int32Array = new Int32Array([5, 2, 3, 1, 4]);
      let res = arr.sort();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.sort();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array sort: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'sort', 'sort(compareFn?: (a, b) => int): this', arkTsAveragedTime);
      expect(res.length === 5).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_static_of', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res = Int32Array.of(1, 2, 3, 4, 5);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Int32Array.of(1, 2, 3, 4, 5);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array static_of: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'static_of', 'static of(...items: FixedArray<int>): Int32Array', arkTsAveragedTime);
      expect(res.length === 5).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_static_from_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let srcArr: Array<number> = new Array<number>();
      for (let i = 0; i < 100; i++) {
        srcArr.push(i);
      }
      let pools: Int32Array[] = new Array<Int32Array>(BASE_COUNT);
      for (let i = 0; i < BASE_COUNT; i++) { pools[i] = Int32Array.from(srcArr); }
      let res = pools[0];
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pools[i];
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array static_from_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'static_from_array', 'static from(arr: Array<number>): Int32Array', arkTsAveragedTime);
      expect(res.length === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_static_from_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let srcArr: Int32Array = new Int32Array(100);
      for (let i = 0; i < 100; i++) {
        srcArr[i] = i;
      }
      let pools: Int32Array[] = new Array<Int32Array>(BASE_COUNT);
      for (let i = 0; i < BASE_COUNT; i++) { pools[i] = Int32Array.from(srcArr); }
      let res = pools[0];
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pools[i];
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array static_from_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'static_from_typedArray', 'static from(arr: TypedArray): Int32Array', arkTsAveragedTime);
      expect(res.length === 100).assertTrue();
      done();
    })

    it('PerformanceTest_Int32Array_static_from_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let srcArr: number[] = [1, 2, 3, 4, 5];
      let pools: Int32Array[] = new Array<Int32Array>(BASE_COUNT);
      for (let i = 0; i < BASE_COUNT; i++) { pools[i] = Int32Array.from(srcArr); }
      let res = pools[0];
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pools[i];
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Int32Array static_from_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'static_from_iterable', 'static from(iterable: Iterable<number>): Int32Array', arkTsAveragedTime);
      expect(res.length === 5).assertTrue();
      done();
    })
  })
}