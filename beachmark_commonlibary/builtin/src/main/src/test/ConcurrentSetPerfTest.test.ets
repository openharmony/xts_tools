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
} from "../../../../../hypium/index";
import performance from './Performance.util';

export default function ConcurrentSetPerfTest(): void {
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
      for (let i = 0; i < BASE_COUNT; i++) { set = new containers.ConcurrentSet<Int>(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'constructor', 'constructor()', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let val = new Int(1);
      let arr: Array<Int> = [val];
      let set = new containers.ConcurrentSet<Int>(arr);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { set = new containers.ConcurrentSet<Int>(arr); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'constructor', 'constructor(values: ArrayLike<T>)', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let val = new Int(1);
      let entries: Array<Int> = [val];
      let set = new containers.ConcurrentSet<Int>(entries as Iterable<Int>);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { set = new containers.ConcurrentSet<Int>(entries as Iterable<Int>); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'constructor', 'constructor(iterable: Iterable<T>)', arkTsAveragedTime);
    })

    // ================================================================
    // 2. ConcurrentSet Methods
    // ================================================================

    it('PerformanceTest_ConcurrentSet_Add_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      let vals: Int[] = [];
      for (let i = 0; i < BASE_COUNT; i++) { vals.push(new Int(i as int)); }
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { set.add(vals[i]); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'add', 'add(v: K): ConcurrentSet<K>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Has_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      let val = new Int(1);
      set.add(val);
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = set.has(val); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'has', 'has(v: K): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Size_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      set.add(new Int(1));
      let currentSize = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { currentSize = set.size; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _size = currentSize;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'size', 'get size(): int', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Delete_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      let vals: Int[] = [];
      for (let i = 0; i < BASE_COUNT; i++) {let v = new Int(i as int);vals.push(v);set.add(v);}
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = set.delete(vals[i]); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'delete', 'delete(v: K): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Clear_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {

      let sets: containers.ConcurrentSet<Int>[] = [];
      let val = new Int(1);
      for (let i = 0; i < BASE_COUNT; i++) {let set = new containers.ConcurrentSet<Int>();set.add(val);sets.push(set);}
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { sets[i].clear(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'clear', 'clear(): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_ToString_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      set.add(new Int(1));
      let res: String = new String("");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = set.toString(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'toString', 'toString(): string', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Keys_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      set.add(new Int(1));
      let res: IterableIterator<Int> | null = null;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = set.keys(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'keys', 'keys(): IterableIterator<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Values_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      set.add(new Int(1));
      let res: IterableIterator<Int> | null = null;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = set.values(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'values', 'values(): IterableIterator<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Entries_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      set.add(new Int(1));
      let res: IterableIterator<[Int, Int]> | null = null;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = set.entries(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'entries', 'entries(): IterableIterator<[T, T]>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_Iterator_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      set.add(new Int(1));
      let res: IterableIterator<Int> | null = null;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = set.$_iterator(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', '$_iterator', '$_iterator(): IterableIterator<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSet_ForEach_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      set.add(new Int(1));
      let cb = (value: Int, value2: Int, set: containers.ConcurrentSet<Int>) => {};
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { set.forEach(cb); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSet', 'forEach', 'forEach(callbackfn): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentSetIterator_Next_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      for (let i = 0; i < BASE_COUNT; i++) {set.add(new Int(i as int));}
      let iter = set.values();
      let res: IteratorResult<Int> | null = null;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = iter.next(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSetIterator', 'next', 'next(): IteratorResult<T>', arkTsAveragedTime);
    })

    it('PerformanceTest_EmptyConcurrentSetIterator_Next_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new containers.ConcurrentSet<Int>();
      let iter = set.values();
      let res: IteratorResult<Int> | null = null;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = iter.next(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentSetIterator', 'next', 'next(): IteratorResult<T>', arkTsAveragedTime);
    })

  })
}