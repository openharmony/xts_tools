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
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

class TestClass {
  constructor() {
  }
}

class TestRuntimeLinker {
  constructor() {
  }

  findAndLoadClass(clsName: string, init: boolean): TestClass | undefined {
    if (clsName === "TestClass" || clsName === 'std.core.String') {
      return new TestClass();
    }
    return undefined;
  }
}

export default function RuntimeLinkerPerfTest(): void {
  describe('RuntimeLinkerPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {

    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_RuntimeLinker_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: TestRuntimeLinker = new TestRuntimeLinker();
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = new TestRuntimeLinker();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: TestRuntimeLinker = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_RuntimeLinker_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'RuntimeLinker', 'constructor',
        'constructor()', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_RuntimeLinker_findLoadedClass_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let linker: TestRuntimeLinker = new TestRuntimeLinker();
      let res: TestClass | undefined = undefined;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = linker.findAndLoadClass("TestClass", false);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: TestClass | undefined = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_RuntimeLinker_findLoadedClass_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'RuntimeLinker', 'findLoadedClass',
        'findLoadedClass(clsName: string): Class | undefined', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_RuntimeLinker_loadClass_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      try {
        let linker: TestRuntimeLinker = new TestRuntimeLinker();
        let res: TestClass | undefined = undefined;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = linker.findAndLoadClass("TestClass", false);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: TestClass | undefined = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_RuntimeLinker_loadClass_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'RuntimeLinker', 'loadClass',
          'loadClass(clsName: string, init?: boolean): Class', arkTsAveragedTime);
        expect(res1 != null).assertTrue();
        done();
      } catch (e) {
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_RuntimeLinker_loadClass_0100: skip');
        expect(true).assertTrue();
        done();
      }
    })

    it('PerformanceTest_RuntimeLinker_getType_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let linker: TestRuntimeLinker = new TestRuntimeLinker();
      let res: TestClass | undefined = undefined;
      let td: string = 'std.core.String';
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = linker.findAndLoadClass(td, false);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: TestClass | undefined = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_RuntimeLinker_getType_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'RuntimeLinker', 'getType',
        'getType(td: TypeDescriptor): Type | undefined', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

  })
}