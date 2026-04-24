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

export default function WeakSetPerfTest(): void {
  describe('WeakSetPerfTest', () => {
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
    // 1. WeakSet Constructors
    // ================================================================

    it('PerformanceTest_WeakSet_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let set = new WeakSet<Object>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {

        set = new WeakSet<Object>();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'WeakSet', 'constructor', 'constructor()', arkTsAveragedTime);
    })

    it('PerformanceTest_WeakSet_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = new Object();
      let arr: Object[] = [obj];

      let set = new WeakSet<Object>(arr);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        set = new WeakSet<Object>(arr);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;

      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'WeakSet', 'constructor', 'constructor(elements?: K[] | null)', arkTsAveragedTime);
    })

    it('PerformanceTest_WeakSet_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = new Object();
      let entries: Array<Object> = [obj];

      let set = new WeakSet<Object>(entries as Iterable<Object>);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        set = new WeakSet<Object>(entries as Iterable<Object>);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;

      let _set = set;
      performance.apiWithClassAndKeywordTxt('std.containers', 'WeakSet', 'constructor', 'constructor(elements: Iterable<K>)', arkTsAveragedTime);
    })

    // ================================================================
    // 2. WeakSet Methods
    // ================================================================

    it('PerformanceTest_WeakSet_Add_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ws = new WeakSet<Object>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        ws.add(new Object());
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _ws=ws;
      performance.apiWithClassAndKeywordTxt('std.containers', 'WeakSet', 'add', 'add(v: K): WeakSet<K>', arkTsAveragedTime);
    })

    it('PerformanceTest_WeakSet_Has_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ws = new WeakSet<Object>();
      let obj = new Object();
      ws.add(obj);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        ws.has(obj);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _ws=ws;
      performance.apiWithClassAndKeywordTxt('std.containers', 'WeakSet', 'has', 'has(v: K): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_WeakSet_Delete_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ws = new WeakSet<Object>();
      let objects: Object[] = [];

      for (let i = 0; i < BASE_COUNT; i++) {
        let obj = new Object();
        objects.push(obj);
        ws.add(obj);
      }

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        ws.delete(objects[i]);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _ws=ws;
      performance.apiWithClassAndKeywordTxt('std.containers', 'WeakSet', 'delete', 'delete(v: K): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_WeakSet_ToString_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let ws = new WeakSet<Object>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        ws.toString();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _ws=ws;
      performance.apiWithClassAndKeywordTxt('std.containers', 'WeakSet', 'toString', 'toString(): String', arkTsAveragedTime);
    })

  })
}