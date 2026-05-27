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

/*
 * NOTE: CompletableJob type does not exist in doc/stdlib.
 * All test cases using CompletableJob are commented out.
 * Uncomment when std.core or related module is available.
 */

/*
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

export default function CompletableJobPerfTest(): void {
  describe('CompletableJobPerfTest', () => {
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

    // CompletableJob 构造函数
    it('PerformanceTest_CompletableJob_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let job: CompletableJob<string> = new CompletableJob<string>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        job = new CompletableJob<string>();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = job;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_CompletableJob_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'CompletableJob',
        'constructor',
        'constructor()',
        arkTsAveragedTime
      );
    })

    // CompletableJob.Await() - 继承自 Job
    it('PerformanceTest_CompletableJob_Await_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      // 创建多个已完成状态的 job
      let jobs: CompletableJob<string>[] = new Array<CompletableJob<string>>(BASE_COUNT);
      for (let i = 0; i < BASE_COUNT; i++) {
        let job = new CompletableJob<string>();
        job.finish("completed result"); // 先完成 job
        jobs[i] = job;
      }

      let res: string = "";
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = jobs[i].Await();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;

      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_CompletableJob_Await_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'CompletableJob',
        'Await',
        'Await(): T',
        arkTsAveragedTime
      );
    })

    // CompletableJob.finish() - 无参数版本
    it('PerformanceTest_CompletableJob_Finish_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let jobs: CompletableJob<undefined>[] = new Array<CompletableJob<undefined>>(BASE_COUNT);
      for (let i = 0; i < BASE_COUNT; i++) {
        jobs[i] = new CompletableJob<undefined>();
      }
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        jobs[i].finish();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = jobs[0];
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_CompletableJob_Finish_0100: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'CompletableJob',
        'finish',
        'function finish(): void',
        arkTsAveragedTime
      );
    })

    // CompletableJob.finish<T>(value: T) - 带参数版本
    it('PerformanceTest_CompletableJob_Finish_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      const finishValue: string = "test_finish_value";
      let jobs: CompletableJob<string>[] = new Array<CompletableJob<string>>(BASE_COUNT);
      for (let i = 0; i < BASE_COUNT; i++) {
        jobs[i] = new CompletableJob<string>();
      }
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        jobs[i].finish(finishValue);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = jobs[0];
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_CompletableJob_Finish_0200: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'CompletableJob',
        'finish',
        'function finish<T>(value: T): void',
        arkTsAveragedTime
      );
    })

    // CompletableJob.fail() - 无参数版本
    it('PerformanceTest_CompletableJob_Fail_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let jobs: CompletableJob<undefined>[] = [];
      for (let i = 0; i < BASE_COUNT; i++) {
        jobs.push(new CompletableJob<undefined>());
      }
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        jobs[i].fail();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = jobs[0];
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_CompletableJob_Fail_0100: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'CompletableJob',
        'fail',
        'function fail(): void',
        arkTsAveragedTime
      );
    })

    // CompletableJob.fail(error: Error) - 带参数版本
    it('PerformanceTest_CompletableJob_Fail_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      const failError: Error = new Error("Test fail error");
      let jobs: CompletableJob<undefined>[] = [];
      for (let i = 0; i < BASE_COUNT; i++) {
        jobs.push(new CompletableJob<undefined>());
      }
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        jobs[i].fail(failError); // 有参fail
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = jobs[0];
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_CompletableJob_Fail_0200: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt(
        'std.core',
        'CompletableJob',
        'fail',
        'function fail(error: Error): void',
        arkTsAveragedTime
      );
    })

  })
}
*/