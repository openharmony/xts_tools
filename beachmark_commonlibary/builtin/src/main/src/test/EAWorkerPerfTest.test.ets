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
  beforeAll,
  afterAll,
  beforeEach,
  afterEach
} from "../../../hypium/index";
import performance from './Performance.util';

let str = '';

export default function EAWorkerPerfTest() {
  describe('EAWorkerPerfTest', () => {
    // 毫秒 * 1000 = 微秒 毫秒 * 1000000 = 纳秒
    const BASE_COUNT = 5000;
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

    // ========== 构造函数测试 ==========
    it('PerformanceTest_EAWorker_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: EAWorker = new EAWorker();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new EAWorker();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'constructor',
        'constructor()', arkTsAveragedTime);
    })

    it('PerformanceTest_EAWorker_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: EAWorker = new EAWorker();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new EAWorker("TestWorker");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'constructor',
        'constructor(name: string)', arkTsAveragedTime);
    })

    it('PerformanceTest_EAWorker_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: EAWorker = new EAWorker();
      let task = () => {};
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new EAWorker(task);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'constructor',
        'constructor(task: Task)', arkTsAveragedTime);
    })

    it('PerformanceTest_EAWorker_Constructor_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: EAWorker = new EAWorker();
      let task = () => {};
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new EAWorker("TestWorker", task);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Constructor_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'constructor',
        'constructor(name: string, task: Task)', arkTsAveragedTime);
    })

    it('PerformanceTest_EAWorker_Constructor_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: EAWorker = new EAWorker();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new EAWorker(true);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Constructor_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'constructor',
        'constructor(needInterop: boolean)', arkTsAveragedTime);
    })

    // ========== 实例方法测试 ==========
    it('PerformanceTest_EAWorker_Instance_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let workers = new Array<EAWorker>();
      for (let i = 0;i<1000;i++) {
        let worker = new EAWorker();
        workers.push(worker)
      }
      let Stime = new Date().getTime();
      for (let i = 0; i < 1000; i++) {
        workers[i].start();
        workers[i].quit();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / 1000;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Instance_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'start',
        'start(): void', arkTsAveragedTime);
    })

    it('PerformanceTest_EAWorker_Instance_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let worker = new EAWorker();
      worker.start();
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = worker.isAlive();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      worker.quit();
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Instance_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'isAlive',
        'isAlive(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_EAWorker_Instance_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let worker = new EAWorker();
      worker.start();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        worker.setPriority(WorkerPriority.PRIORITY_HIGH);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      worker.quit();
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Instance_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'setPriority',
        'setPriority(priority: WorkerPriority): void', arkTsAveragedTime);
    })

    it('PerformanceTest_EAWorker_Instance_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let worker = new EAWorker();
      worker.start();
      let res: WorkerPriority = WorkerPriority.PRIORITY_DEFAULT;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = worker.getPriority();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      worker.quit();
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Instance_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'getPriority',
        'getPriority(): WorkerPriority', arkTsAveragedTime);
    })

    it('PerformanceTest_EAWorker_Instance_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let worker = new EAWorker();
      worker.start();
      let res: string = '';
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = worker.getName();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      worker.quit();
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Instance_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'getName',
        'getName(): string', arkTsAveragedTime);
    })

    it('PerformanceTest_EAWorker_Instance_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let worker = new EAWorker();
      worker.start();
      let res: int | undefined = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = worker.getWorkerId();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      worker.quit();
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Instance_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'getWorkerId',
        'getWorkerId(): int | undefined', arkTsAveragedTime);
    })

    it('PerformanceTest_EAWorker_Instance_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let worker = new EAWorker();
      worker.start();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        worker.postTask(() => {});
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      worker.quit();
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Instance_0700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'postTask',
        'postTask(task: Task): void', arkTsAveragedTime);
    })

    it('PerformanceTest_EAWorker_Instance_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let worker = new EAWorker();
      worker.start();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        let job = worker.run<number>(() => { return 42; });
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      worker.quit();
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Instance_0800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'run',
        'run<R>(task: Function, ...args: FixedArray<Any>): Job<R>', arkTsAveragedTime);
    })

    it('PerformanceTest_EAWorker_Instance_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let worker = new EAWorker();
      worker.start();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        worker.setUncaughtExceptionHandler((error: Error) => {});
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      worker.quit();
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Instance_0900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'setUncaughtExceptionHandler',
        'setUncaughtExceptionHandler(handler: (error: Error) => void): void', arkTsAveragedTime);
    })

    it('PerformanceTest_EAWorker_Instance_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let worker = new EAWorker();
      worker.start();
      worker.setUncaughtExceptionHandler((error: Error) => {});
      let res: ((error: Error) => void) | undefined = undefined;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = worker.getUncaughtExceptionHandler();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      worker.quit();
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Instance_1000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'getUncaughtExceptionHandler',
        'getUncaughtExceptionHandler(): ErrorHandlerType | undefined', arkTsAveragedTime);
    })

    it('PerformanceTest_EAWorker_Instance_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let workers = new Array<EAWorker>();
      for (let i = 0;i<1000;i++) {
        let worker = new EAWorker();
        // worker.start();
        workers.push(worker)
      }
      let Stime = new Date().getTime();
      for (let i = 0; i < 1000; i++) {
        workers[i].start();
        workers[i].join();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / 1000;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Instance_1100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'join',
        'join(): Job<void>', arkTsAveragedTime);
    })

    it('PerformanceTest_EAWorker_Instance_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let workers = new Array<EAWorker>();
      for (let i = 0;i<1000;i++) {
        let worker = new EAWorker();
        //worker.start();
        workers.push(worker)
      }

      let Stime = new Date().getTime();
      for (let i = 0; i < 1000; i++) {
        workers[i].start();
        workers[i].quit();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / 1000;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Instance_1200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'quit',
        'quit(): void', arkTsAveragedTime);
    })

    // ========== 静态方法测试 ==========
    it('PerformanceTest_EAWorker_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: EAWorker = EAWorker.main();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = EAWorker.main();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'main',
        'static main(): EAWorker', arkTsAveragedTime);
    })

    it('PerformanceTest_EAWorker_Static_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: EAWorker | undefined = undefined;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = EAWorker.current();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EAWorker_Static_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'EAWorker', 'current',
        'static current(): EAWorker | undefined', arkTsAveragedTime);
    })


  })
}
