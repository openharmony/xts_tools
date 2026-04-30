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

export default function ErrorHandlerPerfTest() {
  describe('ErrorHandlerPerfTest', () => {
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

    it('PerformanceTest_ErrorHandler_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cb = (error: Object) => {};
      let res: ProcessErrorHandler = new ProcessErrorHandler(cb);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ProcessErrorHandler(cb);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ErrorHandler_Constructor_0100: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ProcessErrorHandler', 'constructor',
        'constructor(cb: UncaughtErrorListener): ProcessErrorHandler', arkTsAveragedTime);
    })

    it('PerformanceTest_ErrorHandler_HandleUncaughtError_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      () => {
        let handler = new ProcessErrorHandler((error: Object) => {
        });
        let error = new Error("test error");
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
          handler.handleUncaughtError(error);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
		let res1 = handler;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ErrorHandler_HandleUncaughtError_0200: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ProcessErrorHandler', 'handleUncaughtError',
          'handleUncaughtError(error: Object): void', arkTsAveragedTime);
      })

    it('PerformanceTest_ErrorHandler_Reset_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let handler = new ProcessErrorHandler((error: Object) => {
      });
      let cb = (error: Object) => {};
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        handler.reset(cb);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
	  let res1 = handler;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ErrorHandler_Reset_0300: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ProcessErrorHandler', 'reset',
        'reset(cb: UncaughtErrorListener): void', arkTsAveragedTime);
    })

  })
}
