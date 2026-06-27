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
  expect,
  TestType,
  Size,
  Level,
  beforeAll,
  afterAll,
  beforeEach,
  afterEach
} from "@ohos/hypium";
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function RuntimeLinkerErrorsPerfTest(): void {
  describe('RuntimeLinkerErrorsPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_LinkerError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Error = new Error("test message");
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Error("test message");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LinkerError_Constructor_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Error', 'constructor',
          'constructor(message?: string, options?: ErrorOptions)', arkTsAveragedTime);
        expect(res1 instanceof Error && res1.message === "test message").assertTrue();
        done();
      });

    it('PerformanceTest_LinkerVerificationError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Error = new Error("verification failed");
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Error("verification failed");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LinkerVerificationError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Error', 'constructor',
          'constructor(message?: string, options?: ErrorOptions)', arkTsAveragedTime);
        expect(res1 instanceof Error && res1.message === "verification failed").assertTrue();
        done();
      })

    it('PerformanceTest_LinkerUnresolvedClassError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Error = new Error("class not found");
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Error("class not found");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LinkerUnresolvedClassError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Error', 'constructor',
          'constructor(message?: string, options?: ErrorOptions)', arkTsAveragedTime);
        expect(res1 instanceof Error && res1.message === "class not found").assertTrue();
        done();
      })

    it('PerformanceTest_LinkerUnresolvedFieldError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Error = new Error("field not found");
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Error("field not found");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LinkerUnresolvedFieldError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Error', 'constructor',
          'constructor(message?: string, options?: ErrorOptions)', arkTsAveragedTime);
        expect(res1 instanceof Error && res1.message === "field not found").assertTrue();
        done();
      })

    it('PerformanceTest_LinkerUnresolvedMethodError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Error = new Error("method not found");
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Error("method not found");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LinkerUnresolvedMethodError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Error', 'constructor',
          'constructor(message?: string, options?: ErrorOptions)', arkTsAveragedTime);
        expect(res1 instanceof Error && res1.message === "method not found").assertTrue();
        done();
      })

    it('PerformanceTest_LinkerBadSupertypeError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Error = new Error("bad supertype");
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Error("bad supertype");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LinkerBadSupertypeError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Error', 'constructor',
          'constructor(message?: string, options?: ErrorOptions)', arkTsAveragedTime);
        expect(res1 instanceof Error && res1.message === "bad supertype").assertTrue();
        done();
      })

    it('PerformanceTest_LinkerTypeCircularityError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Error = new Error("type circularity detected");
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Error("type circularity detected");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LinkerTypeCircularityError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Error', 'constructor',
          'constructor(message?: string, options?: ErrorOptions)', arkTsAveragedTime);
        expect(res1 instanceof Error && res1.message === "type circularity detected").assertTrue();
        done();
      })

    it('PerformanceTest_LinkerMethodConflictError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Error = new Error("method conflict");
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Error("method conflict");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LinkerMethodConflictError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Error', 'constructor',
          'constructor(message?: string, options?: ErrorOptions)', arkTsAveragedTime);
        expect(res1 instanceof Error && res1.message === "method conflict").assertTrue();
        done();
      })

    it('PerformanceTest_LinkerAbstractMethodError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Error = new Error("abstract method not implemented");
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Error("abstract method not implemented");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LinkerAbstractMethodError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Error', 'constructor',
          'constructor(message?: string, options?: ErrorOptions)', arkTsAveragedTime);
        expect(res1 instanceof Error && res1.message === "abstract method not implemented").assertTrue();
        done();
      })

    it('PerformanceTest_LinkerClassNotFoundError_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: Error = new Error("class not found");
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new Error("class not found");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LinkerClassNotFoundError_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Error', 'constructor',
          'constructor(message?: string, options?: ErrorOptions)', arkTsAveragedTime);
        expect(res1 instanceof Error && res1.message === "class not found").assertTrue();
        done();
      })

  })
}