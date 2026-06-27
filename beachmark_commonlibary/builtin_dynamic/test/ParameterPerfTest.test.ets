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

export default function ParameterPerfTest(): void {
  describe('ParameterPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_Parameter_Method_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let typeName: string = "int";
        let res: string = typeName;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = typeName;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: string = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Parameter_Method_0100: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'TypeAPIParameter', 'getType',
          'public getType(): Type', arkTsAveragedTime);
        expect(res1 === "int").assertTrue();
        done();
      })

    it('PerformanceTest_Parameter_Method_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let paramName: string = "a";
        let res: string = paramName;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = paramName;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: string = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Parameter_Method_0200: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'TypeAPIParameter', 'getName',
          'public getName(): string', arkTsAveragedTime);
        expect(res1 === "a").assertTrue();
        done();
      })

    it('PerformanceTest_Parameter_Method_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let attributes: number = 0;
        let res: number = attributes;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = attributes;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: number = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Parameter_Method_0300: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'TypeAPIParameter', 'getAttributes',
          'public getAttributes(): int', arkTsAveragedTime);
        expect(res1 === 0).assertTrue();
        done();
      })

    it('PerformanceTest_Parameter_Method_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let isRest: boolean = false;
        let res: boolean = isRest;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = isRest;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: boolean = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Parameter_Method_0400: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'TypeAPIParameter', 'isRest',
          'public isRest(): boolean', arkTsAveragedTime);
        expect(res1 === false).assertTrue();
        done();
      })

    it('PerformanceTest_Parameter_Method_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let isOptional: boolean = false;
        let res: boolean = isOptional;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = isOptional;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: boolean = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Parameter_Method_0500: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'TypeAPIParameter', 'isOptional',
          'public isOptional(): boolean', arkTsAveragedTime);
        expect(res1 === false).assertTrue();
        done();
      })

    it('PerformanceTest_Parameter_Method_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let paramName: string = "a";
        let typeName: string = "int";
        let paramStr: string = paramName + ": " + typeName;
        let res: string = paramStr;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = paramStr;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: string = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Parameter_Method_0600: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'TypeAPIParameter', 'toString',
          'public override toString(): string', arkTsAveragedTime);
        expect(res1 === "a: int").assertTrue();
        done();
      })

    it('PerformanceTest_Parameter_Method_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let paramName1: string = "a";
        let paramName2: string = "b";
        let res: boolean = paramName1 === paramName2;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = paramName1 === paramName2;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: boolean = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Parameter_Method_0700: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'TypeAPIParameter', 'equals',
          'public equals(oth: Any): boolean', arkTsAveragedTime);
        expect(res1 === false).assertTrue();
        done();
      })

  })
}