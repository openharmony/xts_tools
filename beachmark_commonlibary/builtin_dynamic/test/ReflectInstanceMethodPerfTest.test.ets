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
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

class TestClass {
  public instanceField: number = 42;
  public getInstanceValue(): number { return this.instanceField; }
  public setInstanceValue(v: number): void { this.instanceField = v; }
}

function getInstanceMethod(obj: Object, name: string): Function | undefined {
  let method: Object = Reflect.get(obj, name);
  if (typeof method === 'function') {
    return method as Function;
  }
  return undefined;
}

let testObj: Record<string, Object> = {
  "instanceField": 42,
  "getInstanceValue": (): Object => { return (testObj["instanceField"] as number); },
  "setInstanceValue": (v: Object): void => { testObj["instanceField"] = v as number; }
};

export default function ReflectInstanceMethodPerfTest(): void {
  describe('ReflectInstanceMethodPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {

    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_InstanceMethod_isFinal_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function): void => {
        let res: boolean = false;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = Reflect.get(testObj, "getInstanceValue") !== undefined;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime: number = Dtime  / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime '
          + 'PerformanceTest_InstanceMethod_isFinal_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core.reflect', 'InstanceMethod', 'isFinal',
          'isFinal(): boolean', arkTsAveragedTime);
        expect(res1).assertTrue();
        done();
      })

    it('PerformanceTest_InstanceMethod_isAsync_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function): void => {
        let method: Object = Reflect.get(testObj, "getInstanceValue");
        let res: boolean = false;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = (method as Object).constructor.name === 'AsyncFunction';
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime: number = Dtime  / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime '
          + 'PerformanceTest_InstanceMethod_isAsync_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core.reflect', 'InstanceMethod', 'isAsync',
          'isAsync(): boolean', arkTsAveragedTime);
        expect(res1).assertFalse();
        done();
      })

    it('PerformanceTest_InstanceMethod_isAbstract_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function): void => {
        let res: boolean = false;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = Reflect.has(testObj, "getInstanceValue");
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime '
          + 'PerformanceTest_InstanceMethod_isAbstract_0300: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core.reflect', 'InstanceMethod', 'isAbstract',
          'isAbstract(): boolean', arkTsAveragedTime);
        expect(res1).assertTrue();
        done();
      })

    it('PerformanceTest_InstanceMethod_isGetter_0400',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function): void => {
        let res: boolean = false;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = typeof Reflect.get(testObj, "getInstanceValue") === 'function';
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime: number = Dtime  / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime '
          + 'PerformanceTest_InstanceMethod_isGetter_0400: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core.reflect', 'InstanceMethod', 'isGetter',
          'isGetter(): boolean', arkTsAveragedTime);
        expect(res1).assertTrue();
        done();
      })

    it('PerformanceTest_InstanceMethod_isSetter_0500',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function): void => {
        let res: boolean = false;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = Reflect.has(testObj, "setInstanceValue");
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime: number = Dtime  / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime '
          + 'PerformanceTest_InstanceMethod_isSetter_0500: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core.reflect', 'InstanceMethod', 'isSetter',
          'isSetter(): boolean', arkTsAveragedTime);
        expect(res1).assertTrue();
        done();
      })

    it('PerformanceTest_InstanceMethod_equals_0600',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function): void => {
        let method1: Object = Reflect.get(testObj, "getInstanceValue");
        let method2: Object = Reflect.get(testObj, "getInstanceValue");
        let res: boolean = false;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = method1 === method2;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime: number = Dtime  / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime '
          + 'PerformanceTest_InstanceMethod_equals_0600: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core.reflect', 'InstanceMethod', 'equals',
          'equals(other: InstanceMethod): boolean', arkTsAveragedTime);
        expect(res1).assertTrue();
        done();
      })

    it('PerformanceTest_InstanceMethod_invoke_0700',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function): void => {
        let res: Object = (testObj["getInstanceValue"] as Function)();
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = (testObj["getInstanceValue"] as Function)();
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime: number = Dtime  / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime '
          + 'PerformanceTest_InstanceMethod_invoke_0700: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core.reflect', 'InstanceMethod', 'invoke',
          'invoke(thisObj: Object): Object', arkTsAveragedTime);
        expect(res1).assertEqual(42);
        done();
      })

    it('PerformanceTest_InstanceMethod_invoke_0800',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function): void => {
        let res: Object | undefined = undefined;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = (testObj["setInstanceValue"] as Function)(i);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime: number = Dtime  / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime '
          + 'PerformanceTest_InstanceMethod_invoke_0800: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt(
          'std.core.reflect', 'InstanceMethod', 'invoke',
          'invoke(thisObj: Object, args: Array<Object>): Object',
          arkTsAveragedTime);
        expect(testObj["instanceField"]).assertEqual(999);
        done();
      })

  })
}