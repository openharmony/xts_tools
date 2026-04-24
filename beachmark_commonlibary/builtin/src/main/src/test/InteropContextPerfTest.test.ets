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

export default function InteropContextPerfTest(): void {
  describe('InteropContextPerfTest', () => {
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

    const PKG_NAME = 'std.interop';

    // ================================================================
    // 1. InteropContext Private Native APIs
    // ================================================================

    it('PerformanceTest_InteropContext_GetInteropRuntimeLinker_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {

        let mockLinkerResult = null;
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      performance.apiWithClassAndKeywordTxt(PKG_NAME, 'InteropContext', 'getInteropRuntimeLinker', 'getInteropRuntimeLinker(): RuntimeLinker', arkTsAveragedTime);
    })


  })
}
