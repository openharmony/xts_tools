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

export default function ConsolePerfTest() {
  describe('ConsolePerfTest', () => {
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

    // ========== Console.getInstance 测试 ==========
    it('PerformanceTest_Console_getInstance_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Console.getInstance();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_getInstance_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'getInstance',
        'public static getInstance(): Console', arkTsAveragedTime);
    })

    // ========== Console.print 测试 ==========
    it('PerformanceTest_Console_print_boolean_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.print(true);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_print_boolean_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'print',
        'public print(i: boolean): void', arkTsAveragedTime);
    })

    it('PerformanceTest_Console_print_int_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.print(123);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_print_int_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'print',
        'public print(i: int): void', arkTsAveragedTime);
    })

    it('PerformanceTest_Console_print_string_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.print('test');
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_print_string_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'print',
        'public print(i: String): void', arkTsAveragedTime);
    })

    // ========== Console.println 测试 ==========
    it('PerformanceTest_Console_println_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.println('test');
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_println_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'println',
        'public println(i: String): void', arkTsAveragedTime);
    })

    it('PerformanceTest_Console_println_int_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.println(123);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_println_int_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'println',
        'public println(i: int): void', arkTsAveragedTime);
    })

    // ========== Console.log 测试 ==========
    it('PerformanceTest_Console_log_string_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.log('test');
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_log_string_0700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'log',
        'public log(i: String): void', arkTsAveragedTime);
    })

    it('PerformanceTest_Console_log_int_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.log(123);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_log_int_0800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'log',
        'public log(i: int): void', arkTsAveragedTime);
    })

    // ========== Console.debug/info/warn/error 测试 ==========
    it('PerformanceTest_Console_debug_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.debug('debug message');
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_debug_0900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'debug',
        'public debug(...vals: Any[]): void', arkTsAveragedTime);
    })

    it('PerformanceTest_Console_info_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.info('info message');
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_info_1000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
        'public info(...vals: Any[]): void', arkTsAveragedTime);
    })

    it('PerformanceTest_Console_warn_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.warn('warn message');
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_warn_1100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'warn',
        'public warn(...vals: Any[]): void', arkTsAveragedTime);
    })

    it('PerformanceTest_Console_error_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.error('error message');
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_error_1200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'error',
        'public error(...vals: Any[]): void', arkTsAveragedTime);
    })

    // ========== Console.assert 测试 ==========
    it('PerformanceTest_Console_assert_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.assert(true);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_assert_1300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'assert',
        'public assert(...vals: Any[]): void', arkTsAveragedTime);
    })

    // ========== Console.count/countReset 测试 ==========
    it('PerformanceTest_Console_count_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.count('test');
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_count_1400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'count',
        'public count(label?: string): void', arkTsAveragedTime);
    })

    it('PerformanceTest_Console_countReset_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.countReset('test');
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_countReset_1500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'countReset',
        'public countReset(label?: string): void', arkTsAveragedTime);
    })

    // ========== Console.time/timeLog/timeEnd 测试 ==========
    it('PerformanceTest_Console_time_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.time('timer');
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_time_1600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'time',
        'public time(label?: string): void', arkTsAveragedTime);
    })

    it('PerformanceTest_Console_timeEnd_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      con.time('timer');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.timeEnd('timer');
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_timeEnd_1700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'timeEnd',
        'public timeEnd(label?: string): void', arkTsAveragedTime);
    })

    // ========== Console.group/groupEnd 测试 ==========
    it('PerformanceTest_Console_group_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.group('group');
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_group_1800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'group',
        'public group(...objs: Any[]): void', arkTsAveragedTime);
    })

    it('PerformanceTest_Console_groupEnd_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      con.group('group');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.groupEnd();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_groupEnd_1900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'groupEnd',
        'public groupEnd(): void', arkTsAveragedTime);
    })

    // ========== Console.trace 测试 ==========
    it('PerformanceTest_Console_trace_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let con: Console = Console.getInstance();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        con.trace('trace message');
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_trace_2000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'trace',
        'public trace(...data: Any[]): void', arkTsAveragedTime);
    })

  })
}
