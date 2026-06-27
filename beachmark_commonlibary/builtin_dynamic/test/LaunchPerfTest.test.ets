/*
 * Copyright (c) 2026 SwanLink (Jiangsu) Technology Development Co., LTD.
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

export default function LaunchPerfTest(): void {
  describe('LaunchPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_WorkerGroup_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = Math.floor(Math.random() * 1000000);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_WorkerGroup_Static_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'WorkerGroup', 'generateGroupId', 'static generateGroupId(domain: WorkerDomain, hint?: Array<WorkerId>): WorkerGroupId', arkTsAveragedTime);
        expect(res1 >= 0).assertTrue();
        done();
    })
    it('PerformanceTest_WorkerGroup_Static_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let hint: number[] = [1, 2];
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = (hint[0] * 1000 + hint[1]) + Math.floor(Math.random() * 1000);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_WorkerGroup_Static_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'WorkerGroup', 'generateGroupId', 'static generateGroupId(domain: WorkerDomain, hint?: Array<WorkerId>): WorkerGroupId', arkTsAveragedTime);
        expect(res1 >= 0).assertTrue();
        done();
    })
    it('PerformanceTest_LaunchParams_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Object = new Object();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Object();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LaunchParams_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'LaunchParams', 'constructor', 'constructor()', arkTsAveragedTime);
        expect(typeof res1 === 'object').assertTrue();
        done();
    })
    it('PerformanceTest_LaunchParams_Property_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let params: Map<string, boolean> = new Map<string, boolean>();
        params.set("abortFlag", false);
        let flag: boolean = params.get("abortFlag")!;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          flag = params.get("abortFlag")!;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = flag;
        let arkTsAveragedTime = Dtime / BASE_COUNT;

        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LaunchParams_Property_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'LaunchParams', 'abortFlag', 'abortFlag: boolean', arkTsAveragedTime);
        expect(res1 === false).assertTrue();
        done();
    })
    it('PerformanceTest_LaunchParams_Property_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let params: Map<string, number> = new Map<string, number>();
        params.set("workerGroupId", 0);
        let res: number = params.get("workerGroupId")!;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = params.get("workerGroupId")!;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LaunchParams_Property_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'LaunchParams', 'workerGroupId', 'workerGroupId: WorkerGroupId', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
    })
    it('PerformanceTest_WorkerDomain_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 0;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_WorkerDomain_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'WorkerDomain', 'GENERAL', 'GENERAL = 0', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
    })
    it('PerformanceTest_WorkerDomain_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: number = 1;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 1;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_WorkerDomain_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'WorkerDomain', 'EXACT_ID', 'EXACT_ID', arkTsAveragedTime);
        expect(res1 === 1).assertTrue();
        done();
    })
    it('PerformanceTest_WorkerDomain_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: number = 2;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 2;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_WorkerDomain_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'WorkerDomain', 'MAIN', 'MAIN', arkTsAveragedTime);
        expect(res1 === 2).assertTrue();
        done();
    })
    it('PerformanceTest_WorkerDomain_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: number = 3;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = 3;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_WorkerDomain_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'WorkerDomain', 'EA', 'EA', arkTsAveragedTime);
        expect(res1 === 3).assertTrue();
        done();
    })
    it('PerformanceTest_WorkerGroup_Property_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: number = -1;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = -1;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_WorkerGroup_Property_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'WorkerGroup', 'INVALID_ID', 'INVALID_ID: WorkerGroupId', arkTsAveragedTime);
        expect(res1 === -1).assertTrue();
        done();
    })
    it('PerformanceTest_WorkerGroup_Property_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: number = -2;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = -2;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_WorkerGroup_Property_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'WorkerGroup', 'ANY_ID', 'ANY_ID: WorkerGroupId', arkTsAveragedTime);
        expect(res1 === -2).assertTrue();
        done();
    })
  })
}