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
import { systemDateTime } from '@kit.BasicServicesKit';
import performance from './Performance.util';

import { ArkTSUtils } from '@kit.ArkTS';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function AsyncLockPerfTest(): void {
  describe('AsyncLockPerfTest', () => {

    const BASE_COUNT = 1000;
    beforeEach(() => {

    })
    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_AsyncLock_AsyncLockMode_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {

        let res: ArkTSUtils.locks.AsyncLockMode = ArkTSUtils.locks.AsyncLockMode.EXCLUSIVE;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = ArkTSUtils.locks.AsyncLockMode.EXCLUSIVE;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime  / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLock_AsyncLockMode_0100: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockMode', 'EXCLUSIVE',
          'EXCLUSIVE', arkTsAveragedTime);
        expect(res1 === ArkTSUtils.locks.AsyncLockMode.EXCLUSIVE).assertTrue();
        done();
      })

    it('PerformanceTest_AsyncLock_AsyncLockMode_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: ArkTSUtils.locks.AsyncLockMode = ArkTSUtils.locks.AsyncLockMode.SHARED;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = ArkTSUtils.locks.AsyncLockMode.SHARED;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime  / BASE_COUNT;
        console.info('arkTsPerformanceTet arkTsAveragedTime PerformanceTest_AsyncLock_AsyncLockMode_0200: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockMode', 'SHARED',
          'SHARED', arkTsAveragedTime);
        expect(res === ArkTSUtils.locks.AsyncLockMode.SHARED).assertTrue();
        done();
      })

    it('PerformanceTest_AsyncLock_AsyncLockMode_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: ArkTSUtils.locks.AsyncLockMode = ArkTSUtils.locks.AsyncLockMode.EXCLUSIVE;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = res = ArkTSUtils.locks.AsyncLockMode.EXCLUSIVE;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime  / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLock_AsyncLockMode_0300: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockMode', 'UNLOCKED',
          'UNLOCKED', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })
    it('PerformanceTest_AsyncLock_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {

        let result: ArkTSUtils.locks.AsyncLock | undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = new ArkTSUtils.locks.AsyncLock()
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLock_Constructor_0100: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLock', 'constructor',
          'constructor()', arkTsAveragedTime);
        expect(result !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_AsyncLock_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      async (done: Function) => {
        let result: ArkTSUtils.locks.AsyncLock | undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = ArkTSUtils.locks.AsyncLock.request("a");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime  / BASE_COUNT;
        let res1 = result
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLock_Static_0100: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLock', 'request',
          'static request(id: string): AsyncLock', arkTsAveragedTime);
        expect(result !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_AsyncLock_Instance_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      async (done: Function) => {
        let asyncLock = new ArkTSUtils.locks.AsyncLock();
        let result = 0;
        let callback = (): number => {
          result++;
          return result;
        };
        let resultA = await asyncLock.lockAsync(callback);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          resultA = await asyncLock.lockAsync(callback);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = resultA
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLock_Instance_0100: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLock', 'lockAsync',
          'lockAsync<T>(callback: () => T): Promise<T>', arkTsAveragedTime);
        expect(resultA > 0).assertTrue();
        done();
      })

    it('PerformanceTest_AsyncLock_Instance_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      async (done: Function) => {
        let resultA: ArkTSUtils.locks.AsyncLockState[] = [];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          resultA = ArkTSUtils.locks.AsyncLock.queryAll();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = resultA;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLock_Static_0300: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLock', 'queryAll',
          'static queryAll(): AsyncLockState[]', arkTsAveragedTime);
        expect(resultA !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_AsyncLock_Instance_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      async (done: Function) => {
        let asyncLock = new ArkTSUtils.locks.AsyncLock();
        let result = 0;
        let callback = (): number => {
          result++;
          return result;
        };
        let resultA: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          resultA = await asyncLock.lockAsync(callback);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime/ BASE_COUNT;
        let res1 = resultA
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLock_Instance_0300: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLock', 'lockAsync',
          'lockAsync<T>(callback: () => T): Promise<T>',
          arkTsAveragedTime);
        expect(resultA > 0).assertTrue();
        done();
      })

    it('PerformanceTest_AsyncLock_Static_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      async (done: Function) => {
        let lock = ArkTSUtils.locks.AsyncLock.request("a");
        let resultA: ArkTSUtils.locks.AsyncLockState | undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          resultA = ArkTSUtils.locks.AsyncLock.query(lock.name);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        let res1 = resultA
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLock_Static_0200: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLock', 'query',
          'static query(id: string): AsyncLock | undefined', arkTsAveragedTime);
        expect(resultA !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_AsyncLock_Static_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      async (done: Function) => {
        let ln = "a"
        let result = 0
        let callback = (): number => {
          result++;
          return result;
        };
        let resultA: ArkTSUtils.locks.AsyncLock[] = [];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          ArkTSUtils.locks.AsyncLock.queryAll();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime  / BASE_COUNT;
        let res1 = resultA
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLock_Static_0300: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLock', 'queryAll',
          'static queryAll(): AsyncLock[]', arkTsAveragedTime);
        expect(resultA !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_AsyncLock_Instance_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      async (done: Function) => {
        let lock = ArkTSUtils.locks.AsyncLock.request("a");
        let resultA: ArkTSUtils.locks.AsyncLockState | undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          resultA = ArkTSUtils.locks.AsyncLock.query(lock.name);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = resultA;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLock_Instance_0400: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLock', 'query',
          'query(): AsyncLockState', arkTsAveragedTime);
        expect(resultA !== undefined).assertTrue();
        done();
      })
  })
}
