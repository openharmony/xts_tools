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
import { systemDateTime } from '@kit.BasicServicesKit';
import performance from './Performance.util';
declare class ArkTools {
  static forceFullGC(): void;
}
declare class Field {
  getStaticValue(): Object;
}
declare class ClassType {
  getFieldByName(name: string): Field | undefined;
  getTypeDesc(): string;
}
function getAttributesType(): ClassType | undefined {
  return undefined as ClassType | undefined;
}
function getAccessModifierType(): ClassType | undefined {
  return undefined as ClassType | undefined;
}
function getValueTypeDescType(): ClassType | undefined {
  return undefined as ClassType | undefined;
}
function getTypeDescription(type: ClassType | undefined): string {
  return typeof type === 'undefined' ? "" : "std.core";
}
function getStaticFieldValue(type: ClassType | undefined, fieldName: string): Object | undefined {
  return typeof fieldName === 'string' ? 0 : undefined;
}
export default function TypePerfTest09(): void {
  describe('TypePerfTest09', () => {
    const BASE_COUNT: number = 1000;
    beforeEach(() => {

    });
    afterAll(() => {
      performance.save('apiPerformance.txt');
    });

    it('PerformanceTest_Attributes_READONLY_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let attrsType = getAttributesType();
      let result: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(attrsType, 'READONLY') as number;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_Attributes_READONLY_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Attributes', 'READONLY',
        'static readonly READONLY: number', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_Attributes_ABSTRACT_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let attrsType = getAttributesType();
      let result: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(attrsType, 'ABSTRACT') as number;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_Attributes_ABSTRACT_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Attributes', 'ABSTRACT',
        'static readonly ABSTRACT: number', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_Attributes_CONSTRUCTOR_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let attrsType = getAttributesType();
      let result: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(attrsType, 'CONSTRUCTOR') as number;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_Attributes_CONSTRUCTOR_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Attributes', 'CONSTRUCTOR',
        'static readonly CONSTRUCTOR: number', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_Attributes_REST_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let attrsType = getAttributesType();
      let result: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(attrsType, 'REST') as number;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_Attributes_REST_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Attributes', 'REST',
        'static readonly REST: number', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_Attributes_OPTIONAL_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let attrsType = getAttributesType();
      let result: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(attrsType, 'OPTIONAL') as number;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_Attributes_OPTIONAL_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Attributes', 'OPTIONAL',
        'static readonly OPTIONAL: number', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_Attributes_NATIVE_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let attrsType = getAttributesType();
      let result: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(attrsType, 'NATIVE') as number;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_Attributes_NATIVE_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Attributes', 'NATIVE',
        'static readonly NATIVE: number', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_Attributes_ASYNC_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let attrsType = getAttributesType();
      let result: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(attrsType, 'ASYNC') as number;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_Attributes_ASYNC_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Attributes', 'ASYNC',
        'static readonly ASYNC: number', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_Attributes_GETTER_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let attrsType = getAttributesType();
      let result: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(attrsType, 'GETTER') as number;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_Attributes_GETTER_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Attributes', 'GETTER',
        'static readonly GETTER: number', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_Attributes_SETTER_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let attrsType = getAttributesType();
      let result: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(attrsType, 'SETTER') as number;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_Attributes_SETTER_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Attributes', 'SETTER',
        'static readonly SETTER: number', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_AccessModifier_PRIVATE_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let accessType = getAccessModifierType();
      let result: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(accessType, 'PRIVATE') as number;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_AccessModifier_PRIVATE_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AccessModifier', 'PRIVATE',
        'static readonly PRIVATE: number', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      done();
    });

    it('PerformanceTest_AccessModifier_PROTECTED_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let accessType = getAccessModifierType();
      let result: number = 0;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(accessType, 'PROTECTED') as number;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_AccessModifier_PROTECTED_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AccessModifier', 'PROTECTED',
        'static readonly PROTECTED: number', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_ValueTypeDesc_VOID_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let vtdType = getValueTypeDescType();
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(vtdType, 'VOID') as string;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_ValueTypeDesc_VOID_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ValueTypeDesc', 'VOID',
        'static readonly VOID: string', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_ValueTypeDesc_BOOLEAN_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let vtdType = getValueTypeDescType();
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(vtdType, 'BOOLEAN') as string;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_ValueTypeDesc_BOOLEAN_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ValueTypeDesc', 'BOOLEAN',
        'static readonly BOOLEAN: string', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_ValueTypeDesc_BYTE_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let vtdType = getValueTypeDescType();
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(vtdType, 'BYTE') as string;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_ValueTypeDesc_BYTE_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ValueTypeDesc', 'BYTE',
        'static readonly BYTE: string', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_ValueTypeDesc_SHORT_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let vtdType = getValueTypeDescType();
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(vtdType, 'SHORT') as string;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_ValueTypeDesc_SHORT_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ValueTypeDesc', 'SHORT',
        'static readonly SHORT: string', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_ValueTypeDesc_CHAR_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let vtdType = getValueTypeDescType();
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(vtdType, 'CHAR') as string;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_ValueTypeDesc_CHAR_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ValueTypeDesc', 'CHAR',
        'static readonly CHAR: string', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_ValueTypeDesc_LONG_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let vtdType = getValueTypeDescType();
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(vtdType, 'LONG') as string;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_ValueTypeDesc_LONG_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ValueTypeDesc', 'LONG',
        'static readonly LONG: string', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_ValueTypeDesc_FLOAT_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let vtdType = getValueTypeDescType();
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(vtdType, 'FLOAT') as string;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_ValueTypeDesc_FLOAT_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ValueTypeDesc', 'FLOAT',
        'static readonly FLOAT: string', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_ValueTypeDesc_DOUBLE_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let vtdType = getValueTypeDescType();
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getStaticFieldValue(vtdType, 'DOUBLE') as string;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_ValueTypeDesc_DOUBLE_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ValueTypeDesc', 'DOUBLE',
        'static readonly DOUBLE: string', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_Attributes_getTypeDesc_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let attrsType = getAttributesType();
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getTypeDescription(attrsType);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_Attributes_getTypeDesc_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Attributes', 'getTypeDesc',
        'getTypeDesc(): RuntimeTypeDescriptor', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(typeof result === 'string').assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_AccessModifier_getTypeDesc_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let accessType = getAccessModifierType();
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getTypeDescription(accessType);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_AccessModifier_getTypeDesc_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'AccessModifier', 'getTypeDesc',
        'getTypeDesc(): RuntimeTypeDescriptor', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(typeof result === 'string').assertTrue();
      expect(result !== null).assertTrue();
      done();
    });

    it('PerformanceTest_ValueTypeDesc_getTypeDesc_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let vtdType = getValueTypeDescType();
      let result: string = "";
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = getTypeDescription(vtdType);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime ' +
        'PerformanceTest_ValueTypeDesc_getTypeDesc_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ValueTypeDesc', 'getTypeDesc',
        'getTypeDesc(): RuntimeTypeDescriptor', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      expect(typeof result === 'string').assertTrue();
      expect(result !== null).assertTrue();
      done();
    });
  });
}