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


export default function ChronoPerfTest() {
  describe('ChronoPerfTest', () => {
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
    // 1. NS_PER_MS
    // ================================================================
    it('PerformanceTest_Chrono_NS_PER_MS_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: long = 0 as long;
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Chrono.NS_PER_MS;
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.time', 'Chrono', 'NS_PER_MS', 'NS_PER_MS: long', arkTsAveragedTime);
    })

    // ================================================================
    // 2. NanoNow
    // ================================================================
    it('PerformanceTest_Chrono_NanoNow_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: long = 0 as long;
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Chrono.nanoNow();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.time', 'Chrono', 'nanoNow', 'nanoNow(): long', arkTsAveragedTime);
    })

    // ================================================================
    // 2. MilliNow
    // ================================================================
    it('PerformanceTest_Chrono_MilliNow_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: number = 0.0;
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Chrono.milliNow();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.time', 'Chrono', 'milliNow', 'milliNow(): number', arkTsAveragedTime);
    })

    // ================================================================
    // 2. GetCpuTime
    // ================================================================
    it('PerformanceTest_Chrono_GetCpuTime_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let res: long = 0 as long;
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Chrono.getCpuTime();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      performance.apiWithClassAndKeywordTxt('std.time', 'Chrono', 'getCpuTime', 'getCpuTime(): long', arkTsAveragedTime);
    })

  })
}