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

it('PerformanceTest_BigUint64Array_Constructor_ArrayBufferLike', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let buf: ArrayBuffer = new ArrayBuffer(800);
      let result = new BigUint64Array(buf, 8, 98);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = new BigUint64Array(buf, 8, 98);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array Constructor_ArrayBufferLike: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'constructor', 'constructor(ArrayBufferLike, int, int): void', arkTsAveragedTime);
      expect(res1.length === 98 && result.byteOffset === 8).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_Constructor_ArrayBufferNumber', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let buf: ArrayBuffer = new ArrayBuffer(800);
      let result = new BigUint64Array(buf, 96 as number);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = new BigUint64Array(buf, 96 as number);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array Constructor_ArrayBufferNumber: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'constructor', 'constructor(ArrayBuffer, number): void', arkTsAveragedTime);
      expect(res1.byteOffset === 96).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_Constructor_ArrayLikeBuffer', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let buf: ArrayBuffer = new ArrayBuffer(800);
      let result = new BigUint64Array(buf);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = new BigUint64Array(buf);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array Constructor_ArrayLikeBuffer: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'constructor', 'constructor(ArrayLike<Number> | ArrayBuffer): void', arkTsAveragedTime);
      expect(res1.length === 100).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_byteOffset_method', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let buf: ArrayBuffer = new ArrayBuffer(800);
      let arr: BigUint64Array = new BigUint64Array(buf, 160, 40);
      let result: number = arr.byteOffset;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr.byteOffset;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array byteOffset_method: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'byteOffset', 'byteOffset(): int', arkTsAveragedTime);
      expect(res1 === 160).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_byteLength_method', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array(100);
      let result: number = arr.byteLength;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr.byteLength;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array byteLength_method: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'byteLength', 'byteLength(): int', arkTsAveragedTime);
      expect(res1 === 800).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_length_method', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array(100);
      let result: number = arr.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = arr.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array length_method: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'length', 'length(): int', arkTsAveragedTime);
      expect(res1 === 100).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_copyWithin_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let originalData: bigint[] = [1n, 2n, 3n, 4n, 5n];
      let arr: BigUint64Array = new BigUint64Array(originalData);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.copyWithin(2, 0);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array copyWithin_int: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'copyWithin', 'copyWithin(int): BigUint64Array', arkTsAveragedTime);
      expect(res1[2] === 1n && arr[3] === 2n).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_fill_long', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array(100);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.fill(42n, 0 as number, 50 as number);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array fill_long: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'fill', 'fill(long, int, int): BigUint64Array', arkTsAveragedTime);
      expect(res1[0] === 42n && arr[49] === 42n && arr[50] === 0n).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_set_BigUint64Array', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array(100);
      let srcArr: BigUint64Array = new BigUint64Array([1n, 2n, 3n, 4n, 5n]);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.set(srcArr);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array set_BigUint64Array: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'set', 'set(BigUint64Array): void', arkTsAveragedTime);
      expect(res1[0] === 1n && arr[4] === 5n).assertTrue();
      done();
    })

    it('PerformanceTest_BigUint64Array_set_ArrayLike_BigInt', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let arr: BigUint64Array = new BigUint64Array(100);
      let srcArr: BigUint64Array = new BigUint64Array([1n, 2n, 3n, 4n, 5n]);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        arr.set(srcArr, 10);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = arr;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest BigUint64Array set_ArrayLike_BigInt: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BigUint64Array', 'set', 'set(ArrayLike<BigInt>, int = 0): void', arkTsAveragedTime);
      expect(res1[10] === 1n && arr[14] === 5n).assertTrue();
      done();
    })
  })
}