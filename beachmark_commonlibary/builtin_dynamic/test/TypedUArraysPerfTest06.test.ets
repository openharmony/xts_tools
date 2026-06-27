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

export default function TypedUArraysPerfTest06(): void {
  describe('TypedUArraysPerfTest06', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    });

    it('PerformanceTest_Uint8ClampedArray_Constructor_FixedArrayInt', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let result: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray Constructor_FixedArrayInt: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'constructor', 'constructor(array: number[])', arkTsAveragedTime);
        expect(result.length === 5).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_Constructor_IterableNumber', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let iter: number[] = [1, 2, 3, 4, 5];
        let result: Uint8ClampedArray = new Uint8ClampedArray(iter);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = new Uint8ClampedArray(iter);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray Constructor_IterableNumber: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'constructor', 'constructor(iterable: Iterable<number>)', arkTsAveragedTime);
        expect(result.length === 5).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_Constructor_ArrayBufferLike', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buf = new ArrayBuffer(100);
        let result: Uint8ClampedArray = new Uint8ClampedArray(buf, 10, 50);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = new Uint8ClampedArray(buf, 10, 50);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray Constructor_ArrayBufferLike: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'constructor', 'constructor(buffer: ArrayBuffer, byteOffset: number, length: number)', arkTsAveragedTime);
        expect(result.byteLength === 50).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_Constructor_ArrayBufferNumber', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buf = new ArrayBuffer(100);
        let result: Uint8ClampedArray = new Uint8ClampedArray(buf, 10);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = new Uint8ClampedArray(buf, 10);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray Constructor_ArrayBufferNumber: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'constructor', 'constructor(buffer: ArrayBuffer, byteOffset: number)', arkTsAveragedTime);
        expect(result.byteOffset === 10).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_Constructor_ArrayLikeBuffer', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buf = new ArrayBuffer(100);
        let result: Uint8ClampedArray = new Uint8ClampedArray(buf);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = new Uint8ClampedArray(buf);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray Constructor_ArrayLikeBuffer: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'constructor', 'constructor(buffer: ArrayBuffer)', arkTsAveragedTime);
        expect(result.byteLength === 100).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_buffer', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray(100);
        let res = arr.buffer;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.buffer;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray buffer: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'buffer', 'buffer: ArrayBuffer', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_byteLength', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray(100);
        let res: number = arr.byteLength;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.byteLength;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray byteLength: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'byteLength', 'byteLength: number', arkTsAveragedTime);
        expect(res === 100).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_byteOffset', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buf = new ArrayBuffer(100);
        let arr: Uint8ClampedArray = new Uint8ClampedArray(buf, 10, 50);
        let res: number = arr.byteOffset;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.byteOffset;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray byteOffset: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'byteOffset', 'byteOffset: number', arkTsAveragedTime);
        expect(res === 10).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_BYTES_PER_ELEMENT', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: number = Uint8ClampedArray.BYTES_PER_ELEMENT;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Uint8ClampedArray.BYTES_PER_ELEMENT;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray BYTES_PER_ELEMENT: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'BYTES_PER_ELEMENT', 'static BYTES_PER_ELEMENT: number', arkTsAveragedTime);
        expect(res === 1).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_length', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray(100);
        let res: number = arr.length;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.length;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray length: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'length', 'length: number', arkTsAveragedTime);
        expect(res === 100).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_copyWithin_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          arr.copyWithin(2, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = arr;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray copyWithin_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'copyWithin', 'copyWithin(target: number, start?: number, end?: number): this', arkTsAveragedTime);
        expect(arr[2] === 1).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_fill_number', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray(100);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          arr.fill(42, 0, 50);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = arr;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray fill_number: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'fill', 'fill(value: number, start?: number, end?: number): this', arkTsAveragedTime);
        expect(arr[0] === 42).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_set_int_number', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray(100);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          arr[99] = 10;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = arr;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray set_int_number: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'set', 'set(index: number, value: number): void', arkTsAveragedTime);
        expect(arr[99] === 10).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_set_FixedArrayInt', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray(100);
        let src = [1, 2, 3, 4, 5];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          arr.set(src, 10);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = arr;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray set_FixedArrayInt: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'set', 'set(array: number[], offset?: number): void', arkTsAveragedTime);
        expect(arr[10] === 1).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_set_FixedArrayNumber', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray(100);
        let src = [1, 2, 3, 4, 5];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          arr.set(src, 10);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = arr;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray set_FixedArrayNumber: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'set', 'set(array: number[], offset?: number): void', arkTsAveragedTime);
        expect(arr[10] === 1).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_set_Uint8ClampedArray', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray(100);
        let srcArr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          arr.set(srcArr);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = arr;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray set_Uint8ClampedArray: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'set', 'set(array: Uint8ClampedArray, offset?: number): void', arkTsAveragedTime);
        expect(arr[0] === 1).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_set_ArrayLike', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray(100);
        let srcArr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          arr.set(srcArr, 10);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = arr;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray set_ArrayLike: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'set', 'set(array: Uint8ClampedArray, offset?: number): void', arkTsAveragedTime);
        expect(arr[10] === 1).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_of_empty', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let result: Uint8ClampedArray = Uint8ClampedArray.of();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = Uint8ClampedArray.of();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray of_empty: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'of', 'static of(...items: number[]): Uint8ClampedArray', arkTsAveragedTime);
        expect(result.length === 0).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_of_FixedArrayShort', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let result: Uint8ClampedArray = Uint8ClampedArray.of(1, 2, 3, 4, 5);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = Uint8ClampedArray.of(1, 2, 3, 4, 5);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray of_FixedArrayShort: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'of', 'static of(...items: number[]): Uint8ClampedArray', arkTsAveragedTime);
        expect(result.length === 5).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_of_FixedArrayNumber', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let result: Uint8ClampedArray = Uint8ClampedArray.of(1, 2, 3, 4, 5);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = Uint8ClampedArray.of(1, 2, 3, 4, 5);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray of_FixedArrayNumber: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'of', 'static of(...items: number[]): Uint8ClampedArray', arkTsAveragedTime);
        expect(result.length === 5).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_from_FixedArrayInt', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let srcArr = [1, 2, 3, 4, 5];
        let result: Uint8ClampedArray = Uint8ClampedArray.from(srcArr);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = Uint8ClampedArray.from(srcArr);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray from_FixedArrayInt: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'from', 'static from(array: number[]): Uint8ClampedArray', arkTsAveragedTime);
        expect(result.length === 5).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_from_ArrayLike', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let srcArr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: Uint8ClampedArray = Uint8ClampedArray.from(srcArr);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = Uint8ClampedArray.from(srcArr);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray from_ArrayLike: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'from', 'static from(array: Uint8ClampedArray): Uint8ClampedArray', arkTsAveragedTime);
        expect(result.length === 5).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_from_IterableCB', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let srcArr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: Uint8ClampedArray = Uint8ClampedArray.from(srcArr, (v: number) => v * 2);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = Uint8ClampedArray.from(srcArr, (v: number) => v * 2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray from_IterableCB: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'from', 'static from(array: Uint8ClampedArray, mapFn: (v: number) => number): Uint8ClampedArray', arkTsAveragedTime);
        expect(result[0] === 2).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_includes_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: boolean = arr.includes(3, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.includes(3, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray includes_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'includes', 'includes(searchElement: number, fromIndex?: number): boolean', arkTsAveragedTime);
        expect(result).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_includes_number', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: boolean = arr.includes(3, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.includes(3, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray includes_number: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'includes', 'includes(searchElement: number, fromIndex?: number): boolean', arkTsAveragedTime);
        expect(result).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_indexOf_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: number = arr.indexOf(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.indexOf(3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray indexOf_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'indexOf', 'indexOf(searchElement: number, fromIndex?: number): number', arkTsAveragedTime);
        expect(result === 2).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_indexOf_number', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: number = arr.indexOf(3, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.indexOf(3, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray indexOf_number: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'indexOf', 'indexOf(searchElement: number, fromIndex?: number): number', arkTsAveragedTime);
        expect(result === 2).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_lastIndexOf_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: number = arr.lastIndexOf(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.lastIndexOf(3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray lastIndexOf_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'lastIndexOf', 'lastIndexOf(searchElement: number, fromIndex?: number): number', arkTsAveragedTime);
        expect(result === 2).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_lastIndexOf_number', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: number = arr.lastIndexOf(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.lastIndexOf(3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray lastIndexOf_number: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'lastIndexOf', 'lastIndexOf(searchElement: number, fromIndex?: number): number', arkTsAveragedTime);
        expect(result === 2).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_lastIndexOf_number_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: number = arr.lastIndexOf(3, 4);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.lastIndexOf(3, 4);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray lastIndexOf_number_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'lastIndexOf', 'lastIndexOf(searchElement: number, fromIndex?: number): number', arkTsAveragedTime);
        expect(result === 2).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_slice_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: Uint8ClampedArray = arr.slice(2);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.slice(2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray slice_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'slice', 'slice(begin?: number, end?: number): Uint8ClampedArray', arkTsAveragedTime);
        expect(result.length === 3).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_sort_noArg', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([5, 2, 3, 1, 4]);
        let result: Uint8ClampedArray = arr.sort();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.sort();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray sort_noArg: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'sort', 'sort(compareFn?: (a: number, b: number) => number): this', arkTsAveragedTime);
        expect(result[0] === 1).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_sort_compareFn', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([5, 2, 3, 1, 4]);
        let result: Uint8ClampedArray = arr.sort((a: number, b: number) => a - b);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.sort((a: number, b: number) => a - b);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray sort_compareFn: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'sort', 'sort(compareFn?: (a: number, b: number) => number): this', arkTsAveragedTime);
        expect(result[0] === 1).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_entries', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let res = arr.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray entries: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'entries', 'entries(): IterableIterator<[number, number]>', arkTsAveragedTime);
        expect(res.next().value[0] === 0).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_keys', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let res = arr.keys();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.keys();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray keys: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'keys', 'keys(): IterableIterator<number>', arkTsAveragedTime);
        expect(res.next().value === 0).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_values', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let res = arr.values();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.values();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray values: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'values', 'values(): IterableIterator<number>', arkTsAveragedTime);
        expect(res.next().value === 1).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_join', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let res: string = arr.join(',');
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.join(',');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray join: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'join', 'join(separator?: string): string', arkTsAveragedTime);
        expect(res === '1,2,3,4,5').assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_reverse', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let res: Uint8ClampedArray = arr.reverse();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.reverse();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray reverse: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'reverse', 'reverse(): this', arkTsAveragedTime);
        expect(res[0] === 5).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_subarray', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let res: Uint8ClampedArray = arr.subarray(1, 3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.subarray(1, 3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray subarray: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'subarray', 'subarray(begin?: number, end?: number): Uint8ClampedArray', arkTsAveragedTime);
        expect(res.length === 2).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_toString', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let res: string = arr.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray toString: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'toString', 'toString(): string', arkTsAveragedTime);
        expect(res === '1,2,3,4,5').assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_some', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: boolean = arr.some((v: number) => v > 3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.some((v: number) => v > 3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray some: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'some', 'some(predicate: (value: number, index: number, array: Uint8ClampedArray) => boolean): boolean', arkTsAveragedTime);
        expect(result).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_every', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: boolean = arr.every((v: number) => v > 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.every((v: number) => v > 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray every: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'every', 'every(predicate: (value: number, index: number, array: Uint8ClampedArray) => boolean): boolean', arkTsAveragedTime);
        expect(result).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_find', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: number | undefined = arr.find((v: number) => v > 3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.find((v: number) => v > 3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray find: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'find', 'find(predicate: (value: number, index: number, obj: Uint8ClampedArray) => boolean): number | undefined', arkTsAveragedTime);
        expect(result === 4).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_findIndex', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: number = arr.findIndex((v: number) => v > 3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.findIndex((v: number) => v > 3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray findIndex: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'findIndex', 'findIndex(predicate: (value: number, index: number, obj: Uint8ClampedArray) => boolean): number', arkTsAveragedTime);
        expect(result === 3).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_filter', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: Uint8ClampedArray = arr.filter((v: number) => v > 2);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.filter((v: number) => v > 2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray filter: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'filter', 'filter(predicate: (value: number, index: number, array: Uint8ClampedArray) => boolean): Uint8ClampedArray', arkTsAveragedTime);
        expect(result.length === 3).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_map', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: Uint8ClampedArray = arr.map((v: number) => v * 2);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.map((v: number) => v * 2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray map: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'map', 'map(callbackfn: (value: number, index: number, array: Uint8ClampedArray) => number): Uint8ClampedArray', arkTsAveragedTime);
        expect(result[0] === 2).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_reduce', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: number = arr.reduce((prev: number, curr: number) => prev + curr, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.reduce((prev: number, curr: number) => prev + curr, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray reduce: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'reduce', 'reduce(callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: Uint8ClampedArray) => number, initialValue: number): number', arkTsAveragedTime);
        expect(result === 15).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_reduceRight', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: number = arr.reduceRight((prev: number, curr: number) => prev + curr, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.reduceRight((prev: number, curr: number) => prev + curr, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray reduceRight: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'reduceRight', 'reduceRight(callbackfn: (previousValue: number, currentValue: number, currentIndex: number, array: Uint8ClampedArray) => number, initialValue: number): number', arkTsAveragedTime);
        expect(result === 15).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_forEach', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let count = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          arr.forEach((v: number) => { count = count + v; });
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = arr;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray forEach: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'forEach', 'forEach(callbackfn: (value: number, index: number, array: Uint8ClampedArray) => void): void', arkTsAveragedTime);
        expect(count > 0).assertTrue();
        done();
      })

    it('PerformanceTest_Uint8ClampedArray_some_full', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Uint8ClampedArray = new Uint8ClampedArray([1, 2, 3, 4, 5]);
        let result: boolean = arr.some((v: number, i: number, a: Uint8ClampedArray): boolean => v > 3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = arr.some((v: number, i: number, a: Uint8ClampedArray): boolean => v > 3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Uint8ClampedArray some_full: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint8ClampedArray', 'some', 'some(predicate: (value: number, index: number, array: Uint8ClampedArray) => boolean): boolean', arkTsAveragedTime);
        expect(result).assertTrue();
        done();
      })
  })
}