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

export default function ListIntPerfTest(): void {
  describe('ListIntPerfTest', () => {
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
    // 1. ListInt Interface Methods
    // ================================================================

    it('PerformanceTest_ListInt_PushFront_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ListInt = new containers.ArrayAsListInt();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {list.pushFront(new Int(i));}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _list=list;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ListInt', 'pushFront', 'pushFront(e: Int): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ListInt_PopFront_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ListInt = new containers.ArrayAsListInt();
      for (let i = 0; i < BASE_COUNT; i++) {list.pushBack(new Int(i));}
      let res: Int = new Int(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = list.popFront();}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _list = list;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ListInt', 'popFront', 'popFront(): Int', arkTsAveragedTime);
    })

    it('PerformanceTest_ListInt_PushBack_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ListInt = new containers.ArrayAsListInt();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {list.pushBack(new Int(i));}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _list=list;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ListInt', 'pushBack', 'pushBack(e: Int): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ListInt_PopBack_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ListInt = new containers.ArrayAsListInt();
      for (let i = 0; i < BASE_COUNT; i++) {list.pushBack(new Int(i));}
      let res: Int = new Int(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = list.popBack();}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _list = list;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ListInt', 'popBack', 'popBack(): Int', arkTsAveragedTime);
    })

    it('PerformanceTest_ListInt_Size_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ListInt = new containers.ArrayAsListInt();
      list.pushBack(new Int(1 as int));
      let currentSize = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {currentSize = list.size();}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _list = list;
      let _size = currentSize;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ListInt', 'size', 'size(): int', arkTsAveragedTime);
    })

    it('PerformanceTest_ListInt_At_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ListInt = new containers.ArrayAsListInt();
      list.pushBack(new Int(1 as int));
      let res: Int = new Int(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = list.at(0 as int);}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _list = list;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ListInt', 'at', 'at(index: int): Int', arkTsAveragedTime);
    })

    it('PerformanceTest_ListInt_Set_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ListInt = new containers.ArrayAsListInt();
      list.pushBack(new Int(1 as int));
      let val = new Int(2 as int);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {list.set(0 as int, val);}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _list=list;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ListInt', 'set', 'set(index: int, e: Int): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ListInt_Has_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let list: containers.ListInt = new containers.ArrayAsListInt();
      let val = new Int(1 as int);
      list.pushBack(val);
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = list.has(val);}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _list = list;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.containers', 'ListInt', 'has', 'has(e: Int): boolean', arkTsAveragedTime);
    })

  })
}