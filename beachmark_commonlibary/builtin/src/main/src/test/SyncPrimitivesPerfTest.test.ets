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
  TestType,
  Size,
  Level,
  beforeEach,
  afterAll
} from "../../../hypium/index";
import performance from './Performance.util';

const BASE_COUNT = 50000;
const UNIT_TIME = 1000000;

function recordPerformance(caseName: string, className: string, apiName: string, signature: string, dTime: long): void {
  let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
  console.info('arkTsPerformanceTest arkTsAveragedTime ' + caseName + ': ' + arkTsAveragedTime + 'ns');
  performance.apiWithClassAndKeywordTxt('std.core', className, apiName, signature, arkTsAveragedTime);
}

function emptyCallback(): void {
}

function createMutex(): Mutex {
  return new Mutex();
}

function createRWLock(): RWLock {
  return new RWLock();
}

function createReadLock(): ReadLock {
  let rw = new RWLock();
  return new ReadLock(rw);
}

function createWriteLock(): WriteLock {
  let rw = new RWLock();
  return new WriteLock(rw);
}

function createMutexArray(count: int): Array<Mutex> {
  let arr = Array<Mutex>();
  for (let i = 0; i < count; i++) {
    arr.push(new Mutex());
  }
  return arr;
}

function createReadLockArray(count: int): Array<ReadLock> {
  let arr = Array<ReadLock>();
  for (let i = 0; i < count; i++) {
    let rw = new RWLock();
    arr.push(rw.readLock());
  }
  return arr;
}

function createWriteLockArray(count: int): Array<WriteLock> {
  let arr = Array<WriteLock>();
  for (let i = 0; i < count; i++) {
    let rw = new RWLock();
    arr.push(rw.writeLock());
  }
  return arr;
}

export default function SyncPrimitivesPerfTest(): void {
  describe('SyncPrimitivesPerfTest', () => {
    beforeEach(() => {
      let ret = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret);
      let ret1 = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret1);
    });

    afterAll(() => {
      performance.save('apiPerformance.txt');
    });

    it('PerformanceTest_Mutex_constructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let result: Mutex = new Mutex();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = new Mutex();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        recordPerformance('PerformanceTest_Mutex_constructor_0100', 'Mutex', 'constructor',
          'constructor()', Dtime);
      });

    it('PerformanceTest_Mutex_lockGuard_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Mutex = createMutex();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          value.lockGuard(emptyCallback);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = value;
        recordPerformance('PerformanceTest_Mutex_lockGuard_0100', 'Mutex', 'lockGuard',
          'lockGuard(callback: () => void): void', Dtime);
      });

    it('PerformanceTest_Mutex_lock_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let values: Array<Mutex> = createMutexArray(BASE_COUNT);

        // 预热
        values[0].lock();
        values[0].unlock();

        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          values[i].lock();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = values[BASE_COUNT - 1];
        recordPerformance('PerformanceTest_Mutex_lock_0100', 'Mutex', 'lock',
          'lock(): void', Dtime);

        // 清理，避免锁泄露
        for (let i = 0; i < BASE_COUNT; i++) {
          values[i].unlock();
        }
      });

    it('PerformanceTest_Mutex_unlock_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let values: Array<Mutex> = createMutexArray(BASE_COUNT);

        // 预置：先全部加锁
        for (let i = 0; i < BASE_COUNT; i++) {
          values[i].lock();
        }

        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          values[i].unlock();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = values[BASE_COUNT - 1];
        recordPerformance('PerformanceTest_Mutex_unlock_0100', 'Mutex', 'unlock',
          'unlock(): void', Dtime);
      });

    it('PerformanceTest_RWLock_constructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let result: RWLock = new RWLock();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = new RWLock();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        recordPerformance('PerformanceTest_RWLock_constructor_0100', 'RWLock', 'constructor',
          'constructor()', Dtime);
      });

    it('PerformanceTest_RWLock_readLock_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: RWLock = createRWLock();
        let result: ReadLock = value.readLock();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.readLock();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        recordPerformance('PerformanceTest_RWLock_readLock_0100', 'RWLock', 'readLock',
          'readLock(): ReadLock', Dtime);
      });

    it('PerformanceTest_RWLock_writeLock_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: RWLock = createRWLock();
        let result: WriteLock = value.writeLock();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.writeLock();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        recordPerformance('PerformanceTest_RWLock_writeLock_0100', 'RWLock', 'writeLock',
          'writeLock(): WriteLock', Dtime);
      });

    it('PerformanceTest_ReadLock_constructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let rw: RWLock = createRWLock();
        let result: ReadLock = new ReadLock(rw);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = new ReadLock(rw);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        recordPerformance('PerformanceTest_ReadLock_constructor_0100', 'ReadLock', 'constructor',
          'constructor(lock: RWLock)', Dtime);
      });

    it('PerformanceTest_ReadLock_lock_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let values: Array<ReadLock> = createReadLockArray(BASE_COUNT);

        // 预热
        values[0].lock();
        values[0].unlock();

        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          values[i].lock();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = values[BASE_COUNT - 1];
        recordPerformance('PerformanceTest_ReadLock_lock_0100', 'ReadLock', 'lock',
          'lock(): void', Dtime);

        // 清理
        for (let i = 0; i < BASE_COUNT; i++) {
          values[i].unlock();
        }
      });

    it('PerformanceTest_ReadLock_unlock_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let values: Array<ReadLock> = createReadLockArray(BASE_COUNT);

        // 预置：先全部加锁
        for (let i = 0; i < BASE_COUNT; i++) {
          values[i].lock();
        }

        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          values[i].unlock();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = values[BASE_COUNT - 1];
        recordPerformance('PerformanceTest_ReadLock_unlock_0100', 'ReadLock', 'unlock',
          'unlock(): void', Dtime);
      });

    it('PerformanceTest_WriteLock_constructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let rw: RWLock = createRWLock();
        let result: WriteLock = new WriteLock(rw);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = new WriteLock(rw);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        recordPerformance('PerformanceTest_WriteLock_constructor_0100', 'WriteLock', 'constructor',
          'constructor(lock: RWLock)', Dtime);
      });

    it('PerformanceTest_WriteLock_lock_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let values: Array<WriteLock> = createWriteLockArray(BASE_COUNT);

        // 预热
        values[0].lock();
        values[0].unlock();

        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          values[i].lock();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = values[BASE_COUNT - 1];
        recordPerformance('PerformanceTest_WriteLock_lock_0100', 'WriteLock', 'lock',
          'lock(): void', Dtime);

        // 清理
        for (let i = 0; i < BASE_COUNT; i++) {
          values[i].unlock();
        }
      });

    it('PerformanceTest_WriteLock_unlock_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let values: Array<WriteLock> = createWriteLockArray(BASE_COUNT);

        // 预置：先全部加锁
        for (let i = 0; i < BASE_COUNT; i++) {
          values[i].lock();
        }

        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          values[i].unlock();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = values[BASE_COUNT - 1];
        recordPerformance('PerformanceTest_WriteLock_unlock_0100', 'WriteLock', 'unlock',
          'unlock(): void', Dtime);
      });
  });
}
