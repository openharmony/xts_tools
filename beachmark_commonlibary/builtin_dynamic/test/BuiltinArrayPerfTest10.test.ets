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

 export default function BuiltinArrayPerfTest10(): void {
  describe('BuiltinArrayPerfTest10', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_BuiltinArrayTest_37200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Uint8Array = new Uint8Array([1, 2, 3]);
      let result = new Uint8Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().reverse();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_37200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice_reverse',
        'slice().reverse(): Uint8Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 3 && res1[1] === 2 && res1[2] === 1).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_37300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Int16Array = new Int16Array([10, 20, 30]);
      let result = new Int16Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().reverse();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_37300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice_reverse',
        'slice().reverse(): Int16Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 30 && res1[1] === 20 && res1[2] === 10).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_37400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Int32Array = new Int32Array([100, 200, 300]);
      let result = new Int32Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().reverse();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_37400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice_reverse',
        'slice().reverse(): Int32Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 300 && res1[1] === 200 && res1[2] === 100).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_37500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: BigInt64Array = new BigInt64Array([1000n, 2000n, 3000n]);
      let result = new BigInt64Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().reverse();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_37500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice_reverse',
        'slice().reverse(): BigInt64Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 3000n && res1[1] === 2000n && res1[2] === 1000n).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_37600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Float32Array = new Float32Array([1.1, 2.2, 3.3]);
      let result = new Float32Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().reverse();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_37600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice_reverse',
        'slice().reverse(): Float32Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 3.3 && res1[1] === 2.2 && res1[2] === 1.1).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_37700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Float64Array = new Float64Array([1.11, 2.22, 3.33]);
      let result = new Float64Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().reverse();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_37700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice_reverse',
        'slice().reverse(): Float64Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 3.33 && res1[1] === 2.22 && res1[2] === 1.11).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_37900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Uint8Array = new Uint8Array([1, 2, 3]);
      let result = new Uint8Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.reverse();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_37900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reverse',
        'reverse(): Uint8Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 3 && res1[1] === 2 && res1[2] === 1).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_38000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Int16Array = new Int16Array([10, 20, 30]);
      let result = new Int16Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.reverse();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reverse',
        'reverse(): Int16Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 30 && res1[1] === 20 && res1[2] === 10).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_38100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Int32Array = new Int32Array([100, 200, 300]);
      let result = new Int32Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.reverse();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reverse',
        'reverse(): Int32Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 300 && res1[1] === 200 && res1[2] === 100).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_38200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: BigInt64Array = new BigInt64Array([1000n, 2000n, 3000n]);
      let result = new BigInt64Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.reverse();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reverse',
        'reverse(): BigInt64Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 3000n && res1[1] === 2000n && res1[2] === 1000n).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_38300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Float32Array = new Float32Array([1.1, 2.2, 3.3]);
      let result = new Float32Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.reverse();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reverse',
        'reverse(): Float32Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 3.3 && res1[1] === 2.2 && res1[2] === 1.1).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_38400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Float64Array = new Float64Array([1.11, 2.22, 3.33]);
      let result = new Float64Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.reverse();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'reverse',
        'reverse(): Float64Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 3.33 && res1[1] === 2.22 && res1[2] === 1.11).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_38600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Uint8Array = new Uint8Array([3, 1, 2]);
      let result = new Uint8Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().sort((a, b) => a - b);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice_sort',
        'slice().sort(): Uint8Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 1 && res1[1] === 2 && res1[2] === 3).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_38700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Int16Array = new Int16Array([30, 10, 20]);
      let result = new Int16Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().sort((a, b) => a - b);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice_sort',
        'slice().sort(): Int16Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 10 && res1[1] === 20 && res1[2] === 30).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_38800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Int32Array = new Int32Array([300, 100, 200]);
      let result = new Int32Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().sort((a, b) => a - b);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice_sort',
        'slice().sort(): Int32Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 100 && res1[1] === 200 && res1[2] === 300).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_38900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: BigInt64Array = new BigInt64Array([3000n, 1000n, 2000n]);
      let result = new BigInt64Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().sort((a, b) => Number(a - b));
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_38900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice_sort',
        'slice().sort(): BigInt64Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 1000n && res1[1] === 2000n && res1[2] === 3000n).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_39000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Float32Array = new Float32Array([3.3, 1.1, 2.2]);
      let result = new Float32Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().sort((a, b) => a - b);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice_sort',
        'slice().sort(): Float32Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 1.1 && res1[1] === 2.2 && res1[2] === 3.3).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_39100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Float64Array = new Float64Array([3.33, 1.11, 2.22]);
      let result = new Float64Array(3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.slice().sort((a, b) => a - b);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'slice_sort',
        'slice().sort(): Float64Array', arkTsAveragedTime);
      expect(res1.length === 3 && res1[0] === 1.11 && res1[1] === 2.22 && res1[2] === 3.33).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_39300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Uint8Array = new Uint8Array([1, 2, 3]);
      let result = fixArray.values();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.values();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'values',
        'values(): Iterator<byte>', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.next().value === 1).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_39400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Int16Array = new Int16Array([10, 20, 30]);
      let result = fixArray.values();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.values();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'values',
        'values(): Iterator<short>', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.next().value === 10).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_39500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Int32Array = new Int32Array([100, 200, 300]);
      let result = fixArray.values();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.values();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'values',
        'values(): Iterator<number>', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.next().value === 100).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_39600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: BigInt64Array = new BigInt64Array([1000n, 2000n, 3000n]);
      let result = fixArray.values();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.values();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'values',
        'values(): Iterator<long>', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.next().value === 1000n).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_39700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Float32Array = new Float32Array([1.1, 2.2, 3.3]);
      let result = fixArray.values();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.values();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'values',
        'values(): Iterator<float>', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.next().value === 1.1).assertTrue();
      done();
    })

    it('PerformanceTest_BuiltinArrayTest_39800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let fixArray: Float64Array = new Float64Array([1.11, 2.22, 3.33]);
      let result = fixArray.values();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = fixArray.values();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_39800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FixedArray', 'values',
        'values(): Iterator<double>', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== null && res1.next().value === 1.11).assertTrue();
      done();
    })

  })
}