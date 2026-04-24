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
} from "../../../hypium/index";
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
    // 1. ConcurrentHashMap
    // ================================================================
    it('PerformanceTest_ConcurrentHashMap_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map = new containers.ConcurrentHashMap<Int, Int>();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map = map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'constructor', 'constructor()', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let entries: [Int, Int][] = [[new Int(1), new Int(1)]];
      let map = new containers.ConcurrentHashMap<Int, Int>(entries);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map = new containers.ConcurrentHashMap<Int, Int>(entries);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map = map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'constructor', 'constructor(entries: ArrayLike<[K, V]>)', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let entriesMap = new containers.ConcurrentHashMap<Int, Int>();
      let map = new containers.ConcurrentHashMap<Int, Int>(entriesMap);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map = new containers.ConcurrentHashMap<Int, Int>(entriesMap);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map = map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'constructor', 'constructor(iterable: Iterable<[K, V]>)', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Constructor_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let sourceMap = new Map<Int, Int>();
      let map = new containers.ConcurrentHashMap<Int, Int>(sourceMap);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map = new containers.ConcurrentHashMap<Int, Int>(sourceMap);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;

      let _map = map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'constructor', 'constructor(map: Map<K, V>)', arkTsAveragedTime);
    })

    // ================================================================
    // 2. ConcurrentHashMap
    // ================================================================
    it('PerformanceTest_ConcurrentHashMap_Set_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map.set(new Int(i), new Int(i));
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'set', 'set(key: K, val: V): this', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Get_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      map.set(new Int(1), new Int(1));
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map.get(new Int(1));
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'get', 'get(key: K): V | undefined', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Has_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      map.set(new Int(1), new Int(1));
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map.has(new Int(1));
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'has', 'has(key: K): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Replace_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      map.set(new Int(1), new Int(1));
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map.replace(new Int(1), new Int(i));
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'replace', 'replace(key: K, newValue: V): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Size_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();

      for (let j = 0; j < 10; j++) {
        map.set(new Int(j), new Int(j));
      }
      let Stime = new Date().getTime();
      let currentSize = 0;

      for (let i = 0; i < BASE_COUNT; i++) {
        currentSize = map.size;
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map = map;
      let _size = currentSize;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'size', 'get size(): int', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Remove_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map.set(new Int(i), new Int(i));
        map.remove(new Int(i));
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'remove', 'remove(key: K): V | undefined', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Delete_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map.set(new Int(i), new Int(i));
        map.delete(new Int(i));
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'delete', 'delete(key: K): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Clear_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map.set(new Int(1), new Int(1));
        map.clear();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'clear', 'clear(): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_IsEmpty_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map.isEmpty();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'isEmpty', 'isEmpty(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_ToString_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      map.set(new Int(1), new Int(1));
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map.toString();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'toString', 'toString(): String', arkTsAveragedTime);
    })

    // ================================================================
    // 3. ConcurrentHashMap
    // ================================================================
    it('PerformanceTest_ConcurrentHashMap_Keys_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map.keys();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'keys', 'keys(): IterableIterator<K>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Values_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map.values();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'values', 'values(): IterableIterator<V>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Entries_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map.entries();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'entries', 'entries(): IterableIterator<[K, V]>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_Iterator_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map.$_iterator();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', '$_iterator', '$_iterator(): IterableIterator<[K, V]>', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMap_ForEach_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      map.set(new Int(1), new Int(1));
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        map.forEach((v, k) => {});
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=map;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMap', 'forEach', 'forEach(callbackfn): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ConcurrentHashMapIterator_Next_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      map.set(new Int(1), new Int(1));
      let iter = map.entries();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        iter.next();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=iter;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ConcurrentHashMapIterator', 'next', 'next(): IteratorResult<R>', arkTsAveragedTime);
    })

    it('PerformanceTest_EmptyConcurrentHashMapIterator_Next_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let map = new containers.ConcurrentHashMap<Int, Int>();
      let iter = map.entries();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        iter.next();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _map=iter;
      performance.apiWithClassAndKeywordTxt('std.containers', 'EmptyConcurrentHashMapIterator', 'next', 'next(): IteratorResult<R>', arkTsAveragedTime);
    })

  })
}