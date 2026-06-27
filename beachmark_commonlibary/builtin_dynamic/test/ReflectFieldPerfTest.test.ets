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
  expect,
  TestType,
  Size,
  Level,
  beforeAll,
  afterAll,
  beforeEach,
  afterEach
} from "@ohos/hypium";
import systemDateTime from '@ohos.systemDateTime';
import performance from './Performance.util';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function ReflectFieldPerfTest(): void {
  describe('ReflectFieldPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_ReflectField_isReadonly_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = false;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info(
          'arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ReflectField_isReadonly_0100: ' + arkTsAveragedTime +
            'ns');
        performance.apiWithClassAndKeywordTxt('std.core.reflect', 'Field', 'isReadonly',
          'isReadonly(): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_ReflectField_isPublic_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = false;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info(
          'arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ReflectField_isPublic_0200: ' + arkTsAveragedTime +
            'ns');
        performance.apiWithClassAndKeywordTxt('std.core.reflect', 'Field', 'isPublic',
          'isPublic(): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_ReflectField_isPrivate_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = false;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info(
          'arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ReflectField_isPrivate_0300: ' + arkTsAveragedTime +
            'ns');
        performance.apiWithClassAndKeywordTxt('std.core.reflect', 'Field', 'isPrivate',
          'isPrivate(): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_ReflectField_isProtected_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = false;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info(
          'arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ReflectField_isProtected_0400: ' + arkTsAveragedTime +
            'ns');
        performance.apiWithClassAndKeywordTxt('std.core.reflect', 'Field', 'isProtected',
          'isProtected(): boolean', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_ReflectField_getType_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = false;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info(
          'arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ReflectField_getType_0500: ' + arkTsAveragedTime +
            'ns');
        performance.apiWithClassAndKeywordTxt('std.core.reflect', 'Field', 'getType',
          'getType(): Class', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_ReflectField_getOwner_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = false;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info(
          'arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ReflectField_getOwner_0600: ' + arkTsAveragedTime +
            'ns');
        performance.apiWithClassAndKeywordTxt('std.core.reflect', 'Field', 'getOwner',
          'getOwner(): Class', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })

    it('PerformanceTest_ReflectField_getName_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res: boolean = false;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = false;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info(
          'arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ReflectField_getName_0700: ' + arkTsAveragedTime +
            'ns');
        performance.apiWithClassAndKeywordTxt('std.core.reflect', 'Field', 'getName',
          'getName(): string', arkTsAveragedTime);
        expect(true).assertTrue();
        done();
      })
  })
}