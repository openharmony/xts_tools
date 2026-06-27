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
  expect,
  TestType,
  Size,
  Level,
  beforeAll,
  afterAll,
  beforeEach,
  afterEach
} from "@ohos/hypium";
import performance from './Performance.util';
import { uri, util, url, xml, buffer } from '@kit.ArkTS';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

class Class {}

class RuntimeLinker {}

class BootRuntimeLinker {
  static instance: BootRuntimeLinker = new BootRuntimeLinker();
  findAndLoadClass(clsName: string, init: boolean): Class | undefined {
    return new Class();
  }
}

function getBootRuntimeLinker(): BootRuntimeLinker {
  return new BootRuntimeLinker();
}

function getNearestNonBootRuntimeLinker(): RuntimeLinker | undefined {
  return new RuntimeLinker();
}

export default function BootRuntimeLinkerPerfTest(): void {
  describe('BootRuntimeLinkerPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {

    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_BootRuntimeLinker_getBootRuntimeLinker_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let res: BootRuntimeLinker = getBootRuntimeLinker();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = getBootRuntimeLinker();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime getBootRuntimeLinker: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BootRuntimeLinker', 'getBootRuntimeLinker',
          'function getBootRuntimeLinker(): BootRuntimeLinker', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BootRuntimeLinker_instance_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let res: BootRuntimeLinker = BootRuntimeLinker.instance;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = BootRuntimeLinker.instance;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime instance: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BootRuntimeLinker', 'instance',
          'static final instance: BootRuntimeLinker', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BootRuntimeLinker_getNearestNonBootRuntimeLinker_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let res: RuntimeLinker | undefined = getNearestNonBootRuntimeLinker();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = getNearestNonBootRuntimeLinker();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime getNearestNonBootRuntimeLinker: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BootRuntimeLinker', 'getNearestNonBootRuntimeLinker',
          'native function getNearestNonBootRuntimeLinker(): RuntimeLinker | undefined', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_BootRuntimeLinker_findAndLoadClass_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
        let bootLinker = getBootRuntimeLinker();
        let res: Class | undefined = bootLinker.findAndLoadClass("std.core.String", true);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = bootLinker.findAndLoadClass("std.core.String", true);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime findAndLoadClass: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'BootRuntimeLinker', 'findAndLoadClass',
          'public native override findAndLoadClass(clsName: string, init: boolean): Class | undefined',
          arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })
  })
}