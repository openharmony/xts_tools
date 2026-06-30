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
  beforeAll,
  afterAll,
  beforeEach,
  afterEach,
  expect
} from "@ohos/hypium";
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function ValuePerfTest4(): void {
  describe('ValuePerfTest4', () => {

    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

it('PerformanceTest_FloatValue_constructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let data: number = toFloatValue(3.14);
        let result: FloatValue = new FloatValueImpl(FloatType.VAL, data);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = new FloatValueImpl(FloatType.VAL, data);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_FloatValue_constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'FloatValue',
          'constructor',
          'constructor(typ: FloatType, data: number)',
          arkTsAveragedTime
        );
        expect(result !== undefined).assertTrue();
        done();
      });

    it('PerformanceTest_FloatValue_getType_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let value: FloatValue = createFloatValueObj();
        let result: Type = value.getType();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getType();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_FloatValue_getType_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'FloatValue',
          'getType',
          'getType(): Type',
          arkTsAveragedTime
        );
        expect(result !== undefined).assertTrue();
        done();
      });

    it('PerformanceTest_FloatValue_getData_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let value: FloatValue = createFloatValueObj();
        let result: Object = value.getData();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getData();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_FloatValue_getData_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'FloatValue',
          'getData',
          'getData(): Object',
          arkTsAveragedTime
        );
        expect(result !== undefined).assertTrue();
        done();
      });

    it('PerformanceTest_FloatValue_getValueData_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let value: FloatValue = createFloatValueObj();
        let result: number = value.getValueData();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getValueData();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_FloatValue_getValueData_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'FloatValue',
          'getValueData',
          'getValueData(): number',
          arkTsAveragedTime
        );
        expect(result >= 0).assertTrue();
        done();
      });

    it('PerformanceTest_FloatValue_toPrint_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let value: FloatValue = createFloatValueObj();
        let result: string = value.toPrint(1);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.toPrint(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_FloatValue_toPrint_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'FloatValue',
          'toPrint',
          'toPrint(depth: number): string',
          arkTsAveragedTime
        );
        expect(result !== undefined).assertTrue();
        done();
      });

    it('PerformanceTest_FloatValue_toString_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let value: FloatValue = createFloatValueObj();
        let result: string = value.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_FloatValue_toString_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'FloatValue',
          'toString',
          'toString(): string',
          arkTsAveragedTime
        );
        expect(result !== undefined).assertTrue();
        done();
      });

    it('PerformanceTest_LongValue_constructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let data: bigint = toLongValue(7);
        let result: LongValue = new LongValueImpl(LongType.VAL, data);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = new LongValueImpl(LongType.VAL, data);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_LongValue_constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'LongValue',
          'constructor',
          'constructor(typ: LongType, data: bigint)',
          arkTsAveragedTime
        );
        expect(result !== undefined).assertTrue();
        done();
      });

    it('PerformanceTest_LongValue_getType_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let value: LongValue = createLongValueObj();
        let result: Type = value.getType();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getType();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_LongValue_getType_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'LongValue',
          'getType',
          'getType(): Type',
          arkTsAveragedTime
        );
        expect(result !== undefined).assertTrue();
        done();
      });

    it('PerformanceTest_LongValue_getData_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let value: LongValue = createLongValueObj();
        let result: Object = value.getData();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getData();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_LongValue_getData_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'LongValue',
          'getData',
          'getData(): Object',
          arkTsAveragedTime
        );
        expect(result !== undefined).assertTrue();
        done();
      });

    it('PerformanceTest_LongValue_getValueData_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let value: LongValue = createLongValueObj();
        let result: bigint = value.getValueData();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getValueData();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_LongValue_getValueData_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'LongValue',
          'getValueData',
          'getValueData(): bigint',
          arkTsAveragedTime
        );
        expect(result !== undefined).assertTrue();
        done();
      });

    it('PerformanceTest_LongValue_toPrint_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let value: LongValue = createLongValueObj();
        let result: string = value.toPrint(1);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.toPrint(1);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_LongValue_toPrint_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'LongValue',
          'toPrint',
          'toPrint(depth: number): string',
          arkTsAveragedTime
        );
        expect(result !== undefined).assertTrue();
        done();
      });

    it('PerformanceTest_LongValue_toString_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let value: LongValue = createLongValueObj();
        let result: string = value.toString();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.toString();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime ' +
          'PerformanceTest_LongValue_toString_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'LongValue',
          'toString',
          'toString(): string',
          arkTsAveragedTime
        );
        expect(result !== undefined).assertTrue();
        done();
      });
  });
}