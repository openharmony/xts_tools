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
import { ArkTSUtils } from '@kit.ArkTS';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function AsyncRWLockPerfTest(): void {
  describe('AsyncRWLockPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {

    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_AsyncReadWriteLock_Constructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: ArkTSUtils.locks.AsyncLock | undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new ArkTSUtils.locks.AsyncLock();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('AsyncReadWriteLock constructor: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncReadWriteLock', 'constructor',
          'constructor()', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })
    it('PerformanceTest_AsyncReadWriteLock_ReadLock_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let lock: ArkTSUtils.locks.AsyncLock = new ArkTSUtils.locks.AsyncLock();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        lock.lockAsync<void>(() => {}, ArkTSUtils.locks.AsyncLockMode.SHARED);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = lock;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncReadWriteLock_ReadLock_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncReadWriteLock', 'readLock',
        'readLock(): AsyncReadLock', arkTsAveragedTime);
      expect(arkTsAveragedTime >= 0).assertTrue();
      done();
    })

    it('PerformanceTest_AsyncReadWriteLock_WriteLock_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let lock: ArkTSUtils.locks.AsyncLock = new ArkTSUtils.locks.AsyncLock();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          lock.lockAsync<void>(() => {}, ArkTSUtils.locks.AsyncLockMode.EXCLUSIVE);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = lock;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_AsyncReadWriteLock_WriteLock_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncReadWriteLock', 'writeLock',
          'writeLock(): AsyncWriteLock', arkTsAveragedTime);
        expect(arkTsAveragedTime >= 0).assertTrue();
        done();
      })

    it('PerformanceTest_AsyncReadWriteLock_ExecuteReadLock_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, async (done: Function) => {
        let lock: ArkTSUtils.locks.AsyncLock = new ArkTSUtils.locks.AsyncLock();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          await lock.lockAsync<void>(() => {}, ArkTSUtils.locks.AsyncLockMode.SHARED);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = lock;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_AsyncReadWriteLock_ExecuteReadLock_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncReadWriteLock', 'executeReadLock',
          'executeReadLock(): Promise<void>', arkTsAveragedTime);
        expect(arkTsAveragedTime >= 0).assertTrue();
        done();
      })

    it('PerformanceTest_AsyncReadWriteLock_Unlock_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, async (done: Function) => {
        let lock: ArkTSUtils.locks.AsyncLock = new ArkTSUtils.locks.AsyncLock();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          await lock.lockAsync<void>(() => {}, ArkTSUtils.locks.AsyncLockMode.SHARED);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = lock;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_AsyncReadWriteLock_Unlock_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncReadWriteLock', 'unlock',
          'unlock(): void', arkTsAveragedTime);
        expect(arkTsAveragedTime >= 0).assertTrue();
        done();
      })

    it('PerformanceTest_AsyncReadLock_Constructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let lock: ArkTSUtils.locks.AsyncLock | undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          lock = new ArkTSUtils.locks.AsyncLock();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = lock;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_AsyncReadLock_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncReadLock', 'constructor',
          'constructor(rwl: AsyncReadWriteLock)', arkTsAveragedTime);
        expect(arkTsAveragedTime >= 0).assertTrue();
        done();
      })

    it('PerformanceTest_AsyncReadLock_Unlock_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, async (done: Function) => {
        let lock: ArkTSUtils.locks.AsyncLock = new ArkTSUtils.locks.AsyncLock();
        await lock.lockAsync<void>(() => {}, ArkTSUtils.locks.AsyncLockMode.SHARED);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          await lock.lockAsync<void>(() => {}, ArkTSUtils.locks.AsyncLockMode.SHARED);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = lock;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_AsyncReadLock_Unlock_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncReadLock', 'unlock',
          'unlock(): void', arkTsAveragedTime);
        expect(arkTsAveragedTime >= 0).assertTrue();
        done();
      })

    it('PerformanceTest_AsyncWriteLock_Constructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let lock: ArkTSUtils.locks.AsyncLock | undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          lock = new ArkTSUtils.locks.AsyncLock();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = lock;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_AsyncWriteLock_Constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncWriteLock', 'constructor',
          'constructor(rwl: AsyncReadWriteLock)', arkTsAveragedTime);
        expect(arkTsAveragedTime >= 0).assertTrue();
        done();
      })
  })
}