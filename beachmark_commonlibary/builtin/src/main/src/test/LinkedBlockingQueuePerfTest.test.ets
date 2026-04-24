/*
 * Copyright (C) 2025-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
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
} from "../../../../../../hypium/index";
import performance from '../Performance.util';

export default function LinkedBlockingQueuePerfTest() {
  describe('LinkedBlockingQueuePerfTest', () => {
    const BASE_COUNT = 50000;
    const UNIT_TIME = 1000000;

    beforeEach(() => {
      let ret = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret);
      let ret1 = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret1);
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    // ================================================================
    // 1. LinkedBlockingQueue Constructors
    // ================================================================
    it('PerformanceTest_LinkedBlockingQueue_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {

      let queue = new containers.LinkedBlockingQueue<number>();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        queue = new containers.LinkedBlockingQueue<number>();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;

      let _queue = queue;
      performance.apiWithClassAndKeywordTxt('std.containers', 'LinkedBlockingQueue', 'constructor', 'constructor()', arkTsAveragedTime);
    })

    it('PerformanceTest_LinkedBlockingQueue_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let queue = new containers.LinkedBlockingQueue<number>(100000);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        queue = new containers.LinkedBlockingQueue<number>(100000);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;

      let _queue = queue;
      performance.apiWithClassAndKeywordTxt('std.containers', 'LinkedBlockingQueue', 'constructor', 'constructor(capacity: int)', arkTsAveragedTime);
    })

    it('PerformanceTest_LinkedBlockingQueue_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr: Array<number> = [1];
      let queue = new containers.LinkedBlockingQueue<number>(arr);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        queue = new containers.LinkedBlockingQueue<number>(arr);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;

      let _queue = queue;
      performance.apiWithClassAndKeywordTxt('std.containers', 'LinkedBlockingQueue', 'constructor', 'constructor(iterable: Iterable<T>)', arkTsAveragedTime);
    })

    it('PerformanceTest_LinkedBlockingQueue_Constructor_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr: Array<number> = [1];
      let queue = new containers.LinkedBlockingQueue<number>(100, arr);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        queue = new containers.LinkedBlockingQueue<number>(100, arr);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;

      let _queue = queue;
      performance.apiWithClassAndKeywordTxt('std.containers', 'LinkedBlockingQueue', 'constructor', 'constructor(capacity: int, iterable: Iterable<T>)', arkTsAveragedTime);
    })

    // ================================================================
    // 2. LinkedBlockingQueue Methods
    // ================================================================
    it('PerformanceTest_LinkedBlockingQueue_Push_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let q = new containers.LinkedBlockingQueue<number>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        q.push(i);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _q=q;
      performance.apiWithClassAndKeywordTxt('std.containers', 'LinkedBlockingQueue', 'push', 'push(element: T): void', arkTsAveragedTime);
    })

    it('PerformanceTest_LinkedBlockingQueue_Pop_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let q = new containers.LinkedBlockingQueue<number>();

      for (let i = 0; i < BASE_COUNT; i++) {
        q.add(i);
      }
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        q.pop();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _q=q;
      performance.apiWithClassAndKeywordTxt('std.containers', 'LinkedBlockingQueue', 'pop', 'pop(): T', arkTsAveragedTime);
    })

    it('PerformanceTest_LinkedBlockingQueue_Add_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let q = new containers.LinkedBlockingQueue<number>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        q.add(i);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _q=q;
      performance.apiWithClassAndKeywordTxt('std.containers', 'LinkedBlockingQueue', 'add', 'add(element: T): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_LinkedBlockingQueue_Poll_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let q = new containers.LinkedBlockingQueue<number>();

      for (let i = 0; i < BASE_COUNT; i++) {
        q.add(i);
      }
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        q.poll();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _q=q;
      performance.apiWithClassAndKeywordTxt('std.containers', 'LinkedBlockingQueue', 'poll', 'poll(): T | undefined', arkTsAveragedTime);
    })

    it('PerformanceTest_LinkedBlockingQueue_GetFirst_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let q = new containers.LinkedBlockingQueue<number>();
      q.add(1);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        q.getFirst();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _q=q;
      performance.apiWithClassAndKeywordTxt('std.containers', 'LinkedBlockingQueue', 'getFirst', 'getFirst(): T | undefined', arkTsAveragedTime);
    })

    it('PerformanceTest_LinkedBlockingQueue_GetEnd_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let q = new containers.LinkedBlockingQueue<number>();
      q.add(1);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        q.getEnd();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _q=q;
      performance.apiWithClassAndKeywordTxt('std.containers', 'LinkedBlockingQueue', 'getEnd', 'getEnd(): T | undefined', arkTsAveragedTime);
    })

    it('PerformanceTest_LinkedBlockingQueue_IsEmpty_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let q = new containers.LinkedBlockingQueue<number>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        q.isEmpty();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _q=q;
      performance.apiWithClassAndKeywordTxt('std.containers', 'LinkedBlockingQueue', 'isEmpty', 'isEmpty(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_LinkedBlockingQueue_Size_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let q = new containers.LinkedBlockingQueue<number>();
      q.add(1);

      let Stime = new Date().getTime();
      let currentSize = 0;
      for (let i = 0; i < BASE_COUNT; i++) {

        currentSize = q.size;
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;

      let _q = q;
      let _size = currentSize;

      performance.apiWithClassAndKeywordTxt('std.containers', 'LinkedBlockingQueue', 'size', 'get size(): int', arkTsAveragedTime);
    })

    it('PerformanceTest_LinkedBlockingQueue_Capacity_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let q = new containers.LinkedBlockingQueue<number>();

      let Stime = new Date().getTime();

      let currentCapacity = 0;

      for (let i = 0; i < BASE_COUNT; i++) {
        currentCapacity = q.capacity;
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _q = q;
      let _capacity = currentCapacity;
      performance.apiWithClassAndKeywordTxt('std.containers', 'LinkedBlockingQueue', 'capacity', 'get capacity(): int', arkTsAveragedTime);
    })

    it('PerformanceTest_LinkedBlockingQueue_RemainingCapacity_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let q = new containers.LinkedBlockingQueue<number>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        q.remainingCapacity();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _q=q;
      performance.apiWithClassAndKeywordTxt('std.containers', 'LinkedBlockingQueue', 'remainingCapacity', 'remainingCapacity(): int', arkTsAveragedTime);
    })

  })
}