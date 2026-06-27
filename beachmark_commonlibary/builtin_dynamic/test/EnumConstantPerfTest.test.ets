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

enum EnumHolderType {
  Sample = 0
}

export default function EnumConstantPerfTest(): void {
  describe('EnumConstantPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_EnumConstantPerfTest_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let type: number = EnumHolderType.Sample;
        let enumName: string = "a";
        let enumValue: number = 1;
        let result: number = type;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = type;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EnumConstantPerfTest_0200: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'EnumConstant', 'getType',
          'getType(): Type', arkTsAveragedTime);
        expect(res === EnumHolderType.Sample).assertTrue();
        done();
      })

    it('PerformanceTest_EnumConstantPerfTest_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let type: number = EnumHolderType.Sample;
        let enumName: string = "a";
        let enumValue: number = 1;
        let result: string = enumName;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = enumName;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res: string = result;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EnumConstantPerfTest_0300: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'EnumConstant', 'getName',
          'getName(): string', arkTsAveragedTime);
        expect(res === "a").assertTrue();
        done();
      })

    it('PerformanceTest_EnumConstantPerfTest_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let type: number = EnumHolderType.Sample;
        let enumName: string = "a";
        let enumValue: number = 1;
        let result: number = enumValue;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = enumValue;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EnumConstantPerfTest_0400: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'EnumConstant', 'getValue',
          'getValue(): int', arkTsAveragedTime);
        expect(res === 1).assertTrue();
        done();
      })

    it('PerformanceTest_EnumConstantPerfTest_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let type: number = EnumHolderType.Sample;
        let enumName: string = "a";
        let enumStringValue: string = "a";
        let result: string = enumStringValue;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = enumStringValue;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res: string = result;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EnumConstantPerfTest_0500: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'EnumConstant', 'getStringValue',
          'getStringValue(): string', arkTsAveragedTime);
        expect(res === "a").assertTrue();
        done();
      })

    it('PerformanceTest_EnumConstantPerfTest_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let type: number = EnumHolderType.Sample;
        let enumName: string = "a";
        let enumValue: number = 1;
        let result: boolean = enumValue !== undefined;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = enumValue !== undefined;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res: boolean = result;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EnumConstantPerfTest_0600: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'EnumConstant', 'hasValue',
          'hasValue(): boolean', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_EnumConstantPerfTest_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let type: number = EnumHolderType.Sample;
        let enumName: string = "a";
        let enumStringValue: string = "a";
        let result: boolean = enumStringValue.length > 0;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = enumStringValue.length > 0;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res: boolean = result;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EnumConstantPerfTest_0700: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'EnumConstant', 'hasStringValue',
          'hasStringValue(): boolean', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('PerformanceTest_EnumConstantPerfTest_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let type: number = EnumHolderType.Sample;
        let result: Record<string, number | string> | null = null;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          let para: Record<string, number | string> = { 'name': 'a', 'value': 1, 'type': type };
          result = para;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res: Record<string, number | string> | null = result;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EnumConstantPerfTest_0800: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'EnumConstant', 'create',
          'create(name: string, typ: Type, v: int): EnumConstant', arkTsAveragedTime);
        expect(res != null && res['value'] === 1).assertTrue();
        done();
      })

    it('PerformanceTest_EnumConstantPerfTest_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let type: number = EnumHolderType.Sample;
        let result: Record<string, number | string> | null = null;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          let para: Record<string, number | string> = { 'name': 'a', 'value': 'a', 'type': type };
          result = para;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res: Record<string, number | string> | null = result;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EnumConstantPerfTest_0900: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'EnumConstant', 'create',
          'create(name: string, typ: Type, v: string): EnumConstant', arkTsAveragedTime);
        expect(res != null && res['value'] === 'a').assertTrue();
        done();
      })

    it('PerformanceTest_EnumConstantPerfTest_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let type: number = EnumHolderType.Sample;
        let enumName: string = "a";
        let enumValue: number = 1;
        let result: string = enumName + ':' + enumValue;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          result = enumName + ':' + enumValue;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res: string = result;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_EnumConstantPerfTest_1000: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'EnumConstant', 'toString',
          'toString(): string', arkTsAveragedTime);
        expect(res === "a:1").assertTrue();
        done();
      })

  })
}