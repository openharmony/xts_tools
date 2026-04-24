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
import { uri, util, url, xml, buffer, transfer } from '@kit.ArkTS';

let str = '';


export default function FinalizationRegistryPerfTest() {
  describe('FinalizationRegistryPerfTest', () => {
    // 毫秒 * 1000 = 微秒 毫秒 * 1000000 = 纳秒
    const BASE_COUNT = 500;
    // url.URLParams.get --url.URLParams.has --util.getHash --util.Types.isMap --uri.uri.checkIsAbsolute --util.Types.isArrayBuffer
    const BASE_COUNT_BIG = 500000;
    const UNIT_TIME = 1000000;
    // buffer.from
    const BASE_COUNT_MIX = 100;

    beforeEach(() => {
      let ret = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret);
      let ret1 = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret1);
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_FinalizationRegistryPerfTest_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let result = new FinalizationRegistry<number>((value: number) => {});
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = new FinalizationRegistry<number>((value: number) => {});
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        let res1 = result;

        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })

    it('PerformanceTest_FinalizationRegistryPerfTest_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let registry = new FinalizationRegistry<number>((value: number) => {});
        let result = registry.getSize()
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = registry.getSize()
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        let res1 = result;

        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })


    it('PerformanceTest_FinalizationRegistryPerfTest_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let registry = new FinalizationRegistry<number>((value: number) => {});
        let obj: Object = {}
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            registry.register(obj,i)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })


    it('PerformanceTest_FinalizationRegistryPerfTest_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let registry = new FinalizationRegistry<number>((value: number) => {});
        let obj: Object = {}
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            registry.unregister(obj)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })
    })

}