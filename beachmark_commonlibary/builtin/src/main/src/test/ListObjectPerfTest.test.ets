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

class MockListObject implements containers.ListObject {
  pushFront(e: Object): void {}
  popFront(): Object { return new Object(); }
  pushBack(e: Object): void {}
  popBack(): Object { return new Object(); }
  size(): int { return 0 as int; }
  at(index: int): Object { return new Object(); }
  set(index: int, e: Object): void {}
  has(e: Object): boolean { return true; }
}

export default function ListObjectPerfTest(): void {
  describe('ListObjectPerfTest', () => {
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
    // 1. ListObject Interface Methods
    // ================================================================

    it('PerformanceTest_ListObject_PushFront_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ListObject = new MockListObject();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list.pushFront(new Object());
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _list=list;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ListObject', 'pushFront', 'pushFront(e: Object): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ListObject_PopFront_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ListObject = new MockListObject();

      for (let i = 0; i < BASE_COUNT; i++) {
        list.pushBack(new Object());
      }
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list.popFront();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _list=list;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ListObject', 'popFront', 'popFront(): Object', arkTsAveragedTime);
    })

    it('PerformanceTest_ListObject_PushBack_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ListObject = new MockListObject();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list.pushBack(new Object());
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _list=list;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ListObject', 'pushBack', 'pushBack(e: Object): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ListObject_PopBack_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ListObject = new MockListObject();

      for (let i = 0; i < BASE_COUNT; i++) {
        list.pushBack(new Object());
      }
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list.popBack();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _list=list;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ListObject', 'popBack', 'popBack(): Object', arkTsAveragedTime);
    })

    it('PerformanceTest_ListObject_Size_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ListObject = new MockListObject();
      list.pushBack(new Object());
      let Stime = new Date().getTime();
      let currentSize = 0;

      for (let i = 0; i < BASE_COUNT; i++) {
        currentSize = list.size();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _list = list;
      let _size = currentSize;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ListObject', 'size', 'size(): int', arkTsAveragedTime);
    })

    it('PerformanceTest_ListObject_At_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ListObject = new MockListObject();
      list.pushBack(new Object());
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list.at(0 as int);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _list=list;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ListObject', 'at', 'at(index: int): Object', arkTsAveragedTime);
    })

    it('PerformanceTest_ListObject_Set_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ListObject = new MockListObject();
      list.pushBack(new Object());
      let val = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list.set(0 as int, val);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _list=list;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ListObject', 'set', 'set(index: int, e: Object): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ListObject_Has_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ListObject = new MockListObject();
      let val = new Object();
      list.pushBack(val);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        list.has(val);
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _list=list;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ListObject', 'has', 'has(e: Object): boolean', arkTsAveragedTime);
    })

  })
}