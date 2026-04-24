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

// 自定义测试类
class TestClass {
  name: string = "test"
  value: int = 123
  static staticField: int = 999

  static staticMethod(): int {
    return 100;
  }

  instanceMethod(): string {
    return "hello";
  }

  constructor() { }

  constructorWithParam(name: string, value: int) {
    this.name = name;
    this.value = value;
  }
}

class SubTestClass extends TestClass {
  subValue: int = 456

  subMethod(): int {
    return this.subValue;
  }
}

interface TestInterface {
  interfaceMethod(): void;
}

class TestClassWithInterface implements TestInterface {
  interfaceMethod(): void { }
}

let str = '';

export default function ClassPerfTest() {
  describe('ClassPerfTest', () => {
    // 毫秒 * 1000 = 微秒 毫秒 * 1000000 = 纳秒
    const BASE_COUNT = 50000;
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

    // ========== 静态方法测试 ==========
    it('PerformanceTest_Class_Static_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Class = Class.of(new TestClass());
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Class.of(new TestClass());
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Static_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'of',
        'static of(obj: Object | null): Class', arkTsAveragedTime);
    })

    it('PerformanceTest_Class_Static_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj: Object = new TestClass();
      let res: Class | undefined = Class.ofAny(obj);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Class.ofAny(obj);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Static_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'ofAny',
        'static ofAny(obj: Any): Class | undefined', arkTsAveragedTime);
    })

    it('PerformanceTest_Class_Static_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Class = Class.current();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Class.current();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Static_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'current',
        'static current(): Class', arkTsAveragedTime);
    })

    it('PerformanceTest_Class_Static_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: Class | undefined = Class.ofCaller();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Class.ofCaller();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Static_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'ofCaller',
        'static ofCaller(): Class | undefined', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - getName ==========
    it('PerformanceTest_Class_Instance_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: string = '';
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.getName();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'getName',
        'getName(): string', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - getSuper ==========
    it('PerformanceTest_Class_Instance_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new SubTestClass());
      let res: Class | undefined = cls.getSuper();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.getSuper();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'getSuper',
        'getSuper(): Class | undefined', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - isSubtypeOf ==========
    it('PerformanceTest_Class_Instance_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let subCls: Class = Class.of(new SubTestClass());
      let parentCls: Class = Class.of(new TestClass());
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = subCls.isSubtypeOf(parentCls);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'isSubtypeOf',
        'isSubtypeOf(other: Class): boolean', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - getLinker ==========
    it('PerformanceTest_Class_Instance_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: RuntimeLinker = cls.getLinker();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.getLinker();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'getLinker',
        'getLinker(): RuntimeLinker', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - isEnum ==========
    it('PerformanceTest_Class_Instance_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.isEnum();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'isEnum',
        'isEnum(): boolean', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - isInterface ==========
    it('PerformanceTest_Class_Instance_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClassWithInterface());
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.isInterface();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'isInterface',
        'isInterface(): boolean', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - isFixedArray ==========
    it('PerformanceTest_Class_Instance_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.isFixedArray();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_0700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'isFixedArray',
        'isFixedArray(): boolean', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - isUnion ==========
    it('PerformanceTest_Class_Instance_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.isUnion();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_0800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'isUnion',
        'isUnion(): boolean', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - isFinal ==========
    it('PerformanceTest_Class_Instance_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.isFinal();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_0900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'isFinal',
        'isFinal(): boolean', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - isAbstract ==========
    it('PerformanceTest_Class_Instance_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.isAbstract();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_1000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'isAbstract',
        'isAbstract(): boolean', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - isPrimitive ==========
    it('PerformanceTest_Class_Instance_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.isPrimitive();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_1100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'isPrimitive',
        'isPrimitive(): boolean', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - getInstanceMethods ==========
    it('PerformanceTest_Class_Instance_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: FixedArray<reflect.InstanceMethod> = cls.getInstanceMethods();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.getInstanceMethods();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_1200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'getInstanceMethods',
        'getInstanceMethods(): FixedArray<reflect.InstanceMethod>', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - getInstanceMethod ==========
    it('PerformanceTest_Class_Instance_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: reflect.InstanceMethod | undefined = cls.getInstanceMethod("instanceMethod");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.getInstanceMethod("instanceMethod");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_1300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'getInstanceMethod',
        'getInstanceMethod(name: string): reflect.InstanceMethod | undefined', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - getStaticMethods ==========
    it('PerformanceTest_Class_Instance_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: FixedArray<reflect.StaticMethod> = cls.getStaticMethods();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.getStaticMethods();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_1400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'getStaticMethods',
        'getStaticMethods(): FixedArray<reflect.StaticMethod>', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - getStaticMethod ==========
    it('PerformanceTest_Class_Instance_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: reflect.StaticMethod | undefined = cls.getStaticMethod("staticMethod");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.getStaticMethod("staticMethod");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_1500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'getStaticMethod',
        'getStaticMethod(name: string): reflect.StaticMethod | undefined', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - getInstanceFields ==========
    it('PerformanceTest_Class_Instance_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: FixedArray<reflect.InstanceField> = cls.getInstanceFields();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.getInstanceFields();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_1600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'getInstanceFields',
        'getInstanceFields(): FixedArray<reflect.InstanceField>', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - getInstanceField ==========
    it('PerformanceTest_Class_Instance_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: reflect.InstanceField | undefined = cls.getInstanceField("name");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.getInstanceField("name");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_1700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'getInstanceField',
        'getInstanceField(name: string): reflect.InstanceField | undefined', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - getStaticFields ==========
    it('PerformanceTest_Class_Instance_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: FixedArray<reflect.StaticField> = cls.getStaticFields();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.getStaticFields();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_1800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'getStaticFields',
        'getStaticFields(): FixedArray<reflect.StaticField>', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - getStaticField ==========
    it('PerformanceTest_Class_Instance_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: reflect.StaticField | undefined = cls.getStaticField("staticField");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.getStaticField("staticField");
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_1900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'getStaticField',
        'getStaticField(name: string): reflect.StaticField | undefined', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - getConstructors ==========
    it('PerformanceTest_Class_Instance_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: FixedArray<reflect.Constructor> = cls.getConstructors();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.getConstructors();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_2000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'getConstructors',
        'getConstructors(): FixedArray<reflect.Constructor>', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - getInterfaces ==========
    it('PerformanceTest_Class_Instance_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClassWithInterface());
      let res: FixedArray<Class> = cls.getInterfaces();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.getInterfaces();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_2100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'getInterfaces',
        'getInterfaces(): FixedArray<Class>', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - initialize ==========
    it('PerformanceTest_Class_Instance_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        cls.initialize();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = true;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_2200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'initialize',
        'initialize(): void', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - createInstance ==========
    it('PerformanceTest_Class_Instance_2300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.createInstance();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_2300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'createInstance',
        'createInstance(): Object', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - getDescriptor ==========
    it('PerformanceTest_Class_Instance_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: string = '';
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.getDescriptor();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_2400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'getDescriptor',
        'getDescriptor(): string', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - isNamespace ==========
    it('PerformanceTest_Class_Instance_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.isNamespace();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_2500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'isNamespace',
        'isNamespace(): boolean', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - getFixedArrayComponentType ==========
    it('PerformanceTest_Class_Instance_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: Class | undefined = cls.getFixedArrayComponentType();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.getFixedArrayComponentType();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_2600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'getFixedArrayComponentType',
        'getFixedArrayComponentType(): Class | undefined', arkTsAveragedTime);
    })

    // ========== 实例方法测试 - getUnionConstituentTypes ==========
    it('PerformanceTest_Class_Instance_2700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let cls: Class = Class.of(new TestClass());
      let res: FixedArray<Class> | undefined = cls.getUnionConstituentTypes();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = cls.getUnionConstituentTypes();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Instance_2700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'getUnionConstituentTypes',
        'getUnionConstituentTypes(): FixedArray<Class> | undefined', arkTsAveragedTime);
    })

    // ========== 原始类型常量测试 ==========
    it('PerformanceTest_Class_Primitive_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: string = '';
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Class.PRIMITIVE_INT.getName();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Primitive_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'PRIMITIVE_INT',
        'static PRIMITIVE_INT: Class', arkTsAveragedTime);
    })

    it('PerformanceTest_Class_Primitive_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = Class.PRIMITIVE_BOOLEAN.isPrimitive();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Class_Primitive_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Class', 'PRIMITIVE_BOOLEAN',
        'static PRIMITIVE_BOOLEAN: Class', arkTsAveragedTime);
    })

  })
}
