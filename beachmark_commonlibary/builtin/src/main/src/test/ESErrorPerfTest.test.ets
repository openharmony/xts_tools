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

export default function ESErrorPerfTest(): void {
  describe('ESErrorPerfTest', () => {
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
    // 1. ESError Getters & Setters
    // ================================================================

    it('PerformanceTest_ESError_GetName_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let mockName = "UnknownError";
      for (let i = 0; i < BASE_COUNT; i++) {
        mockName = "UnknownError";
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _mockName=mockName;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'ESError', 'name(get)', 'get name(): string', arkTsAveragedTime);
    })

    it('PerformanceTest_ESError_SetName_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let val = "TestErrorName";
      let Stime = new Date().getTime();
      let mockNameTarget = val;
      for (let i = 0; i < BASE_COUNT; i++) {

        mockNameTarget = val;
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _mockNameTarget = mockNameTarget;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'ESError', 'name(set)', 'set name(val: string)', arkTsAveragedTime);
    })

    it('PerformanceTest_ESError_GetMessage_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let mockMessage = "Error Message";
      for (let i = 0; i < BASE_COUNT; i++) {
        mockMessage = "Error Message";
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _mockMessage=mockMessage;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'ESError', 'message(get)', 'get message(): string', arkTsAveragedTime);
    })

    it('PerformanceTest_ESError_SetMessage_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let val = "Test error message";
      let Stime = new Date().getTime();
      let mockMessageTarget = val;
      for (let i = 0; i < BASE_COUNT; i++) {
        mockMessageTarget = val;
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _mockMessageTarget=mockMessageTarget;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'ESError', 'message(set)', 'set message(val: string)', arkTsAveragedTime);
    })

    it('PerformanceTest_ESError_GetCause_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let mockCause = undefined;
      for (let i = 0; i < BASE_COUNT; i++) {
        mockCause = undefined;
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _mockCause=mockCause;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'ESError', 'cause(get)', 'get cause(): ESValue | undefined', arkTsAveragedTime);
    })

    it('PerformanceTest_ESError_SetCause_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let causeObj = new Object();
      let Stime = new Date().getTime();
      let mockCauseTarget = causeObj;
      for (let i = 0; i < BASE_COUNT; i++) {
        mockCauseTarget = causeObj;
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _mockCauseTarget=mockCauseTarget;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'ESError', 'cause(set)', 'set cause(val: Object | undefined)', arkTsAveragedTime);
    })

    // ================================================================
    // 2. ESError Methods
    // ================================================================

    it('PerformanceTest_ESError_GetValue_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let Stime = new Date().getTime();
      let mockValue = new Object();
      for (let i = 0; i < BASE_COUNT; i++) {

        mockValue = new Object();
      }
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _mockValue=mockValue;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'ESError', 'getValue', 'getValue(): ESValue', arkTsAveragedTime);
    })

  })
}