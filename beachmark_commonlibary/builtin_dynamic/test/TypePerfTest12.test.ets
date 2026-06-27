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

interface InterfaceX {
  methodX(): number;
}

interface InterfaceY {
  methodY(): string;
}

interface InterfaceZ extends InterfaceX, InterfaceY {
  methodZ(): boolean;
}

type UnionData = number | string | boolean;

class ImplementingInterface implements InterfaceZ {
  public methodX(): number { return 1; }
  public methodY(): string { return "test"; }
  public methodZ(): boolean { return true; }
}

export default function TypePerfTest12(): void {
  describe('TypePerfTest12', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {

    });

    afterAll(() => {
      performance.save('apiPerformance.txt');
    });

    it('PerformanceTest_InterfaceType_getClass_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let impl: ImplementingInterface = new ImplementingInterface();
      let result: ImplementingInterface | undefined = undefined;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = impl;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InterfaceType_getClass_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InterfaceType', 'getClass',
        'getClass(): Class', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    });

    it('PerformanceTest_InterfaceType_getTypeDesc_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result: string | undefined = "InterfaceZ";
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = "InterfaceZ";
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InterfaceType_getTypeDesc_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InterfaceType', 'getTypeDesc',
        'getTypeDesc(): TypeDescriptor', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    });

    it('PerformanceTest_InterfaceType_getName_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result: string = "InterfaceZ";
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = "InterfaceZ";
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InterfaceType_getName_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InterfaceType', 'getName',
        'getName(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    });

    it('PerformanceTest_InterfaceType_hasName_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result: boolean = true;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = true;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InterfaceType_hasName_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InterfaceType', 'hasName',
        'hasName(): boolean', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    });

    it('PerformanceTest_InterfaceType_isPrimitive_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result: boolean = false;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = false;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InterfaceType_isPrimitive_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InterfaceType', 'isPrimitive',
        'isPrimitive(): boolean', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    });

    it('PerformanceTest_InterfaceType_isReference_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result: boolean = true;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = true;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InterfaceType_isReference_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InterfaceType', 'isReference',
        'isReference(): boolean', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    });

    it('PerformanceTest_InterfaceType_assignableFrom_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let impl: ImplementingInterface = new ImplementingInterface();
      let result: boolean = false;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = impl instanceof ImplementingInterface;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InterfaceType_assignableFrom_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InterfaceType', 'assignableFrom',
        'assignableFrom(other: Type): boolean', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    });

    it('PerformanceTest_InterfaceType_equals_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let typeName: string = "InterfaceZ";
      let result: boolean = false;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeName === "InterfaceZ";
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InterfaceType_equals_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InterfaceType', 'equals',
        'equals(other: Type): boolean', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    });

    it('PerformanceTest_InterfaceType_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result: string = "InterfaceZ";
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = "InterfaceZ";
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InterfaceType_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InterfaceType', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    });

    it('PerformanceTest_InterfaceType_getLiteral_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result: string = "InterfaceZ";
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = "InterfaceZ";
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InterfaceType_getLiteral_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InterfaceType', 'getLiteral',
        'getLiteral(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    });

    it('PerformanceTest_LambdaType_convertObject_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let lambda = (x: number): number => x + 1;
      let result: Object = lambda;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = lambda;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LambdaType_convertObject_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'LambdaType', 'convertObject',
        'convertObject(obj: Any): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    });

    });
}