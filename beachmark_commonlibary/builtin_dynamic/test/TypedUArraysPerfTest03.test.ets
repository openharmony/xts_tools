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
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function TypedUArraysPerfTest03(): void {
  describe('TypedUArraysPerfTest03', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {

    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_BigUint64Array_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: BigUint64Array = new BigUint64Array();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new BigUint64Array();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'constructor', 'constructor()', arkTsAveragedTime);
      expect(res1.length === 0).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: BigUint64Array = new BigUint64Array(100);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new BigUint64Array(100);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'constructor', 'constructor(length: number)', arkTsAveragedTime);
      expect(res1.length === 100).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: BigUint64Array = new BigUint64Array(100 as number);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new BigUint64Array(100 as number);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'constructor', 'constructor(length: number)', arkTsAveragedTime);
      expect(res1.length === 100).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_Constructor_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let srcArr: BigUint64Array = new BigUint64Array(100);
      let res: BigUint64Array = new BigUint64Array(srcArr);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new BigUint64Array(srcArr);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array Constructor_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'constructor', 'constructor(other: TypedArray)', arkTsAveragedTime);
      expect(res1.length === 100).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_Constructor_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array Constructor_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'constructor', 'constructor(numbers: FixedArray<bigint>)', arkTsAveragedTime);
      expect(res1.length === 5 && res1[0] === BigInt(1) && res1[4] === BigInt(5)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_Constructor_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array(100);
      for (let i = 0; i < 100; i++) {
        arr[i] = BigInt(i);
      }
      let res: BigUint64Array = new BigUint64Array(arr);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new BigUint64Array(arr);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array Constructor_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'constructor', 'constructor(numbers: BigUint64Array)', arkTsAveragedTime);
      expect(res1.length === 100 && res1[99] === BigInt(99)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_Constructor_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let buf: ArrayBuffer = new ArrayBuffer(800);
      let res: BigUint64Array = new BigUint64Array(buf);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new BigUint64Array(buf);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array Constructor_0800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'constructor', 'constructor(buf: ArrayBuffer)', arkTsAveragedTime);
      expect(res1.length === 100 && res1.byteLength === 800).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_Constructor_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let buf: ArrayBuffer = new ArrayBuffer(800);
      let res: BigUint64Array = new BigUint64Array(buf, 96);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new BigUint64Array(buf, 96);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array Constructor_0900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'constructor', 'constructor(buf: ArrayBuffer, byteOffset: number)', arkTsAveragedTime);
      expect(res1.byteOffset === 96 && res1.length === 88).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_Constructor_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let buf: ArrayBuffer = new ArrayBuffer(800);
      let res: BigUint64Array = new BigUint64Array(buf, 96, 88);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new BigUint64Array(buf, 96, 88);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array Constructor_1000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'constructor', 'constructor(buf: ArrayBuffer, byteOffset: number, length: number)', arkTsAveragedTime);
      expect(res1.byteOffset === 96 && res1.length === 88).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_byteLength', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array(100);
      let res: number = arr.byteLength;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.byteLength;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array byteLength: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'byteLength', 'byteLength: number', arkTsAveragedTime);
      expect(res1 === 800).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_byteOffset', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let buf: ArrayBuffer = new ArrayBuffer(800);
      let arr: BigUint64Array = new BigUint64Array(buf, 96, 88);
      let res: number = arr.byteOffset;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.byteOffset;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array byteOffset: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'byteOffset', 'byteOffset: number', arkTsAveragedTime);
      expect(res1 === 96).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_BYTES_PER_ELEMENT', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: number = BigUint64Array.BYTES_PER_ELEMENT;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigUint64Array.BYTES_PER_ELEMENT;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array BYTES_PER_ELEMENT: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'BYTES_PER_ELEMENT', 'static BYTES_PER_ELEMENT: number', arkTsAveragedTime);
      expect(res1 === 8).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_length', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array(100);
      let res: number = arr.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array length: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'length', 'length: number', arkTsAveragedTime);
      expect(res1 === 100).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_copyWithin', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        arr.copyWithin(0, 2, 5);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let checkArr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res1: BigUint64Array = checkArr.copyWithin(0, 2, 5);
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array copyWithin: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'copyWithin', 'copyWithin(target: number, start?: number, end?: number): this', arkTsAveragedTime);
      expect(
        res1[0] === BigInt(3) &&
          res1[1] === BigInt(4) &&
          res1[2] === BigInt(5) &&
          res1[3] === BigInt(4) &&
          res1[4] === BigInt(5)
      ).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_entries', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: IterableIterator<[number, bigint]> = arr.entries();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.entries();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array entries: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'entries', 'entries(): IterableIterator<[number, bigint]>', arkTsAveragedTime);
      let entryResult = res1.next();
      expect(entryResult.value[0] === 0 && entryResult.value[1] === BigInt(1)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_fill', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array(100);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.fill(BigInt(10), 0, 50);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array fill: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'fill', 'fill(value: bigint, start?: number, end?: number): this', arkTsAveragedTime);
      expect(res1[0] === BigInt(10) && res1[49] === BigInt(10) && res1[50] === BigInt(0)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_set_typed', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array(100);
      let srcArr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.set(srcArr, 10);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array set_typed: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'set', 'set(arr: TypedArray, offset?: number): void', arkTsAveragedTime);
      expect(res1[10] === BigInt(1) && res1[14] === BigInt(5)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_includes', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: boolean = arr.includes(BigInt(3));
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.includes(BigInt(3));
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array includes: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'includes', 'includes(searchElement: bigint, fromIndex?: number): boolean', arkTsAveragedTime);
      expect(res1 === true).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_indexOf', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: number = arr.indexOf(BigInt(3));
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.indexOf(BigInt(3));
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array indexOf: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'indexOf', 'indexOf(searchElement: bigint, fromIndex?: number): number', arkTsAveragedTime);
      expect(res1 === 2).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_join', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: string = arr.join(',');
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.join(',');
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array join: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'join', 'join(separator?: String): string', arkTsAveragedTime);
      expect(res1 === "1,2,3,4,5").assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_lastIndexOf', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: number = arr.lastIndexOf(BigInt(3));
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.lastIndexOf(BigInt(3));
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array lastIndexOf: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'lastIndexOf', 'lastIndexOf(searchElement: bigint, fromIndex?: number): number', arkTsAveragedTime);
      expect(res1 === 2).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_reverse', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: BigUint64Array = arr.reverse();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.reverse();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array reverse: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'reverse', 'reverse(): this', arkTsAveragedTime);
      expect(res1[0] === BigInt(5) && res1[4] === BigInt(1)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_slice', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: BigUint64Array = arr.slice(1, 3);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.slice(1, 3);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array slice: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'slice', 'slice(begin?: number, end?: number): this', arkTsAveragedTime);
      expect(res1.length === 2 && res1[0] === BigInt(2) && res1[1] === BigInt(3)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_subarray', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: BigUint64Array = arr.subarray(1, 3);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.subarray(1, 3);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array subarray: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'subarray', 'subarray(begin?: number, end?: number): this', arkTsAveragedTime);
      expect(res1.length === 2 && res1[0] === BigInt(2) && res1[1] === BigInt(3)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_toString', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: string = arr.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array toString: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'toString', 'toString(): string', arkTsAveragedTime);
      expect(res1 === "1,2,3,4,5").assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_keys', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: IterableIterator<number> = arr.keys();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.keys();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array keys: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'keys', 'keys(): IterableIterator<number>', arkTsAveragedTime);
      let keyResult = res1.next();
      expect(keyResult.value === 0).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_values', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: IterableIterator<bigint> = arr.values();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.values();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array values: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'values', 'values(): IterableIterator<bigint>', arkTsAveragedTime);
      let valueResult = res1.next();
      expect(valueResult.value === BigInt(1)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_some', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: boolean = arr.some((v: bigint): boolean => v > BigInt(3));
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.some((v: bigint): boolean => v > BigInt(3));
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array some: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'some', 'some(predicate: (v, i, arr) => boolean): boolean', arkTsAveragedTime);
      expect(res1 === true).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_every', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: boolean = arr.every((v: bigint): boolean => v > BigInt(0));
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.every((v: bigint): boolean => v > BigInt(0));
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array every: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'every', 'every(predicate: (v, i, arr) => boolean): boolean', arkTsAveragedTime);
      expect(res1 === true).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_find', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: bigint | undefined = arr.find((v: bigint): boolean => v > BigInt(3));
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.find((v: bigint): boolean => v > BigInt(3));
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array find: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'find', 'find(predicate: (v, i, arr) => boolean): bigint | undefined', arkTsAveragedTime);
      expect(res1 === BigInt(4)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_findIndex', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: number = arr.findIndex((v: bigint): boolean => v > BigInt(3));
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.findIndex((v: bigint): boolean => v > BigInt(3));
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array findIndex: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'findIndex', 'findIndex(predicate: (v, i, arr) => boolean): number', arkTsAveragedTime);
      expect(res1 === 3).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_filter', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: BigUint64Array = arr.filter((v: bigint): boolean => v > BigInt(2));
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.filter((v: bigint): boolean => v > BigInt(2));
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array filter: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'filter', 'filter(fn: (v, i, arr) => boolean): this', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === BigInt(3) && res1[2] === BigInt(5)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_map', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: BigUint64Array = arr.map((v: bigint): bigint => v * BigInt(2));
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.map((v: bigint): bigint => v * BigInt(2));
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array map: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'map', 'map(fn: (v, i, arr) => bigint): this', arkTsAveragedTime);
      expect(res1.length === 5 && res1[0] === BigInt(2) && res1[4] === BigInt(10)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_reduce', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: bigint = arr.reduce((previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigUint64Array): bigint => {
        return previousValue + currentValue;
      }, BigInt(0));
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.reduce((previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigUint64Array): bigint => previousValue + currentValue, BigInt(0));
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array reduce: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'reduce', 'reduce(callbackfn: (previousValue: U, currentValue: bigint, currentIndex: number, array: BigUint64Array) => U, initialValue: U): U', arkTsAveragedTime);
      expect(res1 === BigInt(15)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_reduceRight', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let res: bigint = arr.reduceRight((previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigUint64Array): bigint => {
        return previousValue + currentValue;
      }, BigInt(0));
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.reduceRight((previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigUint64Array): bigint => previousValue + currentValue, BigInt(0));
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array reduceRight: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'reduceRight', 'reduceRight(callbackfn: (previousValue: U, currentValue: bigint, currentIndex: number, array: BigUint64Array) => U, initialValue: U): U', arkTsAveragedTime);
      expect(res1 === BigInt(15)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_forEach', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
      let sum: bigint = BigInt(0);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.forEach((v: bigint): void => { sum += v; });
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array forEach: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'forEach', 'forEach(callbackfn: (v, i, arr) => void): void', arkTsAveragedTime);
      expect(sum === BigInt(BASE_COUNT * 15)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_sort', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array([BigInt(5), BigInt(2), BigInt(3), BigInt(1), BigInt(4)]);
      let res: BigUint64Array = arr.sort();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = arr.sort();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array sort: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'sort', 'sort(compareFn?: (a, b) => number): this', arkTsAveragedTime);
      expect(res1[0] === BigInt(1) && res1[4] === BigInt(5)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_static_of', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: BigUint64Array = BigUint64Array.of(BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5));
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = BigUint64Array.of(BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5));
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array static_of: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'static_of', 'static of(...items: FixedArray<bigint>): BigUint64Array', arkTsAveragedTime);
      expect(res1.length === 5 && res1[0] === BigInt(1) && res1[4] === BigInt(5)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_static_from_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let srcArr: Array<bigint> = new Array<bigint>();
      for (let i = 0; i < 100; i++) {
        srcArr.push(BigInt(i));
      }
      let makeFromArray = (): BigUint64Array => BigUint64Array.from(srcArr);
      let res: BigUint64Array = makeFromArray();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = makeFromArray();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array static_from_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'static_from_array', 'static from(arr: Array<bigint>): BigUint64Array', arkTsAveragedTime);
      expect(res1.length === 100 && res1[99] === BigInt(99)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_static_from_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let srcArr: BigUint64Array = new BigUint64Array(100);
      for (let i = 0; i < 100; i++) {
        srcArr[i] = BigInt(i);
      }
      let makeFromTypedArray = (): BigUint64Array => BigUint64Array.from(srcArr);
      let res: BigUint64Array = makeFromTypedArray();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = makeFromTypedArray();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array static_from_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'static_from_typedArray', 'static from(arr: TypedArray): BigUint64Array', arkTsAveragedTime);
      expect(res1.length === 100 && res1[99] === BigInt(99)).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_static_from_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let srcArr: Array<bigint> = [BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)];
      let makeFromIterable = (): BigUint64Array => BigUint64Array.from(srcArr);
      let res: BigUint64Array = makeFromIterable();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = makeFromIterable();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array static_from_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'static_from_iterable', 'static from(iterable: Iterable<bigint>): BigUint64Array', arkTsAveragedTime);
      expect(res1.length === 5 && res1[0] === BigInt(1) && res1[4] === BigInt(5)).assertTrue();
      done();
    })
  })
}