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

﻿
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

export default function AtomicsPerfTest(): void {
  describe('AtomicsPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_AtomicInt_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buffer: SharedArrayBuffer = new SharedArrayBuffer(4);
        let res: Int32Array = new Int32Array(buffer);
        Atomics.store(res, 0, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Int32Array(buffer);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicInt_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Int32Array', 'constructor',
          'constructor(buffer: SharedArrayBuffer)', arkTsAveragedTime);
        expect(res1.length === 1).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicInt_Instance_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int32Array = new Int32Array(new SharedArrayBuffer(4));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.load(atomicValue, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicInt_Instance_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'load',
          'load(typedArray: Int32Array, index: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicInt_Instance_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int32Array = new Int32Array(new SharedArrayBuffer(4));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.store(atomicValue, 0, 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicInt_Instance_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'store',
          'store(typedArray: Int32Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 1).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicInt_Instance_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValues: Array<Int32Array> = [];
        let createAtomicValue: () => Int32Array = (): Int32Array => {
          let atomicValue: Int32Array = new Int32Array(new SharedArrayBuffer(4));
          Atomics.store(atomicValue, 0, 0);
          return atomicValue;
        };
        for (let i = 0; i < BASE_COUNT; i++) {
          atomicValues.push(createAtomicValue());
        }
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.add(atomicValues[i], 0, 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicInt_Instance_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'add',
          'add(typedArray: Int32Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicInt_Instance_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValues: Array<Int32Array> = [];
        let createAtomicValue: () => Int32Array = (): Int32Array => {
          let atomicValue: Int32Array = new Int32Array(new SharedArrayBuffer(4));
          Atomics.store(atomicValue, 0, 0);
          return atomicValue;
        };
        for (let i = 0; i < BASE_COUNT; i++) {
          atomicValues.push(createAtomicValue());
        }
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.exchange(atomicValues[i], 0, 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicInt_Instance_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'exchange',
          'exchange(typedArray: Int32Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicInt_Instance_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValues: Array<Int32Array> = [];
        let createAtomicValue: () => Int32Array = (): Int32Array => {
          let atomicValue: Int32Array = new Int32Array(new SharedArrayBuffer(4));
          Atomics.store(atomicValue, 0, 0);
          return atomicValue;
        };
        for (let i = 0; i < BASE_COUNT; i++) {
          atomicValues.push(createAtomicValue());
        }
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.compareExchange(atomicValues[i], 0, 0, 2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicInt_Instance_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'compareExchange',
          'compareExchange(typedArray: Int32Array, index: number, expectedValue: number, replacementValue: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicInt_Instance_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int32Array = new Int32Array(new SharedArrayBuffer(4));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.sub(atomicValue, 0, 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicInt_Instance_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'sub',
          'sub(typedArray: Int32Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 1 - BASE_COUNT).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicInt_Instance_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int32Array = new Int32Array(new SharedArrayBuffer(4));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.and(atomicValue, 0, 0xFF);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicInt_Instance_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'and',
          'and(typedArray: Int32Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicInt_Instance_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int32Array = new Int32Array(new SharedArrayBuffer(4));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.or(atomicValue, 0, 0xFF);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicInt_Instance_0800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'or',
          'or(typedArray: Int32Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 0xFF).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicInt_Instance_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int32Array = new Int32Array(new SharedArrayBuffer(4));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.xor(atomicValue, 0, 0xFF);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicInt_Instance_0900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'xor',
          'xor(typedArray: Int32Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 0xFF).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicLong_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buffer: SharedArrayBuffer = new SharedArrayBuffer(8);
        let initialValue: bigint = BigInt(0);
        let res: BigInt64Array = new BigInt64Array(buffer);
        Atomics.store(res, 0, initialValue);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new BigInt64Array(buffer);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicLong_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BigInt64Array', 'constructor',
          'constructor(buffer: SharedArrayBuffer)', arkTsAveragedTime);
        expect(res1.length === 1).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicLong_Instance_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: BigInt64Array = new BigInt64Array(new SharedArrayBuffer(8));
        let initialValue: bigint = BigInt(0);
        Atomics.store(atomicValue, 0, initialValue);
        let res: bigint = initialValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.load(atomicValue, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicLong_Instance_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'load',
          'load(typedArray: BigInt64Array, index: number): bigint', arkTsAveragedTime);
        expect(res1 === BigInt(0)).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicLong_Instance_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let initialValue: bigint = BigInt(0);
        let operationValue: bigint = BigInt(1);
        let atomicValues: Array<BigInt64Array> = [];
        let createAtomicValue: () => BigInt64Array = (): BigInt64Array => {
          let atomicValue: BigInt64Array = new BigInt64Array(new SharedArrayBuffer(8));
          Atomics.store(atomicValue, 0, initialValue);
          return atomicValue;
        };
        for (let i = 0; i < BASE_COUNT; i++) {
          atomicValues.push(createAtomicValue());
        }
        let res: bigint = initialValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.add(atomicValues[i], 0, operationValue);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicLong_Instance_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'add',
          'add(typedArray: BigInt64Array, index: number, value: bigint): bigint', arkTsAveragedTime);
        expect(res1 === initialValue).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicBoolean_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buffer: SharedArrayBuffer = new SharedArrayBuffer(1);
        let res: Int8Array = new Int8Array(buffer);
        Atomics.store(res, 0, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Int8Array(buffer);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicBoolean_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Int8Array', 'constructor',
          'constructor(buffer: SharedArrayBuffer)', arkTsAveragedTime);
        expect(res1.length === 1).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicBoolean_Instance_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int8Array = new Int8Array(new SharedArrayBuffer(1));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.load(atomicValue, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicBoolean_Instance_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'load',
          'load(typedArray: Int8Array, index: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicBoolean_Instance_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValues: Array<Int8Array> = [];
        let createAtomicValue: () => Int8Array = (): Int8Array => {
          let atomicValue: Int8Array = new Int8Array(new SharedArrayBuffer(1));
          Atomics.store(atomicValue, 0, 0);
          return atomicValue;
        };
        for (let i = 0; i < BASE_COUNT; i++) {
          atomicValues.push(createAtomicValue());
        }
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.exchange(atomicValues[i], 0, 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicBoolean_Instance_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'exchange',
          'exchange(typedArray: Int8Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicInt_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.isLockFree(4);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicInt_Static_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'isLockFree',
          'isLockFree(byteSize: number): boolean', arkTsAveragedTime);
        expect(res1).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicLong_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.isLockFree(8);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicLong_Static_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'isLockFree',
          'isLockFree(byteSize: number): boolean', arkTsAveragedTime);
        expect(res1).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicShort_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buffer: SharedArrayBuffer = new SharedArrayBuffer(2);
        let res: Int16Array = new Int16Array(buffer);
        Atomics.store(res, 0, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Int16Array(buffer);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicShort_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Int16Array', 'constructor',
          'constructor(buffer: SharedArrayBuffer)', arkTsAveragedTime);
        expect(res1.length === 1).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicShort_Instance_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int16Array = new Int16Array(new SharedArrayBuffer(2));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.load(atomicValue, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicShort_Instance_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'load',
          'load(typedArray: Int16Array, index: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicShort_Instance_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int16Array = new Int16Array(new SharedArrayBuffer(2));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.store(atomicValue, 0, 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicShort_Instance_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'store',
          'store(typedArray: Int16Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 1).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicShort_Instance_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValues: Array<Int16Array> = [];
        let createAtomicValue: () => Int16Array = (): Int16Array => {
          let atomicValue: Int16Array = new Int16Array(new SharedArrayBuffer(2));
          Atomics.store(atomicValue, 0, 0);
          return atomicValue;
        };
        for (let i = 0; i < BASE_COUNT; i++) {
          atomicValues.push(createAtomicValue());
        }
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.exchange(atomicValues[i], 0, 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicShort_Instance_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'exchange',
          'exchange(typedArray: Int16Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicShort_Instance_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValues: Array<Int16Array> = [];
        let createAtomicValue: () => Int16Array = (): Int16Array => {
          let atomicValue: Int16Array = new Int16Array(new SharedArrayBuffer(2));
          Atomics.store(atomicValue, 0, 0);
          return atomicValue;
        };
        for (let i = 0; i < BASE_COUNT; i++) {
          atomicValues.push(createAtomicValue());
        }
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.compareExchange(atomicValues[i], 0, 0, 2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicShort_Instance_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'compareExchange',
          'compareExchange(typedArray: Int16Array, index: number, expectedValue: number, replacementValue: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicShort_Instance_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValues: Array<Int16Array> = [];
        let createAtomicValue: () => Int16Array = (): Int16Array => {
          let atomicValue: Int16Array = new Int16Array(new SharedArrayBuffer(2));
          Atomics.store(atomicValue, 0, 0);
          return atomicValue;
        };
        for (let i = 0; i < BASE_COUNT; i++) {
          atomicValues.push(createAtomicValue());
        }
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.add(atomicValues[i], 0, 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicShort_Instance_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'add',
          'add(typedArray: Int16Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicShort_Instance_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int16Array = new Int16Array(new SharedArrayBuffer(2));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.sub(atomicValue, 0, 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicShort_Instance_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'sub',
          'sub(typedArray: Int16Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 1 - BASE_COUNT).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicShort_Instance_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int16Array = new Int16Array(new SharedArrayBuffer(2));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.and(atomicValue, 0, 0xFF);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicShort_Instance_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'and',
          'and(typedArray: Int16Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicShort_Instance_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int16Array = new Int16Array(new SharedArrayBuffer(2));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.or(atomicValue, 0, 0xFF);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicShort_Instance_0800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'or',
          'or(typedArray: Int16Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 0xFF).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicShort_Instance_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int16Array = new Int16Array(new SharedArrayBuffer(2));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.xor(atomicValue, 0, 0xFF);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicShort_Instance_0900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'xor',
          'xor(typedArray: Int16Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 0xFF).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicShort_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.isLockFree(2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicShort_Static_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'isLockFree',
          'isLockFree(byteSize: number): boolean', arkTsAveragedTime);
        expect(res1).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicByte_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buffer: SharedArrayBuffer = new SharedArrayBuffer(1);
        let res: Int8Array = new Int8Array(buffer);
        Atomics.store(res, 0, 0);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Int8Array(buffer);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicByte_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Int8Array', 'constructor',
          'constructor(buffer: SharedArrayBuffer)', arkTsAveragedTime);
        expect(res1.length === 1).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicByte_Instance_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int8Array = new Int8Array(new SharedArrayBuffer(1));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.load(atomicValue, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicByte_Instance_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'load',
          'load(typedArray: Int8Array, index: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicByte_Instance_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int8Array = new Int8Array(new SharedArrayBuffer(1));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.store(atomicValue, 0, 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicByte_Instance_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'store',
          'store(typedArray: Int8Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 1).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicByte_Instance_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValues: Array<Int8Array> = [];
        let createAtomicValue: () => Int8Array = (): Int8Array => {
          let atomicValue: Int8Array = new Int8Array(new SharedArrayBuffer(1));
          Atomics.store(atomicValue, 0, 0);
          return atomicValue;
        };
        for (let i = 0; i < BASE_COUNT; i++) {
          atomicValues.push(createAtomicValue());
        }
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.exchange(atomicValues[i], 0, 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicByte_Instance_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'exchange',
          'exchange(typedArray: Int8Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicByte_Instance_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValues: Array<Int8Array> = [];
        let createAtomicValue: () => Int8Array = (): Int8Array => {
          let atomicValue: Int8Array = new Int8Array(new SharedArrayBuffer(1));
          Atomics.store(atomicValue, 0, 0);
          return atomicValue;
        };
        for (let i = 0; i < BASE_COUNT; i++) {
          atomicValues.push(createAtomicValue());
        }
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.compareExchange(atomicValues[i], 0, 0, 2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicByte_Instance_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'compareExchange',
          'compareExchange(typedArray: Int8Array, index: number, expectedValue: number, replacementValue: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicByte_Instance_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValues: Array<Int8Array> = [];
        let createAtomicValue: () => Int8Array = (): Int8Array => {
          let atomicValue: Int8Array = new Int8Array(new SharedArrayBuffer(1));
          Atomics.store(atomicValue, 0, 0);
          return atomicValue;
        };
        for (let i = 0; i < BASE_COUNT; i++) {
          atomicValues.push(createAtomicValue());
        }
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.add(atomicValues[i], 0, 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicByte_Instance_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'add',
          'add(typedArray: Int8Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicByte_Instance_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int8Array = new Int8Array(new SharedArrayBuffer(1));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.sub(atomicValue, 0, 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicByte_Instance_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'sub',
          'sub(typedArray: Int8Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 25).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicByte_Instance_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int8Array = new Int8Array(new SharedArrayBuffer(1));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.and(atomicValue, 0, 0x7F);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicByte_Instance_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'and',
          'and(typedArray: Int8Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicByte_Instance_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int8Array = new Int8Array(new SharedArrayBuffer(1));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.or(atomicValue, 0, 0x7F);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicByte_Instance_0800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'or',
          'or(typedArray: Int8Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 0x7F).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicByte_Instance_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int8Array = new Int8Array(new SharedArrayBuffer(1));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.xor(atomicValue, 0, 0x7F);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicByte_Instance_0900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'xor',
          'xor(typedArray: Int8Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 0x7F).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicByte_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.isLockFree(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicByte_Static_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'isLockFree',
          'isLockFree(byteSize: number): boolean', arkTsAveragedTime);
        expect(res1).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicChar_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buffer: SharedArrayBuffer = new SharedArrayBuffer(2);
        let res: Uint16Array = new Uint16Array(buffer);
        Atomics.store(res, 0, 48);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Uint16Array(buffer);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicChar_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Uint16Array', 'constructor',
          'constructor(buffer: SharedArrayBuffer)', arkTsAveragedTime);
        expect(res1.length === 1).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicChar_Instance_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Uint16Array = new Uint16Array(new SharedArrayBuffer(2));
        Atomics.store(atomicValue, 0, 48);
        let res: number = 48;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.load(atomicValue, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicChar_Instance_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'load',
          'load(typedArray: Uint16Array, index: number): number', arkTsAveragedTime);
        expect(res1 === 48).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicChar_Instance_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Uint16Array = new Uint16Array(new SharedArrayBuffer(2));
        Atomics.store(atomicValue, 0, 48);
        let res: number = 48;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.store(atomicValue, 0, 49);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicChar_Instance_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'store',
          'store(typedArray: Uint16Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 49).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicChar_Instance_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValues: Array<Uint16Array> = [];
        let createAtomicValue: () => Uint16Array = (): Uint16Array => {
          let atomicValue: Uint16Array = new Uint16Array(new SharedArrayBuffer(2));
          Atomics.store(atomicValue, 0, 48);
          return atomicValue;
        };
        for (let i = 0; i < BASE_COUNT; i++) {
          atomicValues.push(createAtomicValue());
        }
        let res: number = 48;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.exchange(atomicValues[i], 0, 49);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicChar_Instance_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'exchange',
          'exchange(typedArray: Uint16Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 48).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicChar_Instance_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValues: Array<Uint16Array> = [];
        let createAtomicValue: () => Uint16Array = (): Uint16Array => {
          let atomicValue: Uint16Array = new Uint16Array(new SharedArrayBuffer(2));
          Atomics.store(atomicValue, 0, 48);
          return atomicValue;
        };
        for (let i = 0; i < BASE_COUNT; i++) {
          atomicValues.push(createAtomicValue());
        }
        let res: number = 48;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.compareExchange(atomicValues[i], 0, 48, 50);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicChar_Instance_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'compareExchange',
          'compareExchange(typedArray: Uint16Array, index: number, expectedValue: number, replacementValue: number): number', arkTsAveragedTime);
        expect(res1 === 48).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicChar_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.isLockFree(2);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicChar_Static_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'isLockFree',
          'isLockFree(byteSize: number): boolean', arkTsAveragedTime);
        expect(res1).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicBoolean_Instance_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: Int8Array = new Int8Array(new SharedArrayBuffer(1));
        Atomics.store(atomicValue, 0, 0);
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.store(atomicValue, 0, 1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicBoolean_Instance_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'store',
          'store(typedArray: Int8Array, index: number, value: number): number', arkTsAveragedTime);
        expect(res1 === 1).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicBoolean_Instance_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValues: Array<Int8Array> = [];
        let createAtomicValue: () => Int8Array = (): Int8Array => {
          let atomicValue: Int8Array = new Int8Array(new SharedArrayBuffer(1));
          Atomics.store(atomicValue, 0, 0);
          return atomicValue;
        };
        for (let i = 0; i < BASE_COUNT; i++) {
          atomicValues.push(createAtomicValue());
        }
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.compareExchange(atomicValues[i], 0, 0, 0);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicBoolean_Instance_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'compareExchange',
          'compareExchange(typedArray: Int8Array, index: number, expectedValue: number, replacementValue: number): number', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicBoolean_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.isLockFree(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicBoolean_Static_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'isLockFree',
          'isLockFree(byteSize: number): boolean', arkTsAveragedTime);
        expect(res1).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicLong_Instance_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: BigInt64Array = new BigInt64Array(new SharedArrayBuffer(8));
        let initialValue: bigint = BigInt(0);
        let operationValue: bigint = BigInt(1);
        Atomics.store(atomicValue, 0, initialValue);
        let res: bigint = initialValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.store(atomicValue, 0, operationValue);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicLong_Instance_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'store',
          'store(typedArray: BigInt64Array, index: number, value: bigint): bigint', arkTsAveragedTime);
        expect(res1 === operationValue).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicLong_Instance_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let initialValue: bigint = BigInt(0);
        let operationValue: bigint = BigInt(1);
        let atomicValues: Array<BigInt64Array> = [];
        let createAtomicValue: () => BigInt64Array = (): BigInt64Array => {
          let atomicValue: BigInt64Array = new BigInt64Array(new SharedArrayBuffer(8));
          Atomics.store(atomicValue, 0, initialValue);
          return atomicValue;
        };
        for (let i = 0; i < BASE_COUNT; i++) {
          atomicValues.push(createAtomicValue());
        }
        let res: bigint = initialValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.exchange(atomicValues[i], 0, operationValue);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicLong_Instance_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'exchange',
          'exchange(typedArray: BigInt64Array, index: number, value: bigint): bigint', arkTsAveragedTime);
        expect(res1 === initialValue).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicLong_Instance_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let expectedValue: bigint = BigInt(0);
        let replacementValue: bigint = BigInt(2);
        let atomicValues: Array<BigInt64Array> = [];
        let createAtomicValue: () => BigInt64Array = (): BigInt64Array => {
          let atomicValue: BigInt64Array = new BigInt64Array(new SharedArrayBuffer(8));
          Atomics.store(atomicValue, 0, expectedValue);
          return atomicValue;
        };
        for (let i = 0; i < BASE_COUNT; i++) {
          atomicValues.push(createAtomicValue());
        }
        let res: bigint = expectedValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.compareExchange(atomicValues[i], 0, expectedValue, replacementValue);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicLong_Instance_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'compareExchange',
          'compareExchange(typedArray: BigInt64Array, index: number, expectedValue: bigint, replacementValue: bigint): bigint', arkTsAveragedTime);
        expect(res1 === expectedValue).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicLong_Instance_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: BigInt64Array = new BigInt64Array(new SharedArrayBuffer(8));
        let initialValue: bigint = BigInt(0);
        let operationValue: bigint = BigInt(1);
        Atomics.store(atomicValue, 0, initialValue);
        let res: bigint = initialValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.sub(atomicValue, 0, operationValue);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicLong_Instance_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'sub',
          'sub(typedArray: BigInt64Array, index: number, value: bigint): bigint', arkTsAveragedTime);
        expect(res1 === BigInt(1 - BASE_COUNT)).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicLong_Instance_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: BigInt64Array = new BigInt64Array(new SharedArrayBuffer(8));
        let initialValue: bigint = BigInt(0);
        let operationValue: bigint = BigInt(0xFF);
        Atomics.store(atomicValue, 0, initialValue);
        let res: bigint = initialValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.and(atomicValue, 0, operationValue);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicLong_Instance_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'and',
          'and(typedArray: BigInt64Array, index: number, value: bigint): bigint', arkTsAveragedTime);
        expect(res1 === BigInt(0)).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicLong_Instance_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: BigInt64Array = new BigInt64Array(new SharedArrayBuffer(8));
        let initialValue: bigint = BigInt(0);
        let operationValue: bigint = BigInt(0xFF);
        Atomics.store(atomicValue, 0, initialValue);
        let res: bigint = initialValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.or(atomicValue, 0, operationValue);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicLong_Instance_0800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'or',
          'or(typedArray: BigInt64Array, index: number, value: bigint): bigint', arkTsAveragedTime);
        expect(res1 === operationValue).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicLong_Instance_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let atomicValue: BigInt64Array = new BigInt64Array(new SharedArrayBuffer(8));
        let initialValue: bigint = BigInt(0);
        let operationValue: bigint = BigInt(0xFF);
        Atomics.store(atomicValue, 0, initialValue);
        let res: bigint = initialValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Atomics.xor(atomicValue, 0, operationValue);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicLong_Instance_0900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Atomics', 'xor',
          'xor(typedArray: BigInt64Array, index: number, value: bigint): bigint', arkTsAveragedTime);
        expect(res1 === operationValue).assertTrue();
        done();
      })

  })
}
