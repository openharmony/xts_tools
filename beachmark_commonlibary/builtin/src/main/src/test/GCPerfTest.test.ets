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
  beforeEach,
  afterAll
} from "../../../hypium/index";
import performance from './Performance.util';

class GCTestObj {
  value: int = 42
}

export default function GCPerfTest() {
  describe('GCPerfTest', () => {
    // 毫秒 * 1000 = 微秒 毫秒 * 1000000 = 纳秒
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

    // ========== getFreeHeapSize 测试 ==========
    it('PerformanceTest_GC_GetFreeHeapSize_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: long = GC.getFreeHeapSize();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = GC.getFreeHeapSize();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_GC_GetFreeHeapSize_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'GC', 'getFreeHeapSize',
        'getFreeHeapSize(): long', arkTsAveragedTime);
    })

    // ========== getUsedHeapSize 测试 ==========
    it('PerformanceTest_GC_GetUsedHeapSize_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: long = GC.getUsedHeapSize();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = GC.getUsedHeapSize();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_GC_GetUsedHeapSize_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'GC', 'getUsedHeapSize',
        'getUsedHeapSize(): long', arkTsAveragedTime);
    })

    // ========== getReservedHeapSize 测试 ==========
    it('PerformanceTest_GC_GetReservedHeapSize_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: long = GC.getReservedHeapSize();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = GC.getReservedHeapSize();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_GC_GetReservedHeapSize_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'GC', 'getReservedHeapSize',
        'getReservedHeapSize(): long', arkTsAveragedTime);
    })

    // ========== getObjectSize 测试 ==========
    it('PerformanceTest_GC_GetObjectSize_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = new GCTestObj();
      let res: long = GC.getObjectSize(obj);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = GC.getObjectSize(obj);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_GC_GetObjectSize_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'GC', 'getObjectSize',
        'getObjectSize(obj: Object): long', arkTsAveragedTime);
    })

    // ========== getObjectAddress 测试 ==========
    it('PerformanceTest_GC_GetObjectAddress_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = new GCTestObj();
      let res: long = GC.getObjectAddress(obj);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = GC.getObjectAddress(obj);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_GC_GetObjectAddress_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'GC', 'getObjectAddress',
        'getObjectAddress(obj: Object): long', arkTsAveragedTime);
    })

    // ========== pinObject 测试 ==========
    it('PerformanceTest_GC_PinObject_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = new GCTestObj();
      let res: boolean = true;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        GC.pinObject(obj);
        GC.unpinObject(obj);
        res = true;
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_GC_PinObject_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'GC', 'pinObject',
        'pinObject(obj: Object): void', arkTsAveragedTime);
    })

    // ========== unpinObject 测试 ==========
    it('PerformanceTest_GC_UnpinObject_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = new GCTestObj();
      GC.pinObject(obj);
      let res: boolean = true;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        GC.unpinObject(obj);
        GC.pinObject(obj);
        res = true;
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_GC_UnpinObject_0700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'GC', 'unpinObject',
        'unpinObject(obj: Object): void', arkTsAveragedTime);
    })

    // ========== allocatePinnedIntArray 测试 ==========
    it('PerformanceTest_GC_AllocatePinnedIntArray_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr: FixedArray<int> | undefined = GC.allocatePinnedIntArray(1024);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        arr = GC.allocatePinnedIntArray(1024);
        GC.unpinObject(arr);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = arr;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_GC_AllocatePinnedIntArray_0800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'GC', 'allocatePinnedIntArray',
        'allocatePinnedIntArray(length: long): FixedArray<int>', arkTsAveragedTime);
    })

    // ========== getObjectSpaceType 测试 ==========
    it('PerformanceTest_GC_GetObjectSpaceType_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj = new GCTestObj();
      let res: GC.ObjectSpaceType = GC.getObjectSpaceType(obj);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = GC.getObjectSpaceType(obj);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_GC_GetObjectSpaceType_0900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'GC', 'getObjectSpaceType',
        'getObjectSpaceType(obj: Object): ObjectSpaceType', arkTsAveragedTime);
    })

    // ========== isScheduledGCTriggered 测试 ==========
    it('PerformanceTest_GC_IsScheduledGCTriggered_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: boolean = GC.isScheduledGCTriggered();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = GC.isScheduledGCTriggered();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_GC_IsScheduledGCTriggered_1000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'GC', 'isScheduledGCTriggered',
        'isScheduledGCTriggered(): boolean', arkTsAveragedTime);
    })

  })
}
