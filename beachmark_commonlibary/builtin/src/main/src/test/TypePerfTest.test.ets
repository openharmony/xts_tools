/*
 * Copyright (C) 2025-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
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
  TestType,
  Size,
  Level,
  beforeEach,
  afterAll
} from "../../../hypium/index";
import performance from './Performance.util';

const BASE_COUNT = 50000;
const UNIT_TIME = 1000000;

function toByteValue(value: int): byte {
  return value.toByte();
}

function toShortValue(value: int): short {
  return value.toShort();
}

function toLongValue(value: int): long {
  return value.toLong();
}

function toFloatValue(value: double): float {
  return value.toFloat();
}

function createBooleanFixedArray(): FixedArray<boolean> {
  return [true, false, true] as FixedArray<boolean>;
}

function createByteFixedArray(): FixedArray<byte> {
  return [toByteValue(1), toByteValue(2), toByteValue(3)] as FixedArray<byte>;
}

function createCharFixedArray(): FixedArray<char> {
  return [c'a', c'b', c'c'] as FixedArray<char>;
}

function createShortFixedArray(): FixedArray<short> {
  return [toShortValue(1), toShortValue(2), toShortValue(3)] as FixedArray<short>;
}

function createIntFixedArray(): FixedArray<int> {
  return [1, 2, 3] as FixedArray<int>;
}

function createLongFixedArray(): FixedArray<long> {
  return [toLongValue(1), toLongValue(2), toLongValue(3)] as FixedArray<long>;
}

function createFloatFixedArray(): FixedArray<float> {
  return [toFloatValue(1.1), toFloatValue(2.2), toFloatValue(3.3)] as FixedArray<float>;
}

function createDoubleFixedArray(): FixedArray<double> {
  return [1.1, 2.2, 3.3] as FixedArray<double>;
}

class SampleTypeBase {
  public baseValue: int = 1;

  public constructor() {
  }

  public baseMethod(): int {
    return this.baseValue;
  }
}

interface SampleTypeIface {
  foo(): int;
}

final class SampleTypeClass extends SampleTypeBase implements SampleTypeIface {
  public value: int = 0;

  public constructor() {
    super();
    this.value = 0;
  }

  public constructor(value: int) {
    super();
    this.value = value;
  }

  public foo(): int {
    return this.value;
  }

  public bar(v: int): int {
    return this.value + v;
  }
}

function createSampleTypeObject(): SampleTypeClass {
  return new SampleTypeClass(7);
}

function createSampleObjectFixedArray(): FixedArray<Object> {
  return [new SampleTypeClass(), new SampleTypeClass(1)] as FixedArray<Object>;
}

function createSampleArgs(): FixedArray<Any> {
  return [7] as FixedArray<Any>;
}

function getSampleTypeClass(): Class {
  return Class.from<SampleTypeClass>();
}

function createSampleClassType(): ClassType {
  let cls = getSampleTypeClass();
  return Type.resolve(cls.getDescriptor(), cls.getLinker()) as ClassType;
}

function createIntArrayClass(): Class {
  return Class.of(createIntFixedArray());
}

function createIntArrayType(): ArrayType {
  return ArrayType.getInstance(createIntArrayClass());
}

function getIntClass(): Class {
  return Class.of(new Int());
}

export default function TypePerfTest(): void {
  describe('TypePerfTest', () => {
    beforeEach(() => {
      let ret = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret);
      let ret1 = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret1);
    });

    afterAll(() => {
      performance.save('apiPerformance.txt');
    });

    /*
     * 注释原因：
     * Type.from<T>() 依赖前端 lowering，当前线上提交环境可能直接执行到方法体，
     * 而方法体中会抛异常：
     * "Type.from call will be casted by frontend"
     * 因此这里先注释保留，不直接删除。
     */
    /*
    it('PerformanceTest_Type_from_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let result: Type = Type.from<int>();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.from<int>();
        }

        let dTime = new Date().getTime() - sTime;
        recordPerformance('PerformanceTest_Type_from_0100', 'Type', 'from',
          'from<T>(): Type', dTime);
      });
    */

    it('PerformanceTest_Type_resolve_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let td: TypeDescriptor = "std.core.String";
        let result: Type | undefined = Type.resolve(td);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.resolve(td);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_resolve_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'resolve',
          'resolve(td: TypeDescriptor): Type | undefined',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_resolve_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let cls = getIntClass();
        let td: string = cls.getDescriptor();
        let linker = cls.getLinker();
        let result: Type | undefined = Type.resolve(td, linker);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.resolve(td, linker);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_resolve_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'resolve',
          'resolve(td: RuntimeTypeDescriptor, contextLinker: RuntimeLinker): Type | undefined',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: boolean = true;
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: boolean): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: byte = toByteValue(7);
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: byte): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: char = c'a';
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0300: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: char): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: short = toShortValue(7);
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0400: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: short): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: int = 7;
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0500: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: int): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_0600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: long = toLongValue(7);
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0600: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: long): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_0700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: float = toFloatValue(3.14);
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0700: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: float): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_0800',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: double = 3.14;
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0800: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: double): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_0900',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: string = "arkts";
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_0900: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: string): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_1000',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: FixedArray<boolean> = createBooleanFixedArray();
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1000: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: FixedArray<boolean>): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_1100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: FixedArray<byte> = createByteFixedArray();
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: FixedArray<byte>): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_1200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: FixedArray<char> = createCharFixedArray();
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: FixedArray<char>): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_1300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: FixedArray<short> = createShortFixedArray();
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1300: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: FixedArray<short>): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_1400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: FixedArray<int> = createIntFixedArray();
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1400: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: FixedArray<int>): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_1500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: FixedArray<long> = createLongFixedArray();
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1500: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: FixedArray<long>): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_1600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: FixedArray<float> = createFloatFixedArray();
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1600: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: FixedArray<float>): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_1700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: FixedArray<double> = createDoubleFixedArray();
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1700: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: FixedArray<double>): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_1800',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let v: FixedArray<Object> = createSampleObjectFixedArray();
        let result: Type = Type.of(v);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(v);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1800: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(v: FixedArray<Object>): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_of_1900',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let o: Any = createSampleTypeObject();
        let result: Type = Type.of(o);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.of(o);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_of_1900: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'of',
          'of(o: Any): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_toRefType_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let primitiveType: Type = IntType.VAL;
        let result: Type = Type.toRefType(primitiveType);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Type.toRefType(primitiveType);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_toRefType_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'toRefType',
          'toRefType(primitiveType: Type): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_getTypeDesc_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Type = IntType.VAL;
        let result: string = value.getTypeDesc();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getTypeDesc();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_getTypeDesc_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'getTypeDesc',
          'getTypeDesc(): RuntimeTypeDescriptor',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_getClass_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Type = StringType.REF;
        let result: Class | undefined = value.getClass();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getClass();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_getClass_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'getClass',
          'getClass(): Class | undefined',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_assignableFrom_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Type = IntType.VAL;
        let other: Type = ByteType.VAL;
        let result: boolean = value.assignableFrom(other);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.assignableFrom(other);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_assignableFrom_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'assignableFrom',
          'assignableFrom(other: Type): boolean',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_Type_toString_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Type = IntType.VAL;
        let result: string = value.toString();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.toString();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Type_toString_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'Type',
          'toString',
          'toString(): string',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_NullType_isPrimitive_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: NullType = NullType.REF;
        let result: boolean = value.isPrimitive();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.isPrimitive();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NullType_isPrimitive_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'NullType',
          'isPrimitive',
          'isPrimitive(): boolean',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_NullType_equals_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: NullType = NullType.REF;
        let other: Type = NullType.REF;
        let result: boolean = value.equals(other);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.equals(other);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NullType_equals_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'NullType',
          'equals',
          'equals(other: Type): boolean',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_NullType_convertObject_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: NullType = NullType.REF;
        let result: Any = value.convertObject(null);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.convertObject(null);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_NullType_convertObject_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'NullType',
          'convertObject',
          'convertObject(obj: Any): Any',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_UndefinedType_isReference_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: UndefinedType = UndefinedType.REF;
        let result: boolean = value.isReference();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.isReference();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_UndefinedType_isReference_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'UndefinedType',
          'isReference',
          'isReference(): boolean',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_UndefinedType_equals_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: UndefinedType = UndefinedType.REF;
        let other: Type = UndefinedType.REF;
        let result: boolean = value.equals(other);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.equals(other);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_UndefinedType_equals_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'UndefinedType',
          'equals',
          'equals(other: Type): boolean',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_VoidType_isReference_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: VoidType = VoidType.VAL;
        let result: boolean = value.isReference();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.isReference();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_VoidType_isReference_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'VoidType',
          'isReference',
          'isReference(): boolean',
          arkTsAveragedTime
        );
      });
