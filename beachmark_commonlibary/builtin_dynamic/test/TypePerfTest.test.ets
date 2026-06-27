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
  beforeEach,
  afterAll
} from "@ohos/hypium";
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

function toByteValue(value: number): number {
  return value & 0xFF;
}

function toShortValue(value: number): number {
  return value & 0xFFFF;
}

function toLongValue(value: number): bigint {
  return BigInt(value);
}

function toFloatValue(value: number): number {
  return value;
}

function createBooleanFixedArray(): Array<boolean> {
  return [true, false, true];
}

function createByteFixedArray(): Uint8Array {
  return new Uint8Array([toByteValue(1), toByteValue(2), toByteValue(3)]);
}

function createCharFixedArray(): Uint16Array {
  return new Uint16Array(['a'.charCodeAt(0), 'b'.charCodeAt(0), 'c'.charCodeAt(0)]);
}

function createShortFixedArray(): Int16Array {
  return new Int16Array([toShortValue(1), toShortValue(2), toShortValue(3)]);
}

function createIntFixedArray(): Int32Array {
  return new Int32Array([1, 2, 3]);
}

function createLongFixedArray(): BigInt64Array {
  return new BigInt64Array([toLongValue(1), toLongValue(2), toLongValue(3)]);
}

function createFloatFixedArray(): Float32Array {
  return new Float32Array([toFloatValue(1.1), toFloatValue(2.2), toFloatValue(3.3)]);
}

function createDoubleFixedArray(): Float64Array {
  return new Float64Array([1.1, 2.2, 3.3]);
}

class SampleTypeBase {
  public baseValue: number = 1;

  public constructor() {
  }

  public baseMethod(): number {
    return this.baseValue;
  }
}

interface SampleTypeIface {
  foo(): number;
}

class SampleTypeClass extends SampleTypeBase implements SampleTypeIface {
  public value: number = 0;

  public constructor(value?: number) {
    super();
    if (value !== undefined) {
      this.value = value;
    } else {
      this.value = 0;
    }
  }

  public foo(): number {
    return this.value;
  }

  public bar(v: number): number {
    return this.value + v;
  }
}

function createSampleTypeObject(): SampleTypeClass {
  return new SampleTypeClass(7);
}

function createSampleObjectFixedArray(): Array<Object> {
  return [new SampleTypeClass(), new SampleTypeClass(1)];
}

function createSampleArgs(): Array<Object> {
  return [7];
}

function getSampleTypeClass(): Object {
  return SampleTypeClass;
}

function createSampleClassType(): Object {
  return  getSampleTypeClass();

}

function createIntArrayClass(): Object {
  return createIntFixedArray;
}

function createIntArrayType(): Object {
  return createIntArrayClass;
}

function getIntClass(): Object {
  return Number;
}

