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

export default function ConcurrentSetPerfTest() {
  describe('ConcurrentSetPerfTest', () => {
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
    // 1. ConcurrentSet Constructors
    // ================================================================
    it('PerformanceTest_ConcurrentSet_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        set = new containers.ConcurrentSet<Int>();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;

      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'constructor', 'constructor()', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr: Array<Int> = [new Int(1)];
      let set = new containers.ConcurrentSet<Int>(arr);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        set = new containers.ConcurrentSet<Int>(arr);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;

      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'constructor', 'constructor(values: ArrayLike<T>)', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let iterableSet = new containers.ConcurrentSet<Int>();
      iterableSet.add(new Int(1));
      let set = new containers.ConcurrentSet<Int>(iterableSet);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        set = new containers.ConcurrentSet<Int>(iterableSet);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;

      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'constructor', 'constructor(iterable: Iterable<T>)', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Constructor_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let stdSet = new Set<Int>();
      stdSet.add(new Int(1));
      let set = new containers.ConcurrentSet<Int>(stdSet);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        set = new containers.ConcurrentSet<Int>(stdSet);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;

      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'constructor', 'constructor(set: Set<T>)', arkTsAveragedTime);
    })

    // ================================================================
    // 2. ConcurrentSet Methods
    // ================================================================
    it('PerformanceTest_ConcurrentSet_Add_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        set.add(new Int(i));
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'add', 'add(val: T): this', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Has_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      set.add(new Int(1));
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        set.has(new Int(1));
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'has', 'has(val: T): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Size_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      set.add(new Int(1));

      let Stime = new Date().getTime();

      let currentSize = 0;

      for (let i = 0; i < BASE_COUNT; i++) {
        currentSize = set.size;
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = set;
      let _size = currentSize;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'size', 'get size(): int', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Delete_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        set.add(new Int(i));
        set.delete(new Int(i));
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'delete', 'delete(val: T): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Clear_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        set.add(new Int(1));
        set.clear();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'clear', 'clear(): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_ToString_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      set.add(new Int(1));
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        set.toString();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'toString', 'toString(): String', arkTsAveragedTime);
    })

    // ================================================================
    // 3. ConcurrentSet Iterators
    // ================================================================
    it('PerformanceTest_ConcurrentSet_Keys_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        set.keys();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'keys', 'keys(): IterableIterator<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Values_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        set.values();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'values', 'values(): IterableIterator<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Entries_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        set.entries();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'entries', 'entries(): IterableIterator<[T, T]>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Iterator_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        set.$_iterator();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', '$_iterator', '$_iterator(): IterableIterator<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_ForEach_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      set.add(new Int(1));
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        set.forEach((v1, v2, s) => {});
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'forEach', 'forEach(callbackfn): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSetIterator_Next_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      set.add(new Int(1));
      let iter = set.values();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        iter.next();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = iter;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSetIterator', 'next', 'next(): IteratorResult<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_EmptyConcurrentSetIterator_Next_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      let iter = set.values();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        iter.next();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = iter;
      performance.apiWithClassAndKeywordTxt('std.containers', 'EmptyConcurrentSetIterator', 'next', 'next(): IteratorResult<T>', arkTsAveragedTime);
    })

  })
}