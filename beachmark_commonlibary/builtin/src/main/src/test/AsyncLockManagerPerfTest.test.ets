/*
 * Copyright (C) 2025-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
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


export default function AsyncLockManagerPerfTest() {
  describe('AsyncLockManagerPerfTest', () => {
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


    it('PerformanceTest_AsyncLockState_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let result = new AsyncLockState()
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = new AsyncLockState()
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res = result
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockState_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockState', 'constructor',
        'constructor()', arkTsAveragedTime);
    })

    it('PerformanceTest_AsyncLockState_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let heldSet = new Set<AsyncLockInfo>();
      let pending = new Set<AsyncLockInfo>();
      let result = new AsyncLockState(heldSet, pending)
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = new AsyncLockState(heldSet, pending)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res = result
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockState_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockState', 'constructor',
        'constructor(heldSet: Set<AsyncLockInfo>, pending: Set<AsyncLockInfo>)', arkTsAveragedTime);
    })

    it('PerformanceTest_AsyncLockInfo_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let result = new AsyncLockInfo()
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = new AsyncLockInfo()
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res = result
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockInfo_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockInfo', 'constructor',
        'constructor()', arkTsAveragedTime);
    })

    it('PerformanceTest_AsyncLockInfo_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let result = new AsyncLockInfo("a", AsyncLockMode.EXCLUSIVE, 1)
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = new AsyncLockInfo("a", AsyncLockMode.EXCLUSIVE, 1)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res = result
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockInfo_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockInfo', 'constructor',
        'constructor(id: string, mode: AsyncLockMode, priority: int)', arkTsAveragedTime);
    })


    it('PerformanceTest_AsyncLockOptions_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let result = new AsyncLockOptions()
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = new AsyncLockOptions()
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res = result
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockOptions_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockOptions', 'constructor',
        'constructor()', arkTsAveragedTime);
    })

    it('PerformanceTest_AsyncLockOptions_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let result = new AsyncLockOptions(true, null, 1)
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        result = new AsyncLockOptions(true, null, 1)
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res = result
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockOptions_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockOptions', 'constructor',
        'constructor(delay?: boolean, timeout?: number, priority?: int)', arkTsAveragedTime);
    })
  })
}