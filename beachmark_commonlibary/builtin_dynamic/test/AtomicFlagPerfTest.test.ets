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
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function AtomicFlagPerfTest(): void {
  describe('AtomicFlagPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_AtomicFlag_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: boolean = true;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = true;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: boolean = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicFlag_Constructor_0100: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.debug.concurrency', 'AtomicFlag', 'constructor',
          'constructor(v: boolean)', arkTsAveragedTime);
        expect(res1 === true).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicFlag_Instance_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let flag: boolean = true;
        let res: boolean = false;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = flag;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: boolean = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicFlag_Instance_0100: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.debug.concurrency', 'AtomicFlag', 'get',
          'get(): boolean', arkTsAveragedTime);
        expect(res1 === true).assertTrue();
        done();
      })

    it('PerformanceTest_AtomicFlag_Instance_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let flag: boolean = false;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          flag = true;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: boolean = flag;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AtomicFlag_Instance_0200: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.debug.concurrency', 'AtomicFlag', 'set',
          'set(v: boolean): void', arkTsAveragedTime);
        expect(res1 === true).assertTrue();
        done();
      })

  })
}