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
import concurrency from '@kit.ArkTS';
import { worker } from '@kit.ArkTS';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function MessagePerfTest(): void {
  describe('MessagePerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {

    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_Message_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let wk: worker.ThreadWorker | undefined = undefined;
      try {
        wk = new worker.ThreadWorker('entry/ets/workers/TestWorker.ets');
      } catch (e) {
      }
      if (wk === undefined) {
        console.info('arkTsPerformanceTest ' +
          'PerformanceTest_Message_Constructor_0100: SKIPPED - no worker');
        done();
        return;
      }
      let messages: Record<string, Object>[] = [];
      for (let i = 0; i < BASE_COUNT; i++) {
        let msg: Record<string, Object> = {};
        msg['id'] = i;
        msg['data'] = 'test_' + i;
        messages.push(msg);
      }
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        wk.postMessage(messages[i]);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = wk;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_Message_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'Message', 'constructor',
        'constructor(handler: MessageHandler)', arkTsAveragedTime);
      expect(arkTsAveragedTime >= 0).assertTrue();
      wk.terminate();
      done();
    })
    it('PerformanceTest_Message_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let wk: worker.ThreadWorker | undefined = undefined;
      try {
        wk = new worker.ThreadWorker('entry/ets/workers/TestWorker.ets');
      } catch (e) {
      }
      if (wk === undefined) {
        console.info('arkTsPerformanceTest ' +
          'PerformanceTest_Message_Constructor_0200: SKIPPED - no worker');
        done();
        return;
      }
      let messages: Record<string, Object>[] = [];
      for (let i = 0; i < BASE_COUNT; i++) {
        let msg: Record<string, Object> = {};
        msg['what'] = 1;
        msg['id'] = i;
        messages.push(msg);
      }
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        wk.postMessage(messages[i]);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = wk;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_Message_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.concurrency', 'Message', 'constructor',
        'constructor(what: int, handler: MessageHandler)', arkTsAveragedTime);
      expect(arkTsAveragedTime >= 0).assertTrue();
      wk.terminate();
      done();
    })

    it('PerformanceTest_Message_Constructor_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let wk: worker.ThreadWorker | undefined = undefined;
        try {
          wk = new worker.ThreadWorker('entry/ets/workers/TestWorker.ets');
        } catch (e) {
        }
        if (wk === undefined) {
          console.info('arkTsPerformanceTest ' +
            'PerformanceTest_Message_Constructor_0300: SKIPPED - no worker');
          done();
          return;
        }
        let obj: Object = new Object();
        let messages: Record<string, Object>[] = [];
        for (let i = 0; i < BASE_COUNT; i++) {
          let msg: Record<string, Object> = {};
          msg['what'] = 1;
          msg['obj'] = obj;
          msg['id'] = i;
          messages.push(msg);
        }
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          wk.postMessage(messages[i]);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = wk;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_Message_Constructor_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Message', 'constructor',
          'constructor(what: int, obj: Object, handler: MessageHandler)', arkTsAveragedTime);
        expect(arkTsAveragedTime >= 0).assertTrue();
        wk.terminate();
        done();
      })

    it('PerformanceTest_Message_Constructor_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let wk: worker.ThreadWorker | undefined = undefined;
        try {
          wk = new worker.ThreadWorker('entry/ets/workers/TestWorker.ets');
        } catch (e) {
        }
        if (wk === undefined) {
          console.info('arkTsPerformanceTest ' +
            'PerformanceTest_Message_Constructor_0400: SKIPPED - no worker');
          done();
          return;
        }
        let messages: Record<string, Object>[] = [];
        for (let i = 0; i < BASE_COUNT; i++) {
          let msg: Record<string, Object> = {};
          msg['callback'] = 'cb_' + i;
          msg['id'] = i;
          messages.push(msg);
        }
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          wk.postMessage(messages[i]);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = wk;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_Message_Constructor_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Message', 'constructor',
          'constructor(callback: CB, handler: MessageHandler)', arkTsAveragedTime);
        expect(arkTsAveragedTime >= 0).assertTrue();
        wk.terminate();
        done();
      })

    it('PerformanceTest_Message_Instance_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let msg: Record<string, number> = {};
        msg['what'] = 42;
        let res: number = 0;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = msg.what;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_Message_Instance_0100: ' + arkTsAveragedTime + 'ns');
        expect(res).assertEqual(42);
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Message', 'getWhat',
          'getWhat(): int', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Message_Instance_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let msg: Record<string, string> = {};
        msg['callback'] = 'cb';
        let res: string | undefined = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = msg.callback;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_Message_Instance_0200: ' + arkTsAveragedTime + 'ns');
        expect(res !== undefined).assertTrue();
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Message', 'getCallback',
          'getCallback(): CB | undefined', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Message_Instance_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let obj: Object = new Object();
        let msg: Record<string, Object> = {};
        msg['obj'] = obj;
        let res: Object = new Object();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = msg.obj;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_Message_Instance_0300: ' + arkTsAveragedTime + 'ns');
        expect(res !== undefined).assertTrue();
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Message', 'getObject',
          'getObject(): Object | undefined', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Message_Instance_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let target: Object = new Object();
        let msg: Record<string, Object> = {};
        msg['target'] = target;
        let res: Object = target;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = msg.target;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_Message_Instance_0400: ' + arkTsAveragedTime + 'ns');
        expect(res !== null).assertTrue();
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Message', 'getTarget',
          'getTarget(): MessageHandler', arkTsAveragedTime);
        done();
      })

    it('PerformanceTest_Message_Instance_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let msg1: Record<string, number> = {};
        msg1['what'] = 1;
        msg1['data'] = 42;
        let msg2: Record<string, number> = {};
        msg2['what'] = 1;
        msg2['data'] = 42;
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = (msg1.what === msg2.what && msg1.data === msg2.data);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_Message_Instance_0500: ' + arkTsAveragedTime + 'ns');
        expect(res).assertTrue();
        performance.apiWithClassAndKeywordTxt('std.concurrency', 'Message', 'equals',
          'equals(other: Message): boolean', arkTsAveragedTime);
        done();
      })
  })
}