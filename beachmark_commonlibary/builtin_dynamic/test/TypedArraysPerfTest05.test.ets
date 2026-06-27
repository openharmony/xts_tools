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
  TestType,
  Size,
  Level,
  beforeEach,
  afterAll,
  expect
} from '@ohos/hypium';
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function TypedArraysPerfTest05(): void {
  describe('TypedArraysPerfTest05', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_BigInt64Array_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: BigInt64Array = new BigInt64Array();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new BigInt64Array();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'constructor', 'constructor()', arkTsAveragedTime);
        expect(res1.length === 0).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: BigInt64Array = new BigInt64Array(100);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new BigInt64Array(100);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array Constructor_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'constructor', 'constructor(length: int)', arkTsAveragedTime);
        expect(res1.length === 100).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: BigInt64Array = new BigInt64Array(100 as number);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new BigInt64Array(100 as number);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array Constructor_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'constructor', 'constructor(length: number)', arkTsAveragedTime);
        expect(res1.length === 100).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_Constructor_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let srcArr: BigInt64Array = new BigInt64Array(100);
        let res: BigInt64Array = new BigInt64Array(srcArr);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new BigInt64Array(srcArr);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: BigInt64Array = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array Constructor_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'constructor', 'constructor(other: TypedArray)', arkTsAveragedTime);
        expect(res1.length === srcArr.length).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_Constructor_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array(100);
        for (let i = 0; i < 100; i++) {
          arr[i] = BigInt(i);
        }
        let res: BigInt64Array = new BigInt64Array(arr);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new BigInt64Array(arr);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array Constructor_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'constructor', 'constructor(numbers: BigInt64Array)', arkTsAveragedTime);
        expect(res1.length === arr.length && res1[99] === BigInt(99)).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_Constructor_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceValues: Array<bigint> = [BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)];
        let res: BigInt64Array = new BigInt64Array(sourceValues);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new BigInt64Array(sourceValues);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array Constructor_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'constructor', 'constructor(elements: Iterable<bigint>)', arkTsAveragedTime);
        expect(res1.length === sourceValues.length && res1[0] === BigInt(1)).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_Constructor_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buf: ArrayBuffer = new ArrayBuffer(800);
        let res: BigInt64Array = new BigInt64Array(buf);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new BigInt64Array(buf);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array Constructor_0800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'constructor', 'constructor(buf: ArrayBuffer)', arkTsAveragedTime);
        expect(res1.byteLength === buf.byteLength).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_Constructor_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buf: ArrayBuffer = new ArrayBuffer(800);
        let res: BigInt64Array = new BigInt64Array(buf, 96);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new BigInt64Array(buf, 96);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array Constructor_0900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'constructor', 'constructor(buf: ArrayBuffer, byteOffset: int)', arkTsAveragedTime);
        expect(res1.byteOffset === 96).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_Constructor_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buf: ArrayBuffer = new ArrayBuffer(800);
        let res: BigInt64Array = new BigInt64Array(buf, 96, 88);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new BigInt64Array(buf, 96, 88);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array Constructor_1000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'constructor', 'constructor(buf: ArrayBuffer, byteOffset: int, length: int)', arkTsAveragedTime);
        expect(res1.length === 88).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_buffer', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array(100);
        let res = arr.buffer;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.buffer;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array buffer: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'buffer',
          'buffer: ArrayBuffer', arkTsAveragedTime);
        expect(res1.byteLength === 800).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_byteLength', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array(100);
        let res: number = arr.byteLength;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.byteLength;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array byteLength: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'byteLength', 'byteLength: int', arkTsAveragedTime);
        expect(res1 === 800).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_byteOffset', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buf: ArrayBuffer = new ArrayBuffer(800);
        let arr: BigInt64Array = new BigInt64Array(buf, 96, 88);
        let res: number = arr.byteOffset;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.byteOffset;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array byteOffset: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'byteOffset', 'byteOffset: int', arkTsAveragedTime);
        expect(res1 === 96).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_BYTES_PER_ELEMENT', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: number = BigInt64Array.BYTES_PER_ELEMENT;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = BigInt64Array.BYTES_PER_ELEMENT;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array BYTES_PER_ELEMENT: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'BYTES_PER_ELEMENT', 'static BYTES_PER_ELEMENT: int', arkTsAveragedTime);
        expect(res1 === 8).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_length', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array(100);
        let res: number = arr.length;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.length;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array length: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'length', 'length: int', arkTsAveragedTime);
        expect(res1 === arr.length).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_copyWithin', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let preparedArrays: Array<BigInt64Array> = [];
        let values: Array<bigint> = [BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)];
        for (let i = 0; i < BASE_COUNT; i++) {
          preparedArrays.push(new BigInt64Array(values));
        }
        let res: BigInt64Array = preparedArrays[0];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = preparedArrays[i].copyWithin(0, 2, 5);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: BigInt64Array = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array copyWithin: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'copyWithin', 'copyWithin(target: int, start?: int, end?: int): this', arkTsAveragedTime);
        expect(res1[0] === BigInt(3)).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_entries', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let res: IterableIterator<[number, bigint]> = arr.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array entries: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'entries', 'entries(): IterableIterator<[int, bigint]>', arkTsAveragedTime);
        expect(res1.next().value[0] === 0).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_fill', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let preparedArrays: Array<BigInt64Array> = [];
        let fillValue: bigint = BigInt(10);
        for (let i = 0; i < BASE_COUNT; i++) {
          preparedArrays.push(new BigInt64Array(100));
        }
        let res: BigInt64Array = preparedArrays[0];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = preparedArrays[i].fill(fillValue, 0, 50);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: BigInt64Array = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array fill: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'fill', 'fill(value: bigint, start?: int, end?: int): this', arkTsAveragedTime);
        expect(res1[0] === fillValue).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_set_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let preparedArrays: Array<BigInt64Array> = [];
        for (let i = 0; i < BASE_COUNT; i++) {
          preparedArrays.push(new BigInt64Array(100));
        }
        let insertValue: bigint = BigInt(5);
        let source: BigInt64Array = new BigInt64Array([insertValue]);
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = preparedArrays[i].set(source, 10);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array set_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'set', 'set(arr: TypedArray, offset?: int): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_set_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let preparedArrays: Array<BigInt64Array> = [];
        for (let i = 0; i < BASE_COUNT; i++) {
          preparedArrays.push(new BigInt64Array(100));
        }
        let srcArr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = preparedArrays[i].set(srcArr, 10);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array set_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'set', 'set(arr: TypedArray, offset?: int): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_includes', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let searchValue: bigint = BigInt(3);
        let res: boolean = arr.includes(searchValue);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.includes(searchValue);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array includes: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'includes', 'includes(searchElement: bigint, fromIndex?: int): boolean', arkTsAveragedTime);
        expect(res1).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_indexOf', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let searchValue: bigint = BigInt(3);
        let res: number = arr.indexOf(searchValue);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.indexOf(searchValue);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array indexOf: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'indexOf', 'indexOf(searchElement: bigint, fromIndex?: int): int', arkTsAveragedTime);
        expect(res1 === 2).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_join', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let res: string = arr.join(',');
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.join(',');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array join: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'join', 'join(separator?: String): string', arkTsAveragedTime);
        expect(res1 === '1,2,3,4,5').assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_lastIndexOf', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let searchValue: bigint = BigInt(3);
        let res: number = arr.lastIndexOf(searchValue);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(searchValue);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array lastIndexOf: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'lastIndexOf', 'lastIndexOf(searchElement: bigint, fromIndex?: int): int', arkTsAveragedTime);
        expect(res1 === 2).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_reverse', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let preparedArrays: Array<BigInt64Array> = [];
        let values: Array<bigint> = [BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)];
        for (let i = 0; i < BASE_COUNT; i++) {
          preparedArrays.push(new BigInt64Array(values));
        }
        let res: BigInt64Array = preparedArrays[0];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = preparedArrays[i].reverse();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: BigInt64Array = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array reverse: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'reverse', 'reverse(): this', arkTsAveragedTime);
        expect(res1[0] === BigInt(5)).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_slice', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let res: BigInt64Array = arr.slice(1, 3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.slice(1, 3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array slice: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'slice', 'slice(begin?: int, end?: int): this', arkTsAveragedTime);
        expect(res1.length === 2 && res1[0] === BigInt(2)).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_subarray', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let res: BigInt64Array = arr.subarray(1, 3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.subarray(1, 3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array subarray: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'subarray', 'subarray(begin?: int, end?: int): this', arkTsAveragedTime);
        expect(res1.length === 2 && res1[0] === BigInt(2)).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_toString', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let res: string = arr.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array toString: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'toString', 'toString(): string', arkTsAveragedTime);
        expect(res1 === '1,2,3,4,5').assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_keys', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let res: IterableIterator<number> = arr.keys();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.keys();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array keys: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'keys', 'keys(): IterableIterator<int>', arkTsAveragedTime);
        expect(res1.next().value === 0).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_values', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let res: IterableIterator<bigint> = arr.values();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.values();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array values: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'values', 'values(): IterableIterator<bigint>', arkTsAveragedTime);
        expect(res1.next().value === BigInt(1)).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_some', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let threshold: bigint = BigInt(3);
        let predicate: (v: bigint) => boolean = (v: bigint): boolean => v > threshold;
        let res: boolean = arr.some(predicate);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.some(predicate);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array some: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'some', 'some(predicate: (v, i, arr) => boolean): boolean', arkTsAveragedTime);
        expect(res1).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_every', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let threshold: bigint = BigInt(0);
        let predicate: (v: bigint) => boolean = (v: bigint): boolean => v > threshold;
        let res: boolean = arr.every(predicate);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.every(predicate);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array every: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'every', 'every(predicate: (v, i, arr) => boolean): boolean', arkTsAveragedTime);
        expect(res1).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_find', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let threshold: bigint = BigInt(3);
        let predicate: (v: bigint) => boolean = (v: bigint): boolean => v > threshold;
        let res: bigint | undefined = arr.find(predicate);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.find(predicate);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array find: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'find', 'find(predicate: (v, i, arr) => boolean): bigint | undefined', arkTsAveragedTime);
        expect(res1 === BigInt(4)).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_findIndex', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let threshold: bigint = BigInt(3);
        let predicate: (v: bigint) => boolean = (v: bigint): boolean => v > threshold;
        let res: number = arr.findIndex(predicate);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.findIndex(predicate);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array findIndex: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'findIndex', 'findIndex(predicate: (v, i, arr) => boolean): int', arkTsAveragedTime);
        expect(res1 === 3).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_filter', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let threshold: bigint = BigInt(2);
        let predicate: (v: bigint) => boolean = (v: bigint): boolean => v > threshold;
        let res: BigInt64Array = arr.filter(predicate);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.filter(predicate);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array filter: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'filter', 'filter(fn: (v, i, arr) => boolean): this', arkTsAveragedTime);
        expect(res1.length === 3).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_map', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let factor: bigint = BigInt(2);
        let callback: (v: bigint) => bigint = (v: bigint): bigint => v * factor;
        let res: BigInt64Array = arr.map(callback);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.map(callback);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array map: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'map', 'map(fn: (v, i, arr) => bigint): this', arkTsAveragedTime);
        expect(res1[0] === BigInt(2)).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_reduce', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let initialValue: bigint = BigInt(0);
        let callback: (previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigInt64Array) => bigint =
          (previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigInt64Array): bigint => previousValue + currentValue;
        let res: bigint = arr.reduce(callback, initialValue);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.reduce(callback, initialValue);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array reduce: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'reduce', 'reduce(callbackfn: (previousValue: U, currentValue: bigint, currentIndex: int, array: BigInt64Array) => U, initialValue: U): U', arkTsAveragedTime);
        expect(res1 === BigInt(15)).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_reduceRight', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let initialValue: bigint = BigInt(0);
        let callback: (previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigInt64Array) => bigint =
          (previousValue: bigint, currentValue: bigint, currentIndex: number, array: BigInt64Array): bigint => previousValue + currentValue;
        let res: bigint = arr.reduceRight(callback, initialValue);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.reduceRight(callback, initialValue);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array reduceRight: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'reduceRight', 'reduceRight(callbackfn: (previousValue: U, currentValue: bigint, currentIndex: int, array: BigInt64Array) => U, initialValue: U): U', arkTsAveragedTime);
        expect(res1 === BigInt(15)).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_forEach', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let callbackCount: number = 0;
        let callback: (v: bigint) => void = (v: bigint): void => {
          callbackCount++;
        };
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.forEach(callback);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array forEach: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'forEach', 'forEach(callbackfn: (v, i, arr) => void): void', arkTsAveragedTime);
        expect(res1 === undefined && callbackCount === BASE_COUNT * arr.length).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_sort', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let preparedArrays: Array<BigInt64Array> = [];
        let values: Array<bigint> = [BigInt(5), BigInt(2), BigInt(3), BigInt(1), BigInt(4)];
        for (let i = 0; i < BASE_COUNT; i++) {
          preparedArrays.push(new BigInt64Array(values));
        }
        let res: BigInt64Array = preparedArrays[0];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = preparedArrays[i].sort();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: BigInt64Array = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array sort: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'sort', 'sort(compareFn?: (a, b) => int): this', arkTsAveragedTime);
        expect(res1[0] === BigInt(1)).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_static_of', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let first: bigint = BigInt(1);
        let second: bigint = BigInt(2);
        let third: bigint = BigInt(3);
        let fourth: bigint = BigInt(4);
        let fifth: bigint = BigInt(5);
        let res: BigInt64Array = BigInt64Array.of(first, second, third, fourth, fifth);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = BigInt64Array.of(first, second, third, fourth, fifth);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array static_of: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'of', 'static of(...items: FixedArray<bigint>): BigInt64Array', arkTsAveragedTime);
        expect(res1.length === 5).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_static_from_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let srcArr: Array<bigint> = new Array<bigint>();
        for (let i = 0; i < 100; i++) {
          srcArr.push(BigInt(i));
        }
        let res: BigInt64Array = BigInt64Array.from(srcArr);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = BigInt64Array.from(srcArr);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array static_from_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'from', 'static from(arr: Array<bigint>): BigInt64Array', arkTsAveragedTime);
        expect(res1.length === srcArr.length && res1[99] === BigInt(99)).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_static_from_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let srcArr: BigInt64Array = new BigInt64Array(100);
        for (let i = 0; i < 100; i++) {
          srcArr[i] = BigInt(i);
        }
        let res: BigInt64Array = BigInt64Array.from(srcArr);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = BigInt64Array.from(srcArr);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array static_from_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'from', 'static from(arr: TypedArray): BigInt64Array', arkTsAveragedTime);
        expect(res1.length === srcArr.length && res1[99] === BigInt(99)).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_static_from_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let sourceValues: Array<bigint> = [BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)];
        let res: BigInt64Array = BigInt64Array.from(sourceValues);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = BigInt64Array.from(sourceValues);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array static_from_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'from', 'static from(iterable: Iterable<bigint>): BigInt64Array', arkTsAveragedTime);
        expect(res1.length === sourceValues.length && res1[0] === BigInt(1)).assertTrue();
        done();
      })

  })
}