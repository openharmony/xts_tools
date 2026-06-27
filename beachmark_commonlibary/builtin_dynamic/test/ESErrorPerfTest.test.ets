/*
 * Copyright (c) 2021-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import {
  describe,
  it,
  TestType,
  Size,
  Level,
  beforeEach,
  afterAll,
  expect
} from "@ohos/hypium";
import systemDateTime from '@ohos.systemDateTime';
import performance from './Performance.util';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function ESErrorPerfTest(): void {
  describe('ESErrorPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_ESError_Constructor_0000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let err: Error = new Error();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          err = new Error();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = err;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ESError_Constructor_0000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'ESError', 'constructor', 'constructor(err: Any)', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_ESError_GetName_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let err: Error = new Error();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          err = new Error();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = err;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ESError_GetName_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'ESError', 'name(get)', 'get name(): string', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_ESError_SetName_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let err: Error = new Error();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          err = new Error();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = err;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ESError_SetName_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'ESError', 'name(set)', 'set name(val: string)', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_ESError_GetMessage_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let err: Error = new Error();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          err = new Error();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = err;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ESError_GetMessage_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'ESError', 'message(get)', 'get message(): string', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_ESError_SetMessage_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let err: Error = new Error();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          err = new Error();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = err;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ESError_SetMessage_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'ESError', 'message(set)', 'set message(val: string)', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_ESError_GetCause_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let err: Error = new Error();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          err = new Error();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = err;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ESError_GetCause_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'ESError', 'cause(get)', 'get cause(): ESValue | undefined', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_ESError_SetCause_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let err: Error = new Error();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          err = new Error();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = err;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ESError_SetCause_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'ESError', 'cause(set)', 'set cause(val: Object | undefined)', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_ESError_GetValue_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let err: Error = new Error();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          err = new Error();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = err;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ESError_GetValue_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'ESError', 'getValue', 'getValue(): ESValue', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })
  })
}