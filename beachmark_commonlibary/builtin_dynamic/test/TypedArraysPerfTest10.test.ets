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
export default function TypedArraysPerfTest10(): void {
  describe('TypedArraysPerfTest10', () => {
    const BASE_COUNT = 1000;
    beforeEach(() => {
      ArkTools.forceFullGC();
    })
    afterAll(() => {
      performance.save('apiPerformance.txt');
    });

    it('PerformanceTest_Int8Array_includes_byte_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int8Array = new Int8Array([1, 2, 3, 4, 5]);
        let res = arr.includes(3, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.includes(3, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int8Array includes_byte_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_Int8Array_includes_number_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int8Array = new Int8Array([1, 2, 3, 4, 5]);
        let res = arr.includes(3, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.includes(3, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int8Array includes_number_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_Int8Array_indexOf_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int8Array = new Int8Array([1, 2, 3, 4, 5]);
        let res = arr.indexOf(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.indexOf(3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int8Array indexOf_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Int8Array_indexOf_number_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int8Array = new Int8Array([1, 2, 3, 4, 5]);
        let res = arr.indexOf(3, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.indexOf(3, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int8Array indexOf_number_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Int8Array_lastIndexOf_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int8Array = new Int8Array([1, 2, 3, 4, 3]);
        let res = arr.lastIndexOf(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int8Array lastIndexOf_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(4);
        done();
      })

    it('PerformanceTest_Int8Array_lastIndexOf_number', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int8Array = new Int8Array([1, 2, 3, 4, 3]);
        let res = arr.lastIndexOf(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int8Array lastIndexOf_number: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(4);
        done();
      })

    it('PerformanceTest_Int8Array_lastIndexOf_number_undef', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int8Array = new Int8Array([1, 2, 3, 4, 3]);
        let opt: number | undefined = 2;
        let res = arr.lastIndexOf(3, opt);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(3, opt);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int8Array lastIndexOf_number_undef: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Int8Array_slice_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int8Array = new Int8Array([1, 2, 3, 4, 5]);
        let res = arr.slice(1);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.slice(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int8Array slice_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res.length).assertEqual(4);
        done();
      })

    it('PerformanceTest_Int16Array_includes_short', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
        let res = arr.includes(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.includes(3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int16Array includes_short: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_Int16Array_includes_number_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
        let res = arr.includes(3, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.includes(3, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int16Array includes_number_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_Int16Array_indexOf_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
        let res = arr.indexOf(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.indexOf(3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int16Array indexOf_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Int16Array_indexOf_int_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
        let res = arr.indexOf(3, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.indexOf(3, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int16Array indexOf_int_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Int16Array_indexOf_number_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
        let res = arr.indexOf(3, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.indexOf(3, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int16Array indexOf_number_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Int16Array_lastIndexOf_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int16Array = new Int16Array([1, 2, 3, 4, 3]);
        let res = arr.lastIndexOf(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int16Array lastIndexOf_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(4);
        done();
      })

    it('PerformanceTest_Int16Array_lastIndexOf_number', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int16Array = new Int16Array([1, 2, 3, 4, 3]);
        let res = arr.lastIndexOf(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int16Array lastIndexOf_number: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(4);
        done();
      })

    it('PerformanceTest_Int16Array_lastIndexOf_int_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int16Array = new Int16Array([1, 2, 3, 4, 3]);
        let res = arr.lastIndexOf(3, 2);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(3, 2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int16Array lastIndexOf_int_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Int16Array_lastIndexOf_number_undef', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int16Array = new Int16Array([1, 2, 3, 4, 3]);
        let opt: number | undefined = 2;
        let res = arr.lastIndexOf(3, opt);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(3, opt);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int16Array lastIndexOf_number_undef: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Int16Array_slice_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Int16Array = new Int16Array([1, 2, 3, 4, 5]);
        let res = arr.slice(1);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.slice(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Int16Array slice_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res.length).assertEqual(4);
        done();
      })

    it('PerformanceTest_BigInt64Array_includes_int_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let res = arr.includes(BigInt(3), 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.includes(BigInt(3), 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array includes_int_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_includes_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let res = arr.includes(BigInt(3));
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.includes(BigInt(3));
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array includes_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_includes_bigint_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let res = arr.includes(BigInt(3), 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.includes(BigInt(3), 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array includes_bigint_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_indexOf_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let res = arr.indexOf(BigInt(3));
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.indexOf(BigInt(3));
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array indexOf_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_BigInt64Array_indexOf_int_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let res = arr.indexOf(BigInt(3), 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.indexOf(BigInt(3), 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array indexOf_int_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_BigInt64Array_indexOf_bigint_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let res = arr.indexOf(BigInt(3), 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.indexOf(BigInt(3), 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array indexOf_bigint_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_BigInt64Array_lastIndexOf_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(3)]);
        let res = arr.lastIndexOf(BigInt(3));
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(BigInt(3));
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array lastIndexOf_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(4);
        done();
      })

    it('PerformanceTest_BigInt64Array_lastIndexOf_bigint', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(3)]);
        let res = arr.lastIndexOf(BigInt(3));
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(BigInt(3));
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array lastIndexOf_bigint: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(4);
        done();
      })

    it('PerformanceTest_BigInt64Array_lastIndexOf_int_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(3)]);
        let res = arr.lastIndexOf(BigInt(3), 2);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(BigInt(3), 2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array lastIndexOf_int_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_BigInt64Array_lastIndexOf_bigint_undef', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(3)]);
        let opt: number | undefined = 2;
        let res = arr.lastIndexOf(BigInt(3), opt);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(BigInt(3), opt);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array lastIndexOf_bigint_undef: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_BigInt64Array_slice_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let res = arr.slice(1);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.slice(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array slice_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res.length).assertEqual(4);
        done();
      })

    it('PerformanceTest_Float32Array_includes_float', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let res = arr.includes(3.0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.includes(3.0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array includes_float: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_Float32Array_includes_number_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let res = arr.includes(3.0, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.includes(3.0, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array includes_number_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_Float32Array_indexOf_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let res = arr.indexOf(3.0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.indexOf(3.0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array indexOf_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Float32Array_indexOf_int_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let res = arr.indexOf(3.0, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.indexOf(3.0, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array indexOf_int_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Float32Array_indexOf_number_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let res = arr.indexOf(3.0, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.indexOf(3.0, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array indexOf_number_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Float32Array_lastIndexOf_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 3.0]);
        let res = arr.lastIndexOf(3.0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(3.0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array lastIndexOf_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(4);
        done();
      })

    it('PerformanceTest_Float32Array_lastIndexOf_number', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 3.0]);
        let res = arr.lastIndexOf(3.0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(3.0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array lastIndexOf_number: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(4);
        done();
      })

    it('PerformanceTest_Float32Array_lastIndexOf_int_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 3.0]);
        let res = arr.lastIndexOf(3.0, 2);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(3.0, 2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array lastIndexOf_int_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Float32Array_lastIndexOf_number_undef', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 3.0]);
        let opt: number | undefined = 2;
        let res = arr.lastIndexOf(3.0, opt);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(3.0, opt);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array lastIndexOf_number_undef: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Float32Array_slice_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let res = arr.slice(1);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.slice(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array slice_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res.length).assertEqual(4);
        done();
      })

    it('PerformanceTest_Float64Array_includes_number_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let res = arr.includes(3.0, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.includes(3.0, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array includes_number_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_Float64Array_indexOf_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let res = arr.indexOf(3.0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.indexOf(3.0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array indexOf_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Float64Array_indexOf_int_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let res = arr.indexOf(3.0, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.indexOf(3.0, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array indexOf_int_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Float64Array_indexOf_number_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let res = arr.indexOf(3.0, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.indexOf(3.0, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array indexOf_number_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Float64Array_lastIndexOf_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 3.0]);
        let res = arr.lastIndexOf(3.0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(3.0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array lastIndexOf_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(4);
        done();
      })

    it('PerformanceTest_Float64Array_lastIndexOf_number', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 3.0]);
        let res = arr.lastIndexOf(3.0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(3.0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array lastIndexOf_number: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(4);
        done();
      })

    it('PerformanceTest_Float64Array_lastIndexOf_int_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 3.0]);
        let res = arr.lastIndexOf(3.0, 2);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(3.0, 2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array lastIndexOf_int_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Float64Array_lastIndexOf_number_undef', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 3.0]);
        let opt: number | undefined = 2;
        let res = arr.lastIndexOf(3.0, opt);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.lastIndexOf(3.0, opt);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array lastIndexOf_number_undef: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res).assertEqual(2);
        done();
      })

    it('PerformanceTest_Float64Array_slice_int', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let res = arr.slice(1);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.slice(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array slice_int: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'slice', 'slice(int): Float64Array', arkTsAveragedTime);
        expect(res.length).assertEqual(4);
        done();
      })
  })
}