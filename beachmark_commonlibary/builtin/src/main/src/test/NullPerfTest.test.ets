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

/**
 * Null类型性能测试
 *
 * 注意：由于std.core.Null类定义为：
 *   export final class Null {
 *       private native constructor();
 *   }
 * 构造函数是私有的，无法实例化，且该类没有定义任何公共方法。
 *
 * 因此Null类本身无法进行接口性能测试。如果需要测试null值的操作性能，
 * 应使用语言内置的null操作（如String()转换、===比较等），而非Null类方法。
 *
 * 本测试文件暂时保留空结构，便于将来Null类扩展公共API后补充测试。
 */

export default function NullPerfTest(): void {
  describe('NullPerfTest', () => {
    // 毫秒 * 1000 = 微秒 毫秒 * 1000000 = 纳秒
    const BASE_COUNT = 50000;
    // url.URLParams.get --url.URLParams.has --util.getHash --util.Types.isMap --uri.uri.checkIsAbsolute --util.Types.isArrayBuffer
    const BASE_COUNT_BIG = 500000;
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

    // ============================================================
    // 以下测试用例已禁用，原因如下：
    //
    // 1. toString测试：Null类未定义toString()方法
    //    - 使用String(null)是语言内置转换，非Null类API
    //    - 无法测试std.core.Null.toString()性能
    //
    // 2. equals测试：Null类无法实例化
    //    - new Null() 因构造函数私有而失败
    //    - 即使能实例化，Null类也未定义equals()方法
    // ============================================================

    /**
     * @NativeTest 需要在Null类扩展公共API后取消注释
     *
     * it('PerformanceTest_Null_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
     *   let b = null;
     *   let result = String(b);
     *   let Stime = new Date().getTime();
     *   for (let i = 0; i < BASE_COUNT; i++) {
     *     result = String(b);
     *   }
     *   let Dtime = new Date().getTime() - Stime;
     *   let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
     *   console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Null_toString_0100: ' + arkTsAveragedTime + 'ns');
     *   performance.apiWithClassAndKeywordTxt('std.core', 'Null', 'toString',
     *     'toString(): string', arkTsAveragedTime);
     * })
     *
     * it('PerformanceTest_Null_equals_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
     *   let testObj = null;
     *   let b = new Null();
     *   let result = b === testObj;
     *   let Stime = new Date().getTime();
     *   for (let i = 0; i < BASE_COUNT; i++) {
     *     result = b === testObj;
     *   }
     *   let Dtime = new Date().getTime() - Stime;
     *   let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
     *   console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Null_equals_0200: ' + arkTsAveragedTime + 'ns');
     *   performance.apiWithClassAndKeywordTxt('std.core', 'Null', 'equals',
     *     'equals(to: Any): boolean', arkTsAveragedTime);
     * })
     */

  })
}
