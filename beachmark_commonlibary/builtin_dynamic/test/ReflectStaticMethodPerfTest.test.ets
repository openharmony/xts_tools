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

import { describe, it, TestType, Size, Level, beforeEach, afterAll, expect } from "@ohos/hypium";
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

class TestClass {
  public testValue: number = 0;

  public static staticMethod(): number {
    return 42;
  }

  public static staticMethodWithArgs(a: number, b: number): number {
    return a + b;
  }

  public static async staticAsyncMethod(): Promise<number> {
    return 100;
  }

  public static get staticGetter(): number {
    return 1;
  }

  public static set staticSetter(value: number) {
  }
}

function isMethodAsync(name: string): boolean {
  return name === "staticAsyncMethod";
}

function methodEquals(name1: string, name2: string): boolean {
  return name1 === name2;
}

function getMethodName(name: string): string {
  return name;
}

export default function ReflectStaticMethodPerfTest(): void {
  describe('ReflectStaticMethodPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_StaticMethod_isAsync_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let methodName: string = "staticAsyncMethod";
      let res: boolean = false;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = isMethodAsync(methodName);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: boolean = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_StaticMethod_isAsync_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core.reflect', 'StaticMethod', 'isAsync',
        'isAsync(): boolean', arkTsAveragedTime);
      expect(res === true).assertTrue();
      done();
    })

    it('PerformanceTest_StaticMethod_equals_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let methodName1: string = "staticMethod";
      let methodName2: string = "staticMethod";
      let res: boolean = false;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = methodEquals(methodName1, methodName2);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: boolean = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_StaticMethod_equals_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core.reflect', 'StaticMethod', 'equals',
        'equals(other: StaticMethod): boolean', arkTsAveragedTime);
      expect(res === true).assertTrue();
      done();
    })

    it('PerformanceTest_StaticMethod_getName_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let methodName: string = "staticMethod";
      let res: string = "";
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = getMethodName(methodName);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1: string = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_StaticMethod_getName_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core.reflect', 'StaticMethod', 'getName',
        'getName(): string', arkTsAveragedTime);
      expect(res === "staticMethod").assertTrue();
      done();
    })

  })
}