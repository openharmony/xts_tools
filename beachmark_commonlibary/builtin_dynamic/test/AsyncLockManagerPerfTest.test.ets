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
import { ArkTSUtils } from '@kit.ArkTS';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function AsyncLockManagerPerfTest(): void {
  describe('AsyncLockManagerPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {

    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_AsyncLockOptions_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result: ArkTSUtils.locks.AsyncLockOptions<string> = new ArkTSUtils.locks.AsyncLockOptions<string>()
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = new ArkTSUtils.locks.AsyncLockOptions<string>()
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: ArkTSUtils.locks.AsyncLockOptions<string> = result
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockOptions_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockOptions', 'constructor',
        'constructor()', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_AsyncLockOptions_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let createOptions = (): ArkTSUtils.locks.AsyncLockOptions<string> => {
        let options = new ArkTSUtils.locks.AsyncLockOptions<string>();
        options.isAvailable = true;
        options.signal = null;
        options.timeout = 1;
        return options;
      };
      let result: ArkTSUtils.locks.AsyncLockOptions<string> = createOptions();
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = createOptions();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: ArkTSUtils.locks.AsyncLockOptions<string> = result
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockOptions_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockOptions', 'constructor',
        'constructor(delay?: boolean, timeout?: number, priority?: int)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_AsyncLockInfo_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let createInfo = (): ArkTSUtils.locks.AsyncLockInfo => ({
        name: "",
        mode: ArkTSUtils.locks.AsyncLockMode.EXCLUSIVE,
        contextId: 0
      });
      let result: ArkTSUtils.locks.AsyncLockInfo = createInfo();
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = createInfo();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: ArkTSUtils.locks.AsyncLockInfo = result
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockInfo_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockInfo', 'constructor',
        'constructor()', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_AsyncLockInfo_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let createInfo = (): ArkTSUtils.locks.AsyncLockInfo => ({
        name: "a",
        mode: ArkTSUtils.locks.AsyncLockMode.EXCLUSIVE,
        contextId: 1
      });
      let result: ArkTSUtils.locks.AsyncLockInfo = createInfo();
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = createInfo();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: ArkTSUtils.locks.AsyncLockInfo = result
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockInfo_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockInfo', 'constructor',
        'constructor(id: string, mode: AsyncLockMode, priority: int)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_AsyncLockState_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      const lockName: string = 'PerfTest_AsyncLockState_0100';
      let lock: ArkTSUtils.locks.AsyncLock = ArkTSUtils.locks.AsyncLock.request(lockName);
      let states: ArkTSUtils.locks.AsyncLockState[] = ArkTSUtils.locks.AsyncLock.queryAll();
      expect(states.length > 0).assertTrue();
      let queryFirstState = (): ArkTSUtils.locks.AsyncLockState => ArkTSUtils.locks.AsyncLock.queryAll()[0];
      let result: ArkTSUtils.locks.AsyncLockState = states[0];
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = queryFirstState();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: ArkTSUtils.locks.AsyncLockState = result
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockState_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockState', 'constructor',
        'constructor()', arkTsAveragedTime);
      expect(lock != null).assertTrue();
      expect(states.length > 0).assertTrue();
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_AsyncLockState_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      const lockName: string = 'PerfTest_AsyncLockState_0200';
      let lock: ArkTSUtils.locks.AsyncLock = ArkTSUtils.locks.AsyncLock.request(lockName);
      let states: ArkTSUtils.locks.AsyncLockState[] = ArkTSUtils.locks.AsyncLock.queryAll();
      expect(states.length > 0).assertTrue();
      let queryFirstState = (): ArkTSUtils.locks.AsyncLockState => ArkTSUtils.locks.AsyncLock.queryAll()[0];
      let result: ArkTSUtils.locks.AsyncLockState = states[0];
      let heldArr: ArkTSUtils.locks.AsyncLockInfo[] = result.held;
      let pendingArr: ArkTSUtils.locks.AsyncLockInfo[] = result.pending;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = queryFirstState();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: ArkTSUtils.locks.AsyncLockState = result
      heldArr = result.held;
      pendingArr = result.pending;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockState_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockState', 'constructor',
        'constructor(heldSet: Set<AsyncLockInfo>, pending: Set<AsyncLockInfo>)', arkTsAveragedTime);
      expect(lock != null).assertTrue();
      expect(states.length > 0).assertTrue();
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_AsyncLockState_Property_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      const lockName: string = 'PerfTest_AsyncLockState_Property_0100';
      let lock: ArkTSUtils.locks.AsyncLock = ArkTSUtils.locks.AsyncLock.request(lockName);
      let states: ArkTSUtils.locks.AsyncLockState[] = ArkTSUtils.locks.AsyncLock.queryAll();
      expect(states.length > 0).assertTrue();
      let state: ArkTSUtils.locks.AsyncLockState = states[0];
      let res: ArkTSUtils.locks.AsyncLockInfo[] = state.held;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = state.held;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: ArkTSUtils.locks.AsyncLockInfo[] = res
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockState_Property_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockState', 'held',
        'held: AsyncLockInfo[]', arkTsAveragedTime);
      expect(lock != null).assertTrue();
      expect(states.length > 0).assertTrue();
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_AsyncLockState_Property_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      const lockName: string = 'PerfTest_AsyncLockState_Property_0200';
      let lock: ArkTSUtils.locks.AsyncLock = ArkTSUtils.locks.AsyncLock.request(lockName);
      let states: ArkTSUtils.locks.AsyncLockState[] = ArkTSUtils.locks.AsyncLock.queryAll();
      expect(states.length > 0).assertTrue();
      let state: ArkTSUtils.locks.AsyncLockState = states[0];
      let res: ArkTSUtils.locks.AsyncLockInfo[] = state.pending;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = state.pending;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: ArkTSUtils.locks.AsyncLockInfo[] = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockState_Property_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockState', 'pending',
        'pending: AsyncLockInfo[]', arkTsAveragedTime);
      expect(lock != null).assertTrue();
      expect(states.length > 0).assertTrue();
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_AsyncLockInfo_Property_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let info: ArkTSUtils.locks.AsyncLockInfo = {
        name: "test",
        mode: ArkTSUtils.locks.AsyncLockMode.EXCLUSIVE,
        contextId: 123
      };
      let mode: ArkTSUtils.locks.AsyncLockMode = info.mode;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        mode = info.mode;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: ArkTSUtils.locks.AsyncLockMode = mode
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockInfo_Property_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockInfo', 'mode',
        'mode: AsyncLockMode', arkTsAveragedTime);
      expect(res1 === ArkTSUtils.locks.AsyncLockMode.EXCLUSIVE).assertTrue();
      done();
    })

    it('PerformanceTest_AsyncLockInfo_Property_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let info: ArkTSUtils.locks.AsyncLockInfo = {
        name: "test",
        mode: ArkTSUtils.locks.AsyncLockMode.EXCLUSIVE,
        contextId: 123
      };
      let contextId: number = info.contextId;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        contextId = info.contextId;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = contextId
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockInfo_Property_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockInfo', 'contextId',
        'contextId: int', arkTsAveragedTime);
      expect(res1 === 123).assertTrue();
      done();
    })

    it('PerformanceTest_AsyncLockOptions_Property_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let options: ArkTSUtils.locks.AsyncLockOptions<string> = new ArkTSUtils.locks.AsyncLockOptions<string>()
      let available: boolean = options.isAvailable;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        available = options.isAvailable;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: boolean = available
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockOptions_Property_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockOptions', 'isAvailable',
        'isAvailable: boolean', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_AsyncLockOptions_Property_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let options: ArkTSUtils.locks.AsyncLockOptions<string> = new ArkTSUtils.locks.AsyncLockOptions<string>()
      let signal: ArkTSUtils.locks.AbortSignal<string> | null = options.signal;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        signal = options.signal;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: ArkTSUtils.locks.AbortSignal<string> | null = signal
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockOptions_Property_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockOptions', 'signal',
        'signal: AbortSignal<T> | null', arkTsAveragedTime);
      expect(res1 === null).assertTrue();
      done();
    })

    it('PerformanceTest_AsyncLockOptions_Property_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let options: ArkTSUtils.locks.AsyncLockOptions<string> = new ArkTSUtils.locks.AsyncLockOptions<string>()
      let timeout: number = options.timeout;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        timeout = options.timeout;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: number = timeout
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncLockOptions_Property_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncLockOptions', 'timeout',
        'timeout: int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })
  })
}