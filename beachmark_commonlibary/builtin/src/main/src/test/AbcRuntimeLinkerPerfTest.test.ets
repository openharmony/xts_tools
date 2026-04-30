/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
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
} from "../../../hypium/index";
import performance from './Performance.util';
import { uri, util, url, xml, buffer, transfer } from '@kit.ArkTS';


export default function AbcRuntimeLinkerPerfTest() {
  describe('AbcRuntimeLinkerPerfTest', () => {
    // 毫秒 * 1000 = 微秒 毫秒 * 1000000 = 纳秒
    // AbcRuntimeLinker.constructor --AbcRuntimeLinker.addAbcFiles
    const BASE_COUNT_SMALL = 200;
    const BASE_COUNT_MEDIUM = 1000;
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

    it('PerformanceTest_AbcRuntimeLinker_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res =new AbcRuntimeLinker(undefined, ['/data/test.abc']);

        let Stime = new Date().getTime();
      
        for (let i = 0; i < BASE_COUNT_SMALL; i++) {
          res = new AbcRuntimeLinker(undefined, ['/data/test.abc']);
        }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT_SMALL;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AbcRuntimeLinker_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AbcRuntimeLinker', 'constructor',
        'constructor(parentLinker: RuntimeLinker | undefined, paths: string[])', arkTsAveragedTime);
    })

    it('PerformanceTest_AbcRuntimeLinker_constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res= new AbcRuntimeLinker(undefined, ['/data/test.abc'], []);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT_SMALL; i++) {
          res = new AbcRuntimeLinker(undefined, ['/data/test.abc'], []);
        }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT_SMALL;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AbcRuntimeLinker_constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AbcRuntimeLinker', 'constructor','constructor(parentLinker: RuntimeLinker | undefined, paths: string[], sharedLibraryLoaders: AbcRuntimeLinker[])', arkTsAveragedTime);
    })

    it('PerformanceTest_AbcRuntimeLinker_addAbcFiles_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let linker =new AbcRuntimeLinker(undefined, []);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT_MEDIUM; i++) {
          linker.addAbcFiles(['/data/test.abc']);
        }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT_MEDIUM;
      let res1 = linker;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_AbcRuntimeLinker_addAbcFiles_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AbcRuntimeLinker', 'addAbcFiles',
        'addAbcFiles(paths: string[]): void', arkTsAveragedTime);
    })
  })
}
