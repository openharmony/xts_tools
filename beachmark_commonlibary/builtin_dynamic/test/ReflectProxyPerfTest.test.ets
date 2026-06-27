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

import { describe, it, TestType, Size, Level, beforeEach, afterAll, expect } from "@ohos/hypium";
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

class ProxyLinkerSample {
  getFn: (proxy: object, method: string) => string | number | boolean | object | undefined;
  setFn: (proxy: object, method: string, value: string | number | boolean | object | undefined) => void;
  invokeFn: (proxy: object, method: string, args: (string | number | boolean | object | undefined)[]) => string | number | boolean | object | undefined;

  constructor() {
    this.getFn = (proxy: object, method: string): string | number | boolean | object | undefined => {
      return undefined;
    };
    this.setFn = (proxy: object, method: string, value: string | number | boolean | object | undefined): void => {
    };
    this.invokeFn = (proxy: object, method: string, args: (string | number | boolean | object | undefined)[]): string | number | boolean | object | undefined => {
      return undefined;
    };
  }
}

function createTestInvocationHandler(): ProxyLinkerSample {
  return new ProxyLinkerSample();
}

function createTestInterfaces(): ProxyLinkerSample[] {
  return [];
}

function createTestRuntimeLinker(): ProxyLinkerSample {
  return new ProxyLinkerSample();
}

function createProxy(handler: ProxyLinkerSample): ProxyLinkerSample {
  return new ProxyLinkerSample();
}

function getHandler(handler: ProxyLinkerSample): ProxyLinkerSample {
  return handler;
}

function isProxyClass(klass: object): boolean {
  return typeof klass === 'function';
}

export default function ReflectProxyPerfTest(): void {
  describe('ReflectProxyPerfTest', () => {
    const BASE_COUNT = 1000;

    let testHandler: ProxyLinkerSample = createTestInvocationHandler();
    let testInterfaces: ProxyLinkerSample[] = createTestInterfaces();
    let testLinker: ProxyLinkerSample = createTestRuntimeLinker();

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_Proxy_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result: ProxyLinkerSample = createProxy(testHandler);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = createProxy(testHandler);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: ProxyLinkerSample = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Proxy_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Proxy', 'constructor',
        'protected constructor(handler: InvocationHandler)', arkTsAveragedTime);
      expect(result !== null).assertTrue();
      done();
    })

    it('PerformanceTest_Proxy_getHandler_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result: ProxyLinkerSample = getHandler(testHandler);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = getHandler(testHandler);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: ProxyLinkerSample = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Proxy_getHandler_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Proxy', 'getHandler',
        'public getHandler(): InvocationHandler', arkTsAveragedTime);
      expect(result !== null).assertTrue();
      done();
    })

    it('PerformanceTest_Proxy_create_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let linker: ProxyLinkerSample = testLinker;
      let interfaces: ProxyLinkerSample[] = testInterfaces;
      let handler: ProxyLinkerSample = testHandler;
      let result: ProxyLinkerSample = createProxy(handler);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = createProxy(handler);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: ProxyLinkerSample = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Proxy_create_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Proxy', 'create',
        'public static create(linker: RuntimeLinker, interfaces: FixedArray<Class>, handler: InvocationHandler): Proxy', arkTsAveragedTime);
      expect(result !== null).assertTrue();
      done();
    })

    it('PerformanceTest_Proxy_isProxyClass_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let proxyObj: ProxyLinkerSample = createProxy(testHandler);
      let testKlass: object = Object;
      let result: boolean = isProxyClass(testKlass);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = isProxyClass(testKlass);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: boolean = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Proxy_isProxyClass_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Proxy', 'isProxyClass',
        'public static isProxyClass(klass: Class): boolean', arkTsAveragedTime);
      expect(typeof result === 'boolean').assertTrue();
      done();
    })

    it('PerformanceTest_InvocationHandler_get_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let proxyObj: ProxyLinkerSample = createProxy(testHandler);
      let testClass: ProxyLinkerSample = new ProxyLinkerSample();
      let testMethod: string = 'toString';
      let result: string | number | boolean | object | undefined = undefined;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = testHandler.getFn(proxyObj, testMethod);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string | number | boolean | object | undefined = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InvocationHandler_get_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InvocationHandler', 'get',
        'get(proxy: Proxy, method: InstanceMethod): Any', arkTsAveragedTime);
      expect(result === undefined).assertTrue();
      done();
    })

    it('PerformanceTest_InvocationHandler_set_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let proxyObj: ProxyLinkerSample = createProxy(testHandler);
      let testClass: ProxyLinkerSample = new ProxyLinkerSample();
      let testMethod: string = 'toString';
      let testValue: string | number | boolean | object | undefined = 'testValue';
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        testHandler.setFn(proxyObj, testMethod, testValue);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string | number | boolean | object | undefined = testValue;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InvocationHandler_set_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InvocationHandler', 'set',
        'set(proxy: Proxy, method: InstanceMethod, value: Any): void', arkTsAveragedTime);
      expect(testValue === 'testValue').assertTrue();
      done();
    })

    it('PerformanceTest_InvocationHandler_invoke_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let proxyObj: ProxyLinkerSample = createProxy(testHandler);
      let testClass: ProxyLinkerSample = new ProxyLinkerSample();
      let testMethod: string = 'toString';
      let args: (string | number | boolean | object | undefined)[] = [];
      let result: string | number | boolean | object | undefined = undefined;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = testHandler.invokeFn(proxyObj, testMethod, args);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string | number | boolean | object | undefined = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InvocationHandler_invoke_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'InvocationHandler', 'invoke',
        'invoke(proxy: Proxy, method: InstanceMethod, args: FixedArray<Any>): Any', arkTsAveragedTime);
      expect(result === undefined).assertTrue();
      done();
    })

  })
}