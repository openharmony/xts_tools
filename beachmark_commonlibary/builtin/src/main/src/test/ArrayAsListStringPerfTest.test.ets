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

export default function ArrayAsListStringPerfTest() {
  describe('ArrayAsListStringPerfTest', () => {

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
    // 01  constructor(capacity: int, val: String)
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListString_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ArrayAsListString = new containers.ArrayAsListString();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list = new containers.ArrayAsListString(10, new String("1"));
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = list;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListString_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListString', 'constructor',
        'constructor(capacity: int, val: String)', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 02  constructor()
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListString_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ArrayAsListString = new containers.ArrayAsListString();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list = new containers.ArrayAsListString();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = list;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListString_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListString', 'constructor',
        'constructor()', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 03  constructor(capacity: int)
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListString_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ArrayAsListString = new containers.ArrayAsListString();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list = new containers.ArrayAsListString(10);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = list;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListString_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListString', 'constructor',
        'constructor(capacity: int)', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 04  reserve(capacity: int): void
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListString_Reserve_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListString();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list.reserve(10);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = list;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListString_Reserve_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListString', 'reserve',
        'reserve(capacity: int): void', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 05  toArray(): String[]
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListString_ToArray_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListString(10, new String("1"));
      let res: String[] = [];
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = list.toArray();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListString_ToArray_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListString', 'toArray',
        'toArray(): String[]', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 06  pushFront(e: String): void
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListString_PushFront_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListString();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list.pushFront(new String(i.toString()));
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = list;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListString_PushFront_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListString', 'pushFront',
        'pushFront(e: String): void', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 07  popFront(): String
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListString_PopFront_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListString(BASE_COUNT, new String("1"));
      let res: String = new String("");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = list.popFront();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListString_PopFront_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListString', 'popFront',
        'popFront(): String', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 08  pushBack(e: String): void
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListString_PushBack_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListString();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list.pushBack(new String(i.toString()));
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = list;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListString_PushBack_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListString', 'pushBack',
        'pushBack(e: String): void', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 09  popBack(): String
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListString_PopBack_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListString(BASE_COUNT, new String("1")); // 循环前必须预填充足够元素
      let res: String = new String("");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = list.popBack();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListString_PopBack_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListString', 'popBack',
        'popBack(): String', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 10  size(): int
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListString_Size_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListString(10, new String("1"));
      let res: int = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = list.size();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListString_Size_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListString', 'size',
        'size(): int', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 11  at(index: int): String
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListString_At_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListString(10, new String("1"));
      let res: String = new String("");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = list.at(0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListString_At_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListString', 'at',
        'at(index: int): String', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 12  set(index: int, e: String): void
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListString_Set_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListString(10, new String("1"));
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list.set(0, new String(i.toString()));
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = list;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListString_Set_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListString', 'set',
        'set(index: int, e: String): void', arkTsAveragedTime);
    })

    // ----------------------------------------------------------------
    // 13  has(e: String): boolean
    // ----------------------------------------------------------------
    it('PerformanceTest_ArrayAsListString_Has_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list = new containers.ArrayAsListString(10, new String("1"));
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = list.has(new String("1"));
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListString_Has_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListString', 'has',
        'has(e: String): boolean', arkTsAveragedTime);
    })

  })
}