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

function recordPerformance(
  caseName: string,
  className: string,
  apiName: string,
  signature: string,
  dTime: long
): void {
  let arkTsAveragedTime = dTime.toDouble() * UNIT_TIME / BASE_COUNT;
  console.info('arkTsPerformanceTest arkTsAveragedTime ' + caseName + ': ' + arkTsAveragedTime + 'ns');
  performance.apiWithClassAndKeywordTxt('std.core', className, apiName, signature, arkTsAveragedTime);
}

class ProxyLinkerSample {
}

class TestProxy extends reflect.Proxy {
  public constructor(handler: reflect.InvocationHandler) {
    super(handler);
  }

  public static createWithHandler(handler: reflect.InvocationHandler): TestProxy {
    return new TestProxy(handler);
  }
}

function createTestInvocationHandler(): reflect.InvocationHandler {
  return {
    get(proxy: reflect.Proxy, method: reflect.InstanceMethod): Any {
      return undefined;
    },
    set(proxy: reflect.Proxy, method: reflect.InstanceMethod, value: Any): void {
    },
    invoke(proxy: reflect.Proxy, method: reflect.InstanceMethod, args: FixedArray<Any>): Any {
      return undefined;
    }
  };
}

function createTestInterfaces(): FixedArray<Class> {
  return [Class.from<reflect.InvocationHandler>()] as FixedArray<Class>;
}

function createTestRuntimeLinker(): RuntimeLinker {
  let cls = Class.of(new ProxyLinkerSample());
  return cls.getLinker();
}

export default function ReflectProxyPerfTest(): void {
  describe('ReflectProxyPerfTest', () => {
    let testHandler: reflect.InvocationHandler = createTestInvocationHandler();
    let testInterfaces: FixedArray<Class> = createTestInterfaces();
    let testLinker: RuntimeLinker = createTestRuntimeLinker();

    beforeEach(() => {
      let ret = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret);
      let ret1 = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret1);
    });

    afterAll(() => {
      performance.save('apiPerformance.txt');
    });

    it('PerformanceTest_Proxy_constructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let result: TestProxy = TestProxy.createWithHandler(testHandler);

        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
          result = TestProxy.createWithHandler(testHandler);
        }
        let Dtime = new Date().getTime() - Stime;

        let res1 = result;

        recordPerformance(
          'PerformanceTest_Proxy_constructor_0100',
          'Proxy',
          'constructor',
          'protected constructor(handler: InvocationHandler)',
          Dtime
        );
      });

    it('PerformanceTest_Proxy_getHandler_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let proxy: TestProxy = new TestProxy(testHandler);
        let result: reflect.InvocationHandler = proxy.getHandler();

        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
          result = proxy.getHandler();
        }
        let Dtime = new Date().getTime() - Stime;

        let res1 = result;

        recordPerformance(
          'PerformanceTest_Proxy_getHandler_0100',
          'Proxy',
          'getHandler',
          'public getHandler(): InvocationHandler',
          Dtime
        );
      });

    it('PerformanceTest_Proxy_create_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let linker: RuntimeLinker = testLinker;
        let interfaces: FixedArray<Class> = testInterfaces;
        let handler: reflect.InvocationHandler = testHandler;

        let result: reflect.Proxy = reflect.Proxy.create(linker, interfaces, handler);

        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
          result = reflect.Proxy.create(linker, interfaces, handler);
        }
        let Dtime = new Date().getTime() - Stime;

        let res1 = result;

        recordPerformance(
          'PerformanceTest_Proxy_create_0100',
          'Proxy',
          'create',
          'public static create(linker: RuntimeLinker, interfaces: FixedArray<Class>, handler: InvocationHandler): Proxy',
          Dtime
        );
      });

    it('PerformanceTest_Proxy_isProxyClass_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let proxyObj: reflect.Proxy = reflect.Proxy.create(testLinker, testInterfaces, testHandler);
        let testKlass: Class = Class.of(proxyObj);
        let result: boolean = reflect.Proxy.isProxyClass(testKlass);

        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
          result = reflect.Proxy.isProxyClass(testKlass);
        }
        let Dtime = new Date().getTime() - Stime;

        let res1 = result;

        recordPerformance(
          'PerformanceTest_Proxy_isProxyClass_0100',
          'Proxy',
          'isProxyClass',
          'public static isProxyClass(klass: Class): boolean',
          Dtime
        );
      });
  });
}