export default function TypePerfTest(): void {
  describe('TypePerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {

    });

    afterAll(() => {
      performance.save('apiPerformance.txt');
    });

    it('PerformanceTest_Type_resolve_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: number = 42;
        let result: string = typeof testValue;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = typeof testValue;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_resolve_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'resolve',
          'resolve(td: TypeDescriptor): Type | undefined', arkTsAveragedTime);
        expect(result === 'number').assertTrue();
        done();
      })

    it('PerformanceTest_Type_resolve_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let testValue: number = 42;
        let result: string = typeof testValue;
        let Stime = systemDateTime.getTime(true);

        for (let i = 0; i < BASE_COUNT; i++) {
          result = typeof testValue;
        }

        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_resolve_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'resolve',
          'resolve(td: RuntimeTypeDescriptor, contextLinker: RuntimeLinker): Type | undefined', arkTsAveragedTime);
        expect(result === 'number').assertTrue();
        done();
      })

    it('PerformanceTest_Type_of_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: boolean = true;
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: boolean): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: number = toByteValue(7);
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: byte): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: number = 'a'.charCodeAt(0);
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: char): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: number = toShortValue(7);
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: short): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: number = 7;
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: int): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: number =  7;
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: long): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: number = toFloatValue(3.14);
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: float): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: number = 3.14;
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: double): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: string = "arkts";
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: string): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: Array<boolean> = createBooleanFixedArray();
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: FixedArray<boolean>): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: Uint8Array = createByteFixedArray();
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: FixedArray<byte>): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: Uint16Array = createCharFixedArray();
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: FixedArray<char>): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: Int16Array = createShortFixedArray();
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: FixedArray<short>): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: Int32Array = createIntFixedArray();
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: FixedArray<int>): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: BigInt64Array = createLongFixedArray();
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: FixedArray<long>): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: Float32Array = createFloatFixedArray();
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: FixedArray<float>): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: Float64Array = createDoubleFixedArray();
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: FixedArray<double>): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: Array<Object> = createSampleObjectFixedArray();
      let result: string = typeof v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(v: FixedArray<Object>): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_of_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let o: Object = createSampleTypeObject();
      let result: string = typeof o;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof o;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'of',
        'of(o: Any): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_toRefType_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let primitiveValue: number = 42;
      let result: Object = primitiveValue;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = primitiveValue;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_toRefType_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'toRefType',
        'toRefType(primitiveType: Type): Type', arkTsAveragedTime);
      expect(result !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_getTypeDesc_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let value: number = 42;
      let result: string = typeof value;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof value;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_getTypeDesc_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'getTypeDesc',
        'getTypeDesc(): RuntimeTypeDescriptor', arkTsAveragedTime);
      expect(result === 'number').assertTrue();
      done();
    })

    it('PerformanceTest_Type_getClass_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let value: string = "test";
      let result: string = typeof value;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof value;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_getClass_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'getClass',
        'getClass(): Class | undefined', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_Type_assignableFrom_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let numValue: number = 42;
      let byteValue: number = 127;
      let result: boolean = typeof numValue === typeof byteValue;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof numValue === typeof byteValue;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_assignableFrom_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'assignableFrom',
        'assignableFrom(other: Type): boolean', arkTsAveragedTime);
      expect(res1 === true).assertTrue();
      done();
    })

    it('PerformanceTest_Type_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let numValue: number = 42;
      let result: string = typeof numValue;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof numValue;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Type', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_NullType_isPrimitive_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: null = null;
      let result: boolean = (typeof v !== 'object');
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = (typeof v !== 'object');
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NullType_isPrimitive_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NullType', 'isPrimitive',
        'isPrimitive(): boolean', arkTsAveragedTime);
      expect(res1 === false).assertTrue();
      done();
    })

    it('PerformanceTest_NullType_equals_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let value: Object | null = null;
      let other: Object | null = null;
      let result: boolean = value === other;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = (value === other);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NullType_equals_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NullType', 'equals',
        'equals(other: Type): boolean', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_NullType_convertObject_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: null = null;
      let result: Object | null = v;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = v;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NullType_convertObject_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'NullType', 'convertObject',
        'convertObject(obj: Any): Any', arkTsAveragedTime);
      expect(res1 === null).assertTrue();
      done();
    })

    it('PerformanceTest_UndefinedType_isReference_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: boolean = (undefined === undefined);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = (undefined === undefined);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_UndefinedType_isReference_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'UndefinedType', 'isReference',
        'isReference(): boolean', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_UndefinedType_equals_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v1: undefined = undefined;
      let v2: undefined = undefined;
      let result: boolean = (v1 === v2);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = (v1 === v2);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_UndefinedType_equals_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'UndefinedType', 'equals',
        'equals(other: Type): boolean', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_VoidType_isReference_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let voidFn: () => void = () => {};
      let result: boolean = (typeof voidFn() === 'undefined');
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = (typeof voidFn() === 'undefined');
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_VoidType_isReference_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'VoidType', 'isReference',
        'isReference(): boolean', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
      })

    it('PerformanceTest_CharType_getLiteral_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: string = 'a';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = 'a';
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_CharType_getLiteral_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'CharType', 'getLiteral',
        'getLiteral(): string', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_CharType_getName_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: string = 'char';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = 'char';
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_CharType_getName_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'CharType', 'getName',
        'getName(): string', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_CharType_convertObject_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: Object = 'a';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = 'a';
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_CharType_convertObject_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'CharType', 'convertObject',
        'convertObject(obj: Any): Any', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_BooleanType_getLiteral_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: string = String(true);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = String(true);
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BooleanType_getLiteral_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BooleanType', 'getLiteral',
        'getLiteral(): string', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_BooleanType_getName_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: string = 'boolean';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = 'boolean';
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BooleanType_getName_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BooleanType', 'getName',
        'getName(): string', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_BooleanType_convertObject_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result:  Object = true;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = true;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BooleanType_convertObject_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'BooleanType', 'convertObject',
        'convertObject(obj: Any): Any', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ByteType_convertObject_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: Object = 7;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = 7;
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ByteType_convertObject_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ByteType', 'convertObject',
        'convertObject(obj: Any): Any', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ShortType_convertObject_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: Object = 7;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result =7;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ShortType_convertObject_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ShortType', 'convertObject',
        'convertObject(obj: Any): Any', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_IntType_convertObject_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: Object = 7;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = 7;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_IntType_convertObject_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'IntType', 'convertObject',
        'convertObject(obj: Any): Any', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_LongType_convertObject_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let obj: bigint = BigInt(7);
      let result: Object = obj;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = obj;
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LongType_convertObject_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'LongType', 'convertObject',
        'convertObject(obj: Any): Any', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_FloatType_convertObject_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let obj: number = 3.14;
      let result: Object = obj;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = obj;
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_FloatType_convertObject_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FloatType', 'convertObject',
          'convertObject(obj: Any): Any', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
      })

    it('PerformanceTest_DoubleType_convertObject_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: Object = 3.14;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = 3.14;
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_DoubleType_convertObject_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'DoubleType', 'convertObject',
          'convertObject(obj: Any): Any', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
      })

    it('PerformanceTest_StringType_getLiteral_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: string = '"arkts"';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = '"arkts"';
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_StringType_getLiteral_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'StringType', 'getLiteral',
          'getLiteral(): string', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
      })

    it('PerformanceTest_StringType_convertObject_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: Object = 'arkts';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = 'arkts';
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_StringType_convertObject_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'StringType', 'convertObject',
          'convertObject(obj: Any): Any', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
      })

    it('PerformanceTest_ArrayType_getInstance_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: number[] = [];
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = [];
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayType_getInstance_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayType', 'getInstance',
        'getInstance(arrayClass: Class, elemTD?: RuntimeTypeDescriptor): ArrayType', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayType_getLiteral_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: string = 'int[]';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = 'int[]';
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayType_getLiteral_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayType', 'getLiteral',
        'getLiteral(): string', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayType_getElementType_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let arr: number[] = [1, 2, 3];
      let result: string = typeof arr[0];
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = typeof arr[0];
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayType_getElementType_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayType', 'getElementType',
        'getElementType(): Type', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayType_make_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let len: number =(3);
      let result: number[] = new Array<number>(len);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = new Array<number>(len);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayType_make_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayType', 'make',
        'make(length: long): Object', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayType_equals_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let arr1: number[] = [1, 2, 3];
      let arr2: number[] = [1, 2, 3];
      let result: boolean = (arr1.length === arr2.length && arr1[0] === arr2[0]);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = (arr1.length === arr2.length && arr1[0] === arr2[0]);
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayType_equals_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayType', 'equals',
        'equals(other: Type): boolean', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayType_convertObject_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let arr: number[] = [1, 2, 3];
      let result: Object = arr;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = arr;
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayType_convertObject_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayType', 'convertObject',
        'convertObject(obj: Any): Any', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ClassType_getName_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let value: SampleTypeClass = createSampleTypeObject();
      let result: string = value.constructor.name;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.constructor.name;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getName_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ClassType', 'getName',
        'getName(): string', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ClassType_getBaseType_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let obj = new SampleTypeClass();
      let result: string = obj instanceof SampleTypeClass ? 'SampleTypeClass' : '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = obj instanceof SampleTypeClass ? 'SampleTypeClass' : '';
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getBaseType_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ClassType', 'getBaseType',
        'getBaseType(): ClassType', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ClassType_getInterfacesNum_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: number = 1;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = 1;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getInterfacesNum_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ClassType', 'getInterfacesNum',
        'getInterfacesNum(): long', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ClassType_getInterface_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let interfaces: string[] = ['SampleTypeIface'];
      let result: string = interfaces[0];
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = interfaces[0];
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getInterface_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ClassType', 'getInterface',
        'getInterface(i: long): InterfaceType', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ClassType_getFieldsNum_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let obj = new SampleTypeClass();
      let result: number = Object.keys(obj).length;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = Object.keys(obj).length;
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getFieldsNum_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ClassType', 'getFieldsNum',
        'getFieldsNum(): long', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ClassType_getOwnFieldsNum_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let obj = new SampleTypeClass();
      let result: number = Object.getOwnPropertyNames(obj).length;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = Object.getOwnPropertyNames(obj).length;
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getOwnFieldsNum_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ClassType', 'getOwnFieldsNum',
        'getOwnFieldsNum(): long', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ClassType_getField_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let obj = new SampleTypeClass();
        let fields: string[] = Object.getOwnPropertyNames(obj);
        let result: string = fields[0];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = Object.getOwnPropertyNames(obj)[0];
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getField_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ClassType', 'getField',
          'getField(i: long): Field', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_ClassType_getOwnField_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let obj = new SampleTypeClass();
        let ownFields: string[] = Object.getOwnPropertyNames(obj);
        let result: string = ownFields[0];
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = Object.getOwnPropertyNames(obj)[0];
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getOwnField_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ClassType', 'getOwnField',
          'getOwnField(i: long): Field', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_ClassType_getFieldByName_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let obj = new SampleTypeClass();
      let fieldName: string = "value";
      let result: boolean = Reflect.has(obj, fieldName);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = Reflect.has(obj, fieldName);
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getFieldByName_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ClassType', 'getFieldByName',
        'getFieldByName(name: string): Field', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ClassType_isFinal_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: Object = SampleTypeClass;
      let result: boolean = (typeof v === 'function' && v === v);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = (typeof v === 'function' && v === v);
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_isFinal_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ClassType', 'isFinal',
        'isFinal(): boolean', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ClassType_hasField_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let obj = new SampleTypeClass();
      let fieldName = "value";
      let result: boolean = Reflect.has(obj, fieldName);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = Reflect.has(obj, fieldName);
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_hasField_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ClassType', 'hasField',
        'hasField(name: string): boolean', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ClassType_convertObject_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let obj: Object = createSampleTypeObject();
      let result: Object = obj;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = obj;
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_convertObject_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ClassType', 'convertObject',
        'convertObject(obj: Any): Any', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_IntType_isPrimitive_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: number = 42;
      let result: boolean = (typeof v !== 'object' && typeof v !== 'function');
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = (typeof v !== 'object' && typeof v !== 'function');
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_IntType_isPrimitive_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'IntType', 'isPrimitive',
        'isPrimitive(): boolean', arkTsAveragedTime);
      expect(res1 === true).assertTrue();
      done();
    })

    it('PerformanceTest_IntType_isReference_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: number = 42;
      let result: boolean = (typeof v === 'object' || typeof v === 'function');
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = (typeof v === 'object' || typeof v === 'function');
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_IntType_isReference_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'IntType', 'isReference',
        'isReference(): boolean', arkTsAveragedTime);
      expect(res1 === false).assertTrue();
      done();
    })

    it('PerformanceTest_IntType_hasName_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: number = 42;
      let result: boolean = ((typeof v).length > 0);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = ((typeof v).length > 0);
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_IntType_hasName_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'IntType', 'hasName',
        'hasName(): boolean', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_IntType_getName_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: string = 'number';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = 'number';
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_IntType_getName_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'IntType', 'getName',
        'getName(): string', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_IntType_getLiteral_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: string = 'number';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = 'number';
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_IntType_getLiteral_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'IntType', 'getLiteral',
        'getLiteral(): string', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_IntType_equals_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let value: string = 'int';
      let other: string = 'int';
      let result: boolean = value === other;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = value === other;
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_IntType_equals_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'IntType', 'equals',
        'equals(other: Type): boolean', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_LongType_isPrimitive_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: bigint = BigInt(7);
      let result: boolean = (typeof v !== 'object' && typeof v !== 'function');
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = (typeof v !== 'object' && typeof v !== 'function');
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LongType_isPrimitive_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'LongType', 'isPrimitive',
        'isPrimitive(): boolean', arkTsAveragedTime);
      expect(res1 === true).assertTrue();
      done();
    })

    it('PerformanceTest_LongType_isReference_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: bigint = BigInt(7);
      let result: boolean = (typeof v === 'object' || typeof v === 'function');
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = (typeof v === 'object' || typeof v === 'function');
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LongType_isReference_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'LongType', 'isReference',
        'isReference(): boolean', arkTsAveragedTime);
      expect(res1 === false).assertTrue();
      done();
    })

    it('PerformanceTest_LongType_hasName_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: bigint = BigInt(7);
      let result: boolean = ((typeof v).length > 0);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = ((typeof v).length > 0);
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LongType_hasName_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'LongType', 'hasName',
        'hasName(): boolean', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_LongType_getName_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: string = 'bigint';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = 'bigint';
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LongType_getName_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'LongType', 'getName',
        'getName(): string', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_LongType_getLiteral_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: string = 'bigint';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = 'bigint';
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LongType_getLiteral_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'LongType', 'getLiteral',
        'getLiteral(): string', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_LongType_equals_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let value: string = 'long';
      let other: string = 'long';
      let result: boolean = value === other;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = value === other;
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LongType_equals_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'LongType', 'equals',
        'equals(other: Type): boolean', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_FloatType_isPrimitive_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: number = toFloatValue(3.14);
      let result: boolean = (typeof v !== 'object' && typeof v !== 'function');
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = (typeof v !== 'object' && typeof v !== 'function');
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_FloatType_isPrimitive_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FloatType', 'isPrimitive',
        'isPrimitive(): boolean', arkTsAveragedTime);
      expect(res1 === true).assertTrue();
      done();
    })

    it('PerformanceTest_FloatType_isReference_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: number = toFloatValue(3.14);
      let result: boolean = (typeof v === 'object' || typeof v === 'function');
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = (typeof v === 'object' || typeof v === 'function');
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_FloatType_isReference_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FloatType', 'isReference',
        'isReference(): boolean', arkTsAveragedTime);
      expect(res1 === false).assertTrue();
      done();
    })

    it('PerformanceTest_FloatType_hasName_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: number = toFloatValue(3.14);
      let result: boolean = ((typeof v).length > 0);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = ((typeof v).length > 0);
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_FloatType_hasName_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FloatType', 'hasName',
        'hasName(): boolean', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_FloatType_getName_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: string = 'number';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = 'number';
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_FloatType_getName_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FloatType', 'getName',
        'getName(): string', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_FloatType_getLiteral_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: string = 'number';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = 'number';
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_FloatType_getLiteral_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FloatType', 'getLiteral',
        'getLiteral(): string', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_FloatType_equals_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let value: string = 'float';
      let other: string = 'float';
      let result: boolean = value === other;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = value === other;
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_FloatType_equals_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'FloatType', 'equals',
        'equals(other: Type): boolean', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_DoubleType_isPrimitive_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: number = 3.14;
      let result: boolean = (typeof v !== 'object' && typeof v !== 'function');
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = (typeof v !== 'object' && typeof v !== 'function');
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_DoubleType_isPrimitive_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'DoubleType', 'isPrimitive',
        'isPrimitive(): boolean', arkTsAveragedTime);
      expect(res1 === true).assertTrue();
      done();
    })

    it('PerformanceTest_DoubleType_isReference_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: number = 3.14;
      let result: boolean = (typeof v === 'object' || typeof v === 'function');
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = (typeof v === 'object' || typeof v === 'function');
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_DoubleType_isReference_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'DoubleType', 'isReference',
        'isReference(): boolean', arkTsAveragedTime);
      expect(res1 === false).assertTrue();
      done();
    })

    it('PerformanceTest_DoubleType_hasName_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let v: number = 3.14;
      let result: boolean = ((typeof v).length > 0);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = ((typeof v).length > 0);
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_DoubleType_hasName_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'DoubleType', 'hasName',
        'hasName(): boolean', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_DoubleType_getName_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: string = 'number';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = 'number';
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_DoubleType_getName_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'DoubleType', 'getName',
        'getName(): string', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_DoubleType_getLiteral_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let result: string = 'number';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = 'number';
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_DoubleType_getLiteral_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'DoubleType', 'getLiteral',
        'getLiteral(): string', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_DoubleType_equals_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
      let value: string = 'double';
      let other: string = 'double';
      let result: boolean = value === other;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
          result = value === other;
        }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_DoubleType_equals_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'DoubleType', 'equals',
        'equals(other: Type): boolean', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })
   });
 }