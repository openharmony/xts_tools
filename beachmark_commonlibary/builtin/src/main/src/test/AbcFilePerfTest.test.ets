/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
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

export default function AbcFilePerfTest() {
  describe('AbcFilePerfTest', () => {
    // 毫秒 * 1000 = 微秒 毫秒 * 1000000 = 纳秒
    // AbcFile.loadAbcFile --AbcFile.loadFromMemory --AbcFile.loadClass --AbcFile.getFilename
    const BASE_COUNT_MEDIUM = 1000;
    const UNIT_TIME = 1000000;

    beforeEach(() => {
      let ret = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret);
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_AbcFile_loadAbcFile_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: AbcFile | null = null;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT_MEDIUM; i++) {
        try {
          res = AbcFile.loadAbcFile(getNearestNonBootRuntimeLinker()!, '/data/test.abc');
        } catch (e) {
        }
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT_MEDIUM;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AbcFile_loadAbcFile_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AbcFile', 'loadAbcFile',
        'static loadAbcFile(runtimeLinker: RuntimeLinker, path: string): AbcFile', arkTsAveragedTime);
    })

    it('PerformanceTest_AbcFile_loadFromMemory_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let rawData: FixedArray<byte> = [0x41, 0x42, 0x43];
      let res: AbcFile | null = null;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT_MEDIUM; i++) {
        try {
          res = AbcFile.loadFromMemory(getNearestNonBootRuntimeLinker()!, rawData);
        } catch (e) {
        }
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT_MEDIUM;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AbcFile_loadFromMemory_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AbcFile', 'loadFromMemory',
        'static loadFromMemory(runtimeLinker: RuntimeLinker, rawFile: FixedArray<byte>): AbcFile', arkTsAveragedTime);
    })

    it('PerformanceTest_AbcFile_loadClass_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fileInstance: AbcFile | null = null;
      try {
        fileInstance = AbcFile.loadAbcFile(getNearestNonBootRuntimeLinker()!, '/data/test.abc');
      } catch (e) {
      }
      let res: Class | undefined;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT_MEDIUM; i++) {
        try {
          res = fileInstance!.loadClass(getNearestNonBootRuntimeLinker()!, 'TestClass', true);
        } catch (e) {
        }
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT_MEDIUM;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AbcFile_loadClass_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AbcFile', 'loadClass',
        'loadClass(runtimeLinker: RuntimeLinker, clsName: string, init: boolean): Class | undefined', arkTsAveragedTime);
    })

    it('PerformanceTest_AbcFile_getFilename_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fileInstance: AbcFile | null = null;
      try {
        fileInstance = AbcFile.loadAbcFile(getNearestNonBootRuntimeLinker()!, '/data/test.abc');
      } catch (e) {
      }
      let res: string = '';
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT_MEDIUM; i++) {
        try {
          res = fileInstance!.getFilename();
        } catch (e) {
        }
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT_MEDIUM;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AbcFile_getFilename_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AbcFile', 'getFilename',
        'getFilename(): string', arkTsAveragedTime);
    })

  })
}