// 同一方法 `isReference()` 测试两次，仅 VoidType 实例不同（VAL vs REF），所以REF这里注释作为保留
/*    it('PerformanceTest_VoidType_isReference_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: VoidType = VoidType.REF;
        let result: boolean = value.isReference();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.isReference();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_VoidType_isReference_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'VoidType',
          'isReference',
          'isReference(): boolean',
          arkTsAveragedTime
        );
      });*/

    it('PerformanceTest_VoidType_convertObject_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: VoidType = VoidType.VAL;
        let result: Any = value.convertObject(Void.void_instance);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.convertObject(Void.void_instance);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_VoidType_convertObject_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'VoidType',
          'convertObject',
          'convertObject(obj: Any): Any',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_CharType_getLiteral_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: CharType = CharType.VAL;
        let result: string = value.getLiteral();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getLiteral();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_CharType_getLiteral_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'CharType',
          'getLiteral',
          'getLiteral(): string',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_CharType_getName_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: CharType = CharType.REF;
        let result: string = value.getName();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getName();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_CharType_getName_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'CharType',
          'getName',
          'getName(): string',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_CharType_convertObject_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: CharType = CharType.VAL;
        let result: Any = value.convertObject(c'a');
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.convertObject(c'a');
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_CharType_convertObject_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'CharType',
          'convertObject',
          'convertObject(obj: Any): Any',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_BooleanType_getLiteral_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: BooleanType = BooleanType.VAL;
        let result: string = value.getLiteral();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getLiteral();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BooleanType_getLiteral_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'BooleanType',
          'getLiteral',
          'getLiteral(): string',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_BooleanType_getName_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: BooleanType = BooleanType.REF;
        let result: string = value.getName();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getName();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BooleanType_getName_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'BooleanType',
          'getName',
          'getName(): string',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_BooleanType_convertObject_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: BooleanType = BooleanType.VAL;
        let result: Any = value.convertObject(true);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.convertObject(true);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BooleanType_convertObject_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'BooleanType',
          'convertObject',
          'convertObject(obj: Any): Any',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ByteType_convertObject_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ByteType = ByteType.VAL;
        let result: Any = value.convertObject(7);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.convertObject(7);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ByteType_convertObject_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ByteType',
          'convertObject',
          'convertObject(obj: Any): Any',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ShortType_convertObject_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ShortType = ShortType.VAL;
        let result: Any = value.convertObject(7);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.convertObject(7);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ShortType_convertObject_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ShortType',
          'convertObject',
          'convertObject(obj: Any): Any',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_IntType_convertObject_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: IntType = IntType.VAL;
        let result: Any = value.convertObject(7);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.convertObject(7);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_IntType_convertObject_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'IntType',
          'convertObject',
          'convertObject(obj: Any): Any',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_LongType_convertObject_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: LongType = LongType.VAL;
        let obj: long = toLongValue(7);
        let result: Any = value.convertObject(obj);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.convertObject(obj);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_LongType_convertObject_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'LongType',
          'convertObject',
          'convertObject(obj: Any): Any',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_FloatType_convertObject_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: FloatType = FloatType.VAL;
        let obj: float = toFloatValue(3.14);
        let result: Any = value.convertObject(obj);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.convertObject(obj);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_FloatType_convertObject_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'FloatType',
          'convertObject',
          'convertObject(obj: Any): Any',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_DoubleType_convertObject_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: DoubleType = DoubleType.VAL;
        let result: Any = value.convertObject(3.14);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.convertObject(3.14);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_DoubleType_convertObject_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'DoubleType',
          'convertObject',
          'convertObject(obj: Any): Any',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_StringType_getLiteral_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: StringType = StringType.REF;
        let result: string = value.getLiteral();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getLiteral();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_StringType_getLiteral_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'StringType',
          'getLiteral',
          'getLiteral(): string',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_StringType_convertObject_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: StringType = StringType.REF;
        let result: Any = value.convertObject("arkts");
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.convertObject("arkts");
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_StringType_convertObject_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'StringType',
          'convertObject',
          'convertObject(obj: Any): Any',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ArrayType_getInstance_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let arrayClass: Class = createIntArrayClass();
        let result: ArrayType = ArrayType.getInstance(arrayClass);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = ArrayType.getInstance(arrayClass);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayType_getInstance_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ArrayType',
          'getInstance',
          'getInstance(arrayClass: Class, elemTD?: RuntimeTypeDescriptor): ArrayType',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ArrayType_getLiteral_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ArrayType = createIntArrayType();
        let result: string = value.getLiteral();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getLiteral();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayType_getLiteral_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ArrayType',
          'getLiteral',
          'getLiteral(): string',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ArrayType_getElementType_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ArrayType = createIntArrayType();
        let result: Type = value.getElementType();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getElementType();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayType_getElementType_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ArrayType',
          'getElementType',
          'getElementType(): Type',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ArrayType_make_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ArrayType = createIntArrayType();
        let len: long = toLongValue(3);
        let result: Object = value.make(len);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.make(len);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayType_make_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ArrayType',
          'make',
          'make(length: long): Object',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ArrayType_equals_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ArrayType = createIntArrayType();
        let other: Type = createIntArrayType();
        let result: boolean = value.equals(other);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.equals(other);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayType_equals_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ArrayType',
          'equals',
          'equals(other: Type): boolean',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ArrayType_convertObject_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ArrayType = createIntArrayType();
        let arr: FixedArray<int> = createIntFixedArray();
        let result: Any = value.convertObject(arr);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.convertObject(arr);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayType_convertObject_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ArrayType',
          'convertObject',
          'convertObject(obj: Any): Any',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ClassType_getName_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result: string = value.getName();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getName();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getName_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ClassType',
          'getName',
          'getName(): string',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ClassType_getBaseType_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result: ClassType = value.getBaseType();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getBaseType();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getBaseType_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ClassType',
          'getBaseType',
          'getBaseType(): ClassType',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ClassType_getInterfacesNum_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result: long = value.getInterfacesNum();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getInterfacesNum();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getInterfacesNum_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ClassType',
          'getInterfacesNum',
          'getInterfacesNum(): long',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ClassType_getInterface_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result = value.getInterface(0);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getInterface(0);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getInterface_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ClassType',
          'getInterface',
          'getInterface(i: long): InterfaceType',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ClassType_getFieldsNum_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result: long = value.getFieldsNum();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getFieldsNum();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getFieldsNum_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ClassType',
          'getFieldsNum',
          'getFieldsNum(): long',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ClassType_getOwnFieldsNum_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result: long = value.getOwnFieldsNum();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getOwnFieldsNum();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getOwnFieldsNum_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ClassType',
          'getOwnFieldsNum',
          'getOwnFieldsNum(): long',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ClassType_getField_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result = value.getField(0);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getField(0);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getField_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ClassType',
          'getField',
          'getField(i: long): Field',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ClassType_getOwnField_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result = value.getOwnField(0);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getOwnField(0);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getOwnField_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ClassType',
          'getOwnField',
          'getOwnField(i: long): Field',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ClassType_getFieldByName_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result = value.getFieldByName("value");
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getFieldByName("value");
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_getFieldByName_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ClassType',
          'getFieldByName',
          'getFieldByName(name: string): Field',
          arkTsAveragedTime
        );
      });

    /*
     * 注释原因：
     * 该组接口涉及 Method / Constructor / invoke / 运行时元信息反射链路，
     * 在当前环境中存在直接异常退出风险。
     * 为保证性能套整体可稳定跑完，这里先注释保留。
     */

    /*
    it('PerformanceTest_ClassType_getMethodByName_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result = value.getMethodByName("foo");
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getMethodByName("foo");
        }

        let dTime = new Date().getTime() - sTime;
        recordPerformance('PerformanceTest_ClassType_getMethodByName_0100', 'ClassType', 'getMethodByName',
          'getMethodByName(name: string): Method', dTime);
      });
    */

    /*
    it('PerformanceTest_ClassType_getMethodsNum_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result: long = value.getMethodsNum();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getMethodsNum();
        }

        let dTime = new Date().getTime() - sTime;
        recordPerformance('PerformanceTest_ClassType_getMethodsNum_0100', 'ClassType', 'getMethodsNum',
          'getMethodsNum(): long', dTime);
      });
    */

    /*
    it('PerformanceTest_ClassType_getMethod_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result = value.getMethod(0);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getMethod(0);
        }

        let dTime = new Date().getTime() - sTime;
        recordPerformance('PerformanceTest_ClassType_getMethod_0100', 'ClassType', 'getMethod',
          'getMethod(i: long): Method', dTime);
      });
    */

    /*
    it('PerformanceTest_ClassType_getConstructorsNum_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result: long = value.getConstructorsNum();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getConstructorsNum();
        }

        let dTime = new Date().getTime() - sTime;
        recordPerformance('PerformanceTest_ClassType_getConstructorsNum_0100', 'ClassType', 'getConstructorsNum',
          'getConstructorsNum(): long', dTime);
      });
    */

    /*
    it('PerformanceTest_ClassType_getConstructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result = value.getConstructor(0);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.getConstructor(0);
        }

        let dTime = new Date().getTime() - sTime;
        recordPerformance('PerformanceTest_ClassType_getConstructor_0100', 'ClassType', 'getConstructor',
          'getConstructor(i: long): Method', dTime);
      });
    */

    /*
    it('PerformanceTest_ClassType_hasEmptyConstructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result: boolean = value.hasEmptyConstructor();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.hasEmptyConstructor();
        }

        let dTime = new Date().getTime() - sTime;
        recordPerformance('PerformanceTest_ClassType_hasEmptyConstructor_0100', 'ClassType', 'hasEmptyConstructor',
          'hasEmptyConstructor(): boolean', dTime);
      });
    */

    it('PerformanceTest_ClassType_isFinal_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result: boolean = value.isFinal();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.isFinal();
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_isFinal_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ClassType',
          'isFinal',
          'isFinal(): boolean',
          arkTsAveragedTime
        );
      });

    it('PerformanceTest_ClassType_hasField_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result: boolean = value.hasField("value");
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.hasField("value");
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_hasField_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ClassType',
          'hasField',
          'hasField(name: string): boolean',
          arkTsAveragedTime
        );
      });

    /*
     * 注释原因：
     * make()/make(args) 依赖 createInstance / 构造器选择 / invoke 反射链，
     * 当前环境存在异常退出风险，先注释保留。
     */
    /*
    it('PerformanceTest_ClassType_make_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let result: Object = value.make();
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.make();
        }

        let dTime = new Date().getTime() - sTime;
        recordPerformance('PerformanceTest_ClassType_make_0100', 'ClassType', 'make',
          'make(): Object', dTime);
      });
    */

    /*
    it('PerformanceTest_ClassType_make_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let args: FixedArray<Any> = createSampleArgs();
        let result: Object = value.make(args);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.make(args);
        }

        let dTime = new Date().getTime() - sTime;
        recordPerformance('PerformanceTest_ClassType_make_0200', 'ClassType', 'make',
          'make(args: FixedArray<Any>): Object', dTime);
      });
    */

    it('PerformanceTest_ClassType_convertObject_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: ClassType = createSampleClassType();
        let obj: Any = createSampleTypeObject();
        let result: Any = value.convertObject(obj);
        let sTime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.convertObject(obj);
        }

        let dTime = new Date().getTime() - sTime;
        let res1 = result;
        let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ClassType_convertObject_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core',
          'ClassType',
          'convertObject',
          'convertObject(obj: Any): Any',
          arkTsAveragedTime
        );
      });
  });
}