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

export default function ConcurrentHashMapPerfTest() {
  describe('ConcurrentHashMapPerfTest', () => {
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
    // 1. ConcurrentHashMap Constructors
    // ================================================================

    it('PerformanceTest_ConcurrentHashMap_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { map = new containers.ConcurrentHashMap<Int, Int>(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map = map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'constructor', 'constructor()', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let key = new Int(1);
      let val = new Int(1);
      let arr: Array<[Int, Int]> = [[key, val]];
      let map = new containers.ConcurrentHashMap<Int, Int>(arr);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { map = new containers.ConcurrentHashMap<Int, Int>(arr); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map = map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'constructor', 'constructor(entries?: ([K, V])[] | null)', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let key = new Int(1);
      let val = new Int(1);
      let entries: Array<[Int, Int]> = [[key, val]];
      let map = new containers.ConcurrentHashMap<Int, Int>(entries as Iterable<[Int, Int]>);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { map = new containers.ConcurrentHashMap<Int, Int>(entries as Iterable<[Int, Int]>); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map = map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'constructor', 'constructor(entries: Iterable<[K, V]>)', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Constructor_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {

      let sourceMap = new Map<Int, Int>();
      sourceMap.set(new Int(1), new Int(1));

      let map = new containers.ConcurrentHashMap<Int, Int>(sourceMap);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { map = new containers.ConcurrentHashMap<Int, Int>(sourceMap); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map = map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'constructor', 'constructor(map: Map<K, V>)', arkTsAveragedTime);
    })

    // ================================================================
    // 2. ConcurrentHashMap Methods
    // ================================================================

    it('PerformanceTest_ConcurrentHashMap_Set_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let keys: Int[] = [];
      let vals: Int[] = [];
      for (let i = 0; i < BASE_COUNT; i++) {keys.push(new Int(i as int));vals.push(new Int(i as int));}
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { map.set(keys[i], vals[i]); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'set', 'set(key: K, val: V): ConcurrentHashMap<K, V>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Get_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let key = new Int(1);
      let val = new Int(1);
      map.set(key, val);
      let res: Int | undefined = undefined;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = map.get(key); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'get', 'get(key: K): V | undefined', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Has_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let key = new Int(1);
      let val = new Int(1);
      map.set(key, val);
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = map.has(key); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'has', 'has(key: K): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Replace_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let key = new Int(1);
      let val1 = new Int(1);
      let val2 = new Int(2);
      map.set(key, val1);
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = map.replace(key, val2); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'replace', 'replace(key: K, newValue: V): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Size_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let key = new Int(1);
      let val = new Int(1);
      map.set(key, val);
      let currentSize = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { currentSize = map.size; }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map = map;
      let _size = currentSize;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'size', 'size(): int', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Remove_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let keys: Int[] = [];
      let val = new Int(1);
      for (let i = 0; i < BASE_COUNT; i++) {let key = new Int(i as int);keys.push(key);map.set(key, val);}
      let res: Int | undefined = undefined;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = map.remove(keys[i]); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'remove', 'remove(key: K): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Delete_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let keys: Int[] = [];
      let val = new Int(1);
      for (let i = 0; i < BASE_COUNT; i++) {let key = new Int(i as int);keys.push(key);map.set(key, val);}
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = map.delete(keys[i]); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'delete', 'delete(key: K): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Clear_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let maps: containers.ConcurrentHashMap<Int, Int>[] = [];
      let key = new Int(1);
      let val = new Int(1);
      for (let i = 0; i < BASE_COUNT; i++) {let map = new containers.ConcurrentHashMap<Int, Int>();map.set(key, val);maps.push(map);}
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { maps[i].clear(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'clear', 'clear(): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_IsEmpty_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = map.isEmpty(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'isEmpty', 'isEmpty(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_ToString_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      map.set(new Int(1), new Int(1));
      let res: String = new String("");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = map.toString(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map = map;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'toString', 'toString(): String', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Keys_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      map.set(new Int(1), new Int(1));
      let res: IterableIterator<Int> | null = null;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = map.keys(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'keys', 'keys(): IterableIterator<K>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Values_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      map.set(new Int(1), new Int(1));
      let res: IterableIterator<Int> | null = null;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = map.values(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'values', 'values(): IterableIterator<V>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Entries_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      map.set(new Int(1), new Int(1));
      let res: IterableIterator<[Int, Int]> | null = null;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = map.entries(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'entries', 'entries(): IterableIterator<[K, V]>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Iterator_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      map.set(new Int(1), new Int(1));
      let res: IterableIterator<[Int, Int]> | null = null;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = map.$_iterator(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', '$_iterator', '$_iterator(): IterableIterator<[K, V]>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_ForEach_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      map.set(new Int(1), new Int(1));
      let cb = (v: Int, k: Int) => {};
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { map.forEach(cb); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'forEach', 'forEach(callbackfn): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMapIterator_Next_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      for (let i = 0; i < BASE_COUNT; i++) {map.set(new Int(i as int), new Int(i as int));}
      let iter = map.entries();
      let res: IteratorResult<[Int, Int]> | null = null;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = iter.next(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=iter;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMapIterator', 'next', 'next(): IteratorResult<R>', arkTsAveragedTime);
    })

    it('PerformanceTest_EmptyConcurrentHashMapIterator_Next_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let iter = map.entries();
      let res: IteratorResult<[Int, Int]> | null = null;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) { res = iter.next(); }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=iter;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMapIterator', 'next', 'next(): IteratorResult<R>', arkTsAveragedTime);
    })

  })
}