/*
 * Copyright (C) 2025-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
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

export default function ArrayAsListIntPerfTest() {
  describe('ArrayAsListIntPerfTest', () => {

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

    // ----------------------------------------------------------------
    // 01  constructor(capacity: int, val: Int)
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListInt_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ArrayAsListInt = new containers.ArrayAsListInt();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list = new containers.ArrayAsListInt(10, new Int(1));
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res = list;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'constructor',
        'constructor(capacity: int, val: Int)', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 02  constructor()
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListInt_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ArrayAsListInt = new containers.ArrayAsListInt();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list = new containers.ArrayAsListInt();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res = list;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'constructor',
        'constructor()', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 03  constructor(capacity: int)
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListInt_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ArrayAsListInt = new containers.ArrayAsListInt();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list = new containers.ArrayAsListInt(10);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res = list;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'constructor',
        'constructor(capacity: int)', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 04  reserve(capacity: int): void
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListInt_Reserve_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListInt();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list.reserve(10);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res = list;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_Reserve_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'reserve',
        'reserve(capacity: int): void', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 05  toArray(): Int[]
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListInt_ToArray_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListInt(10, new Int(1));
      let res: Int[] = [];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = list.toArray();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_ToArray_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'toArray',
        'toArray(): Int[]', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 06  pushFront(e: Int): void
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListInt_PushFront_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListInt();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list.pushFront(new Int(i));
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res = list;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_PushFront_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'pushFront',
        'pushFront(e: Int): void', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 07  popFront(): Int
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListInt_PopFront_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListInt(BASE_COUNT, new Int(1));
      let res: Int = new Int(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = list.popFront();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_PopFront_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'popFront',
        'popFront(): Int', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 08  pushBack(e: Int): void
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListInt_PushBack_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListInt();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list.pushBack(new Int(i));
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res = list;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_PushBack_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'pushBack',
        'pushBack(e: Int): void', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 09  popBack(): Int
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListInt_PopBack_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListInt(BASE_COUNT, new Int(1));
      let res: Int = new Int(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = list.popBack();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_PopBack_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'popBack',
        'popBack(): Int', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 10  size(): int
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListInt_Size_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListInt(10, new Int(1));
      let res: int;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = list.size();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_Size_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'size',
        'size(): int', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 11  at(index: int): Int
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListInt_At_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListInt(10, new Int(1));
      let res: Int = new Int(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = list.at(0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_At_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'at',
        'at(index: int): Int', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 12  set(index: int, e: Int): void
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListInt_Set_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListInt(10, new Int(1));
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list.set(0, new Int(i));
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res = list;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_Set_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'set',
        'set(index: int, e: Int): void', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 13  has(e: Int): boolean
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListInt_Has_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListInt(10, new Int(1));
      let res: boolean;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = list.has(new Int(1));
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_Has_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'has',
        'has(e: Int): boolean', arkTsAveragedTime);
    })

  })
}
