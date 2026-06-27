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
  beforeAll,
  afterAll,
  beforeEach,
  afterEach
} from "@ohos/hypium";
import { systemDateTime } from '@kit.BasicServicesKit';
import performance from './Performance.util';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function TypedArraysPerfTest13(): void {
  describe('TypedArraysPerfTest13', () => {
    const BASE_COUNT: number = 1000;

    beforeEach(() => {

    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_BigInt64Array_some',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let cb_some = (x: bigint, idx: number, src: BigInt64Array): boolean => x > BigInt(3);
        let res: boolean = arr.some(cb_some);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.some(cb_some);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array some: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'some',
          'some((bigint, number, BigInt64Array): => boolean): boolean', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_reduce',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let cb_reduce = (prev: bigint, cur: bigint, idx: number, src: BigInt64Array): bigint => prev + cur;
        let res: bigint = arr.reduce(cb_reduce);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.reduce(cb_reduce);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array reduce: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'reduce',
          'reduce((bigint, bigint, number, BigInt64Array): => bigint): bigint', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_reduceRight',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let cb_reduceRight = (prev: bigint, cur: bigint, idx: number, src: BigInt64Array): bigint => prev + cur;
        let res: bigint = arr.reduceRight(cb_reduceRight);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.reduceRight(cb_reduceRight);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array reduceRight: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'reduceRight',
          'reduceRight((bigint, bigint, number, BigInt64Array): => bigint): bigint', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_map',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let cb_map = (x: bigint, idx: number, src: BigInt64Array): bigint => x * BigInt(2);
        let res: BigInt64Array = arr.map(cb_map);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.map(cb_map);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array map: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'map',
          'map((bigint, number, BigInt64Array): => bigint): BigInt64Array', arkTsAveragedTime);
        expect(res.length > 0).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_every',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let cb_every = (x: bigint, idx: number, src: BigInt64Array): boolean => x > BigInt(0);
        let res: boolean = arr.every(cb_every);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.every(cb_every);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array every: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'every',
          'every((bigint, number, BigInt64Array): => boolean): boolean', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_filter',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let cb_filter = (x: bigint, idx: number, src: BigInt64Array): boolean => x > BigInt(2);
        let res: BigInt64Array = arr.filter(cb_filter);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.filter(cb_filter);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array filter: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'filter',
          'filter((bigint, number, BigInt64Array): => boolean): BigInt64Array', arkTsAveragedTime);
        expect(res.length > 0).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_find',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let cb_find = (x: bigint, idx: number, src: BigInt64Array): boolean => x > BigInt(2);
        let res: bigint | undefined = arr.find(cb_find);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.find(cb_find);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array find: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'find',
          'find((bigint, number, BigInt64Array): => boolean): bigint | undefined', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_findIndex',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let cb_findIndex = (x: bigint, idx: number, src: BigInt64Array): boolean => x > BigInt(2);
        let res: number = arr.findIndex(cb_findIndex);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.findIndex(cb_findIndex);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array findIndex: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'findIndex',
          'findIndex((bigint, number, BigInt64Array): => boolean): number', arkTsAveragedTime);
        expect(res >= 0).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_findLast',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let cb_findLast = (x: bigint): boolean => x > BigInt(2);
        let res: bigint | undefined = arr.slice().reverse().find(cb_findLast);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.slice().reverse().find(cb_findLast);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array findLast: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'findLast',
          'findLast((bigint, number, BigInt64Array): => boolean): bigint | undefined', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_findLastIndex',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let cb_findLastIndex = (x: bigint): boolean => x > BigInt(2);
        let rev: BigInt64Array = arr.slice().reverse();
        let revIdx: number = rev.findIndex(cb_findLastIndex);
        let res: number = revIdx === -1 ? -1 : arr.length - 1 - revIdx;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          rev = arr.slice().reverse();
          revIdx = rev.findIndex(cb_findLastIndex);
          res = revIdx === -1 ? -1 : arr.length - 1 - revIdx;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array findLastIndex: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'findLastIndex',
          'findLastIndex((bigint, number, BigInt64Array): => boolean): number', arkTsAveragedTime);
        expect(res >= 0).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_forEach',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let cb_forEach = (x: bigint, idx: number, src: BigInt64Array): void => { let v = x; };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          arr.forEach(cb_forEach);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = arr;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array forEach: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'forEach',
          'forEach((bigint, number, BigInt64Array): => void): void', arkTsAveragedTime);
        expect(arr !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BigInt64Array_valueOf',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: BigInt64Array = new BigInt64Array([BigInt(1), BigInt(2), BigInt(3), BigInt(4), BigInt(5)]);
        let res: BigInt64Array = arr.valueOf();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.valueOf();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest BigInt64Array valueOf: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'valueOf',
          'valueOf(): BigInt64Array', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Float32Array_some',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_some = (x: number, idx: number, src: Float32Array): boolean => x > 3.0;
        let res: boolean = arr.some(cb_some);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.some(cb_some);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array some: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float32Array', 'some',
          'some((number, number, Float32Array): => boolean): boolean', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_Float32Array_reduce',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_reduce = (prev: number, cur: number, idx: number, src: Float32Array): number => prev + cur;
        let res: number = arr.reduce(cb_reduce);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.reduce(cb_reduce);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array reduce: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float32Array', 'reduce',
          'reduce((number, number, number, Float32Array): => number): number', arkTsAveragedTime);
        expect(res > 0).assertTrue();
        done();
      })

    it('PerformanceTest_Float32Array_reduceRight',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_reduceRight = (prev: number, cur: number, idx: number, src: Float32Array): number => prev + cur;
        let res: number = arr.reduceRight(cb_reduceRight);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.reduceRight(cb_reduceRight);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array reduceRight: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float32Array', 'reduceRight',
          'reduceRight((number, number, number, Float32Array): => number): number', arkTsAveragedTime);
        expect(res > 0).assertTrue();
        done();
      })

    it('PerformanceTest_Float32Array_map',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_map = (x: number, idx: number, src: Float32Array): number => x * 2.0;
        let res: Float32Array = arr.map(cb_map);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.map(cb_map);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array map: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float32Array', 'map',
          'map((number, number, Float32Array): => number): Float32Array', arkTsAveragedTime);
        expect(res.length > 0).assertTrue();
        done();
      })

    it('PerformanceTest_Float32Array_every',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_every = (x: number, idx: number, src: Float32Array): boolean => x > 0.0;
        let res: boolean = arr.every(cb_every);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.every(cb_every);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array every: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float32Array', 'every',
          'every((number, number, Float32Array): => boolean): boolean', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_Float32Array_filter',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_filter = (x: number, idx: number, src: Float32Array): boolean => x > 2.0;
        let res: Float32Array = arr.filter(cb_filter);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.filter(cb_filter);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array filter: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float32Array', 'filter',
          'filter((number, number, Float32Array): => boolean): Float32Array', arkTsAveragedTime);
        expect(res.length > 0).assertTrue();
        done();
      })

    it('PerformanceTest_Float32Array_find',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_find = (x: number, idx: number, src: Float32Array): boolean => x > 2.0;
        let res: number | undefined = arr.find(cb_find);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.find(cb_find);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array find: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float32Array', 'find',
          'find((number, number, Float32Array): => boolean): number | undefined', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Float32Array_findIndex',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_findIndex = (x: number, idx: number, src: Float32Array): boolean => x > 2.0;
        let res: number = arr.findIndex(cb_findIndex);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.findIndex(cb_findIndex);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array findIndex: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float32Array', 'findIndex',
          'findIndex((number, number, Float32Array): => boolean): number', arkTsAveragedTime);
        expect(res >= 0).assertTrue();
        done();
      })

    it('PerformanceTest_Float32Array_findLast',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_findLast = (x: number): boolean => x > 2.0;
        let res: number | undefined = arr.slice().reverse().find(cb_findLast);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.slice().reverse().find(cb_findLast);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array findLast: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float32Array', 'findLast',
          'findLast((number, number, Float32Array): => boolean): number | undefined', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Float32Array_findLastIndex',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_findLastIndex = (x: number): boolean => x > 2.0;
        let rev: Float32Array = arr.slice().reverse();
        let revIdx: number = rev.findIndex(cb_findLastIndex);
        let res: number = revIdx === -1 ? -1 : arr.length - 1 - revIdx;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          rev = arr.slice().reverse();
          revIdx = rev.findIndex(cb_findLastIndex);
          res = revIdx === -1 ? -1 : arr.length - 1 - revIdx;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array findLastIndex: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float32Array', 'findLastIndex',
          'findLastIndex((number, number, Float32Array): => boolean): number', arkTsAveragedTime);
        expect(res >= 0).assertTrue();
        done();
      })

    it('PerformanceTest_Float32Array_forEach',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_forEach = (x: number, idx: number, src: Float32Array): void => { let v = x; };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          arr.forEach(cb_forEach);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = arr;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array forEach: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float32Array', 'forEach',
          'forEach((number, number, Float32Array): => void): void', arkTsAveragedTime);
        expect(arr !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Float32Array_valueOf',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float32Array = new Float32Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let res: Float32Array = arr.valueOf();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.valueOf();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float32Array valueOf: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float32Array', 'valueOf',
          'valueOf(): Float32Array', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Float64Array_some',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_some = (x: number, idx: number, src: Float64Array): boolean => x > 3.0;
        let res: boolean = arr.some(cb_some);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.some(cb_some);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array some: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'some',
          'some((number, number, Float64Array): => boolean): boolean', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_Float64Array_reduce',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_reduce = (prev: number, cur: number, idx: number, src: Float64Array): number => prev + cur;
        let res: number = arr.reduce(cb_reduce);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.reduce(cb_reduce);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array reduce: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'reduce',
          'reduce((number, number, number, Float64Array): => number): number', arkTsAveragedTime);
        expect(res > 0).assertTrue();
        done();
      })

    it('PerformanceTest_Float64Array_reduceRight',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_reduceRight = (prev: number, cur: number, idx: number, src: Float64Array): number => prev + cur;
        let res: number = arr.reduceRight(cb_reduceRight);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.reduceRight(cb_reduceRight);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array reduceRight: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'reduceRight',
          'reduceRight((number, number, number, Float64Array): => number): number', arkTsAveragedTime);
        expect(res > 0).assertTrue();
        done();
      })

    it('PerformanceTest_Float64Array_map',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_map = (x: number, idx: number, src: Float64Array): number => x * 2.0;
        let res: Float64Array = arr.map(cb_map);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.map(cb_map);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array map: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'map',
          'map((number, number, Float64Array): => number): Float64Array', arkTsAveragedTime);
        expect(res.length > 0).assertTrue();
        done();
      })

    it('PerformanceTest_Float64Array_every',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_every = (x: number, idx: number, src: Float64Array): boolean => x > 0.0;
        let res: boolean = arr.every(cb_every);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.every(cb_every);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array every: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'every',
          'every((number, number, Float64Array): => boolean): boolean', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_Float64Array_filter',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_filter = (x: number, idx: number, src: Float64Array): boolean => x > 2.0;
        let res: Float64Array = arr.filter(cb_filter);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.filter(cb_filter);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array filter: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'filter',
          'filter((number, number, Float64Array): => boolean): Float64Array', arkTsAveragedTime);
        expect(res.length > 0).assertTrue();
        done();
      })

    it('PerformanceTest_Float64Array_find',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_find = (x: number, idx: number, src: Float64Array): boolean => x > 2.0;
        let res: number | undefined = arr.find(cb_find);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.find(cb_find);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array find: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'find',
          'find((number, number, Float64Array): => boolean): number | undefined', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Float64Array_findIndex',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_findIndex = (x: number, idx: number, src: Float64Array): boolean => x > 2.0;
        let res: number = arr.findIndex(cb_findIndex);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.findIndex(cb_findIndex);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array findIndex: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'findIndex',
          'findIndex((number, number, Float64Array): => boolean): number', arkTsAveragedTime);
        expect(res >= 0).assertTrue();
        done();
      })

    it('PerformanceTest_Float64Array_findLast',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_findLast = (x: number): boolean => x > 2.0;
        let res: number | undefined = arr.slice().reverse().find(cb_findLast);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.slice().reverse().find(cb_findLast);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array findLast: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'findLast',
          'findLast((number, number, Float64Array): => boolean): number | undefined', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Float64Array_findLastIndex',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_findLastIndex = (x: number): boolean => x > 2.0;
        let rev: Float64Array = arr.slice().reverse();
        let revIdx: number = rev.findIndex(cb_findLastIndex);
        let res: number = revIdx === -1 ? -1 : arr.length - 1 - revIdx;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          rev = arr.slice().reverse();
          revIdx = rev.findIndex(cb_findLastIndex);
          res = revIdx === -1 ? -1 : arr.length - 1 - revIdx;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array findLastIndex: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'findLastIndex',
          'findLastIndex((number, number, Float64Array): => boolean): number', arkTsAveragedTime);
        expect(res >= 0).assertTrue();
        done();
      })

    it('PerformanceTest_Float64Array_forEach',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let cb_forEach = (x: number, idx: number, src: Float64Array): void => { let v = x; };
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          arr.forEach(cb_forEach);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = arr;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array forEach: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'forEach',
          'forEach((number, number, Float64Array): => void): void', arkTsAveragedTime);
        expect(arr !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Float64Array_valueOf',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let arr: Float64Array = new Float64Array([1.0, 2.0, 3.0, 4.0, 5.0]);
        let res: Float64Array = arr.valueOf();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = arr.valueOf();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest Float64Array valueOf: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Float64Array', 'valueOf',
          'valueOf(): Float64Array', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })
  })
}