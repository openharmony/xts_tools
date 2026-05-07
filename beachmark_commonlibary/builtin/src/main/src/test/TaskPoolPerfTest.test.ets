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

let simpleFunc = (): int => { return 1; };

export default function TaskPoolPerfTest() {
  describe('TaskPoolPerfTest', () => {
    // 毫秒 * 1000 = 微秒 毫秒 * 1000000 = 纳秒
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

    // ==================== Task ====================

    // Task constructor(name, func, ...args)
    it('PerformanceTest_Task_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: taskpool.Task = new taskpool.Task("testTask", simpleFunc);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new taskpool.Task("testTask", simpleFunc);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Task_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'Task', 'constructor',
        'constructor(name: string, func: Function, ...args: FixedArray<Any>)', arkTsAveragedTime);
    })

    // Task constructor(func, ...args)
    it('PerformanceTest_Task_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: taskpool.Task = new taskpool.Task(simpleFunc);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new taskpool.Task(simpleFunc);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Task_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'Task', 'constructor',
        'constructor(func: Function, ...args: FixedArray<Any>)', arkTsAveragedTime);
    })

    // Task.onEnqueued
    it('PerformanceTest_Task_Instance_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let task = new taskpool.Task("testTask", simpleFunc);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        task.onEnqueued(() => {});
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = task ;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Task_Instance_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'Task', 'onEnqueued',
        'onEnqueued(callback: CallbackFunction): void', arkTsAveragedTime);
    })

    // Task.onStartExecution
    it('PerformanceTest_Task_Instance_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let task = new taskpool.Task("testTask", simpleFunc);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        task.onStartExecution(() => {});
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = task;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Task_Instance_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'Task', 'onStartExecution',
        'onStartExecution(callback: CallbackFunction): void', arkTsAveragedTime);
    })

    // Task.onExecutionFailed
    it('PerformanceTest_Task_Instance_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let task = new taskpool.Task("testTask", simpleFunc);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        task.onExecutionFailed((e: Error) => {});
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = task;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Task_Instance_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'Task', 'onExecutionFailed',
        'onExecutionFailed(callback: CallbackFunctionWithError): void', arkTsAveragedTime);
    })

    // Task.onExecutionSucceeded
    it('PerformanceTest_Task_Instance_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let task = new taskpool.Task("testTask", simpleFunc);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        task.onExecutionSucceeded(() => {});
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = task;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Task_Instance_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'Task', 'onExecutionSucceeded',
        'onExecutionSucceeded(callback: CallbackFunction): void', arkTsAveragedTime);
    })

    // Task.onReceiveData
    it('PerformanceTest_Task_Instance_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let task = new taskpool.Task("testTask", simpleFunc);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        task.onReceiveData(() => {});
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = task;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Task_Instance_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'Task', 'onReceiveData',
        'onReceiveData(callback?: Function): void', arkTsAveragedTime);
    })

    // Task.isDone
    it('PerformanceTest_Task_Instance_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let task = new taskpool.Task("testTask", simpleFunc);
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = task.isDone();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Task_Instance_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'Task', 'isDone',
        'isDone(): boolean', arkTsAveragedTime);
    })

    // Task.addDependency + removeDependency
    it('PerformanceTest_Task_Instance_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let task2 = new taskpool.Task("task2", simpleFunc);
      let fixedArray = new Array<taskpool.Task>(BASE_COUNT);
      for (let i = 0; i < BASE_COUNT; i++) {
        fixedArray[i] = new taskpool.Task("taski", simpleFunc);
      }
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        fixedArray[i].addDependency(task2);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = fixedArray[1];
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Task_Instance_0700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'Task', 'addDependency',
        'addDependency(...tasks: Task[]): void', arkTsAveragedTime);
    })

    // ==================== LongTask ====================

    it('PerformanceTest_LongTask_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: taskpool.LongTask = new taskpool.LongTask("longTask", simpleFunc);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new taskpool.LongTask("longTask", simpleFunc);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LongTask_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'LongTask', 'constructor',
        'constructor(name: string, func: Function, ...args: FixedArray<Any>)', arkTsAveragedTime);
    })

    // LongTask constructor(func, ...args)
    it('PerformanceTest_LongTask_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: taskpool.LongTask = new taskpool.LongTask(simpleFunc);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new taskpool.LongTask(simpleFunc);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LongTask_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'LongTask', 'constructor',
        'constructor(func: Function, ...args: FixedArray<Any>)', arkTsAveragedTime);
    })

    // ==================== TaskGroup ====================

    // TaskGroup constructor()
    it('PerformanceTest_TaskGroup_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: taskpool.TaskGroup = new taskpool.TaskGroup();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new taskpool.TaskGroup();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TaskGroup_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'TaskGroup', 'constructor',
        'constructor()', arkTsAveragedTime);
    })

    // TaskGroup constructor(name)
    it('PerformanceTest_TaskGroup_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: taskpool.TaskGroup = new taskpool.TaskGroup("groupTest");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new taskpool.TaskGroup("groupTest");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TaskGroup_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'TaskGroup', 'constructor',
        'constructor(name: string)', arkTsAveragedTime);
    })

    // TaskGroup.addTask(func, ...args)
    it('PerformanceTest_TaskGroup_Instance_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let group = new taskpool.TaskGroup();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        group.addTask(simpleFunc);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = group;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TaskGroup_Instance_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'TaskGroup', 'addTask',
        'addTask(func: Function, ...args: FixedArray<Any>): void', arkTsAveragedTime);
    })

    // TaskGroup.addTask(task)
    it('PerformanceTest_TaskGroup_Instance_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let group = new taskpool.TaskGroup();
      let fixArray = new Array<taskpool.Task>(BASE_COUNT);
      for (let i = 0; i < BASE_COUNT; i++) {
        fixArray[i] = new taskpool.Task("testTask", simpleFunc);
      }
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        group.addTask(fixArray[i]);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = group;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TaskGroup_Instance_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'TaskGroup', 'addTask',
        'addTask(task: Task): void', arkTsAveragedTime);
    })

    // ==================== SequenceRunner ====================

    // SequenceRunner constructor(priority?)
    it('PerformanceTest_SequenceRunner_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: taskpool.SequenceRunner = new taskpool.SequenceRunner();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new taskpool.SequenceRunner();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_SequenceRunner_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'SequenceRunner', 'constructor',
        'constructor(priority?: Priority)', arkTsAveragedTime);
    })

    // SequenceRunner constructor(name, priority?)
    it('PerformanceTest_SequenceRunner_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: taskpool.SequenceRunner = new taskpool.SequenceRunner("seqRunner");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new taskpool.SequenceRunner("seqRunner");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_SequenceRunner_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'SequenceRunner', 'constructor',
        'constructor(name: string, priority?: Priority)', arkTsAveragedTime);
    })

    // ==================== AsyncRunner ====================

    // AsyncRunner constructor(runningCapacity, waitingCapacity?)
    it('PerformanceTest_AsyncRunner_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: taskpool.AsyncRunner = new taskpool.AsyncRunner(4);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new taskpool.AsyncRunner(4);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncRunner_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncRunner', 'constructor',
        'constructor(runningCapacity: int, waitingCapacity?: int)', arkTsAveragedTime);
    })

    // AsyncRunner constructor(name, runningCapacity, waitingCapacity?)
    it('PerformanceTest_AsyncRunner_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: taskpool.AsyncRunner = new taskpool.AsyncRunner("asyncRunner", 4);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new taskpool.AsyncRunner("asyncRunner", 4);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AsyncRunner_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'AsyncRunner', 'constructor',
        'constructor(name: string | undefined, runningCapacity: int, waitingCapacity?: int)', arkTsAveragedTime);
    })

    // ==================== TaskInfo ====================

    // TaskInfo constructor (数据类)
    it('PerformanceTest_TaskInfo_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: taskpool.TaskInfo = new taskpool.TaskInfo();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new taskpool.TaskInfo();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TaskInfo_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'TaskInfo', 'constructor',
        'constructor()', arkTsAveragedTime);
    })

    // ==================== ThreadInfo ====================

    // ThreadInfo constructor (数据类)
    it('PerformanceTest_ThreadInfo_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: taskpool.ThreadInfo = new taskpool.ThreadInfo();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new taskpool.ThreadInfo();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ThreadInfo_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'ThreadInfo', 'constructor',
        'constructor()', arkTsAveragedTime);
    })

    // ==================== TaskPoolInfo ====================

    // TaskPoolInfo constructor (数据类)
    it('PerformanceTest_TaskPoolInfo_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: taskpool.TaskPoolInfo = new taskpool.TaskPoolInfo();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new taskpool.TaskPoolInfo();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TaskPoolInfo_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'TaskPoolInfo', 'constructor',
        'constructor()', arkTsAveragedTime);
    })

    // ==================== Namespace Functions ====================

    // taskpool.getTaskPoolInfo
    it('PerformanceTest_taskpool_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: taskpool.TaskPoolInfo = new taskpool.TaskPoolInfo();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = taskpool.getTaskPoolInfo();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_taskpool_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'taskpool', 'getTaskPoolInfo',
        'getTaskPoolInfo(): TaskPoolInfo', arkTsAveragedTime);
    })
  })
}
