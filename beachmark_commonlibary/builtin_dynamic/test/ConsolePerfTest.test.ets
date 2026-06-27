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

﻿
import {
  describe,
  it,
  TestType,
  Size,
  Level,
  beforeEach,
  afterAll,
  expect
} from '@ohos/hypium';
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function ConsolePerfTest(): void {
  describe('ConsolePerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_Console_print_boolean_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('true');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_print_boolean_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_print_int_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('123');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_print_int_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_print_string_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('test');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_print_string_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_println_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('test');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_println_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_println_int_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('123');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_println_int_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_log_string_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.log('test');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_log_string_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'log',
          'public log(i: String): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_log_int_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.log('123');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_log_int_0800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'log',
          'public log(i: String): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_debug_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.debug('debug message');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_debug_0900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'debug',
          'public debug(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_info_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('info message');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_info_1000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_warn_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.warn('warn message');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_warn_1100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'warn',
          'public warn(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_error_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.error('error message');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_error_1200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'error',
          'public error(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_assert_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.assert('true', 'assert');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_assert_1300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'assert',
          'public assert(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_count_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.count('test');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        res = console.countReset('test');
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_count_1400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'count',
          'public count(label?: string): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_countReset_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.count('test' + i);
        }
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.countReset('test' + i);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_countReset_1500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'countReset',
          'public countReset(label?: string): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_time_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.time('timer');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        res = console.timeEnd('timer');
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_time_1600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'time',
          'public time(label?: string): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_timeEnd_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.time('timer' + i);
        }
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.timeEnd('timer' + i);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_timeEnd_1700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'timeEnd',
          'public timeEnd(label?: string): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_group_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.group('group');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.groupEnd();
        }
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_group_1800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'group',
          'public group(...objs: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_trace_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.trace('trace message');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_trace_1900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'trace',
          'public trace(...data: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_print_long_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('123456789');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_print_long_2000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_print_float_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('3.14');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_print_float_2100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_print_double_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('2.71828');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_print_double_2200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_println_void_2300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_println_void_2300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_println_boolean_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('true');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_println_boolean_2400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_println_long_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('123456789');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_println_long_2500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_println_double_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('3.14159');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_println_double_2600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_log_void_2700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.log('');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_log_void_2700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'log',
          'public log(i: String): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_log_boolean_2800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.log('true');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_log_boolean_2800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'log',
          'public log(i: String): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_log_long_2900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.log('123456789');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_log_long_2900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'log',
          'public log(i: String): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_log_variadic_3000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.log('msg', '123', 'true');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_log_variadic_3000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'log',
          'public log(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_dir_3100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.dir('test');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_dir_3100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'dir',
          'public dir(obj?: Any): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_dirxml_3200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.dirxml('xml data');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_dirxml_3200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'dirxml',
          'public dirxml(...obj: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_groupEnd_3300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.group('groupEnd');
        }
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.groupEnd();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_groupEnd_3300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'groupEnd',
          'public groupEnd(): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_groupCollapsed_3400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.groupCollapsed('collapsed group');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.groupEnd();
        }
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_groupCollapsed_3400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'groupCollapsed',
          'public groupCollapsed(...objs: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_table_3500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let data: Array<string> = ['Alice', 'Bob'];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.table(data);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_table_3500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'table',
          'public table(...data: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_timeLog_3600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        res = console.time('testTimer');
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.timeLog('testTimer');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        res = console.timeEnd('testTimer');
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_timeLog_3600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'timeLog',
          'public timeLog(label?: string, ...arguments: Object[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_print_byte_3700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('127');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_print_byte_3700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_println_byte_3800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('100');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_println_byte_3800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_log_byte_3900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.log('65');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_log_byte_3900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'log',
          'public log(i: String): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_print_short_4000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('32767');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_print_short_4000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_println_short_4100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('12345');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_println_short_4100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_log_short_4200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.log('9999');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_log_short_4200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'log',
          'public log(i: String): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_print_char_4300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('A');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_print_char_4300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_println_char_4400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.info('Z');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_println_char_4400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'info',
          'public info(...vals: Any[]): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

    it('PerformanceTest_Console_log_char_4500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: void = undefined;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = console.log('M');
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1: void = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Console_log_char_4500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Console', 'log',
          'public log(i: String): void', arkTsAveragedTime);
        expect(res1 === undefined).assertTrue();
        done();
      })

  })
}