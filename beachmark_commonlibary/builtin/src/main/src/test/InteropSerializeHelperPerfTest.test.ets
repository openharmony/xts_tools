/*
 * Copyright (C) 2025-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
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
} from "../../../../../hypium/index";
import performance from './Performance.util';

export default function InteropSerializeHelperPerfTest(): void {
  describe('InteropSerializeHelperPerfTest', () => {
    const BASE_COUNT: number = 50000;
    const UNIT_TIME: number = 1000000;
    const PKG_NAME: string = 'std.interop';

    beforeEach(() => {
      let ret = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret);
      let ret1 = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret1);
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    // InteropArgRecord constructor()
    it('PerformanceTest_InteropArgRecord_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let record: InteropArgRecord = new InteropArgRecord();
        let Stime: number = new Date().getTime();
        for (let i: number = 0; i < BASE_COUNT; i++) {record = new InteropArgRecord();}
        let arkTsAveragedTime: number = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
        let _record = record;
        performance.apiWithClassAndKeywordTxt(PKG_NAME, 'InteropArgRecord', 'constructor', 'constructor()', arkTsAveragedTime);
      })

    // InteropArgRecord constructor(type, value)
    it('PerformanceTest_InteropArgRecord_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let record: InteropArgRecord = new InteropArgRecord(InteropArgType.DIRECT, 0);
        let Stime: number = new Date().getTime();
        for (let i: number = 0; i < BASE_COUNT; i++) {record = new InteropArgRecord(InteropArgType.DIRECT, i);}
        let arkTsAveragedTime: number = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
        let _record = record;
        performance.apiWithClassAndKeywordTxt(PKG_NAME, 'InteropArgRecord', 'constructor', 'constructor(type: InteropArgType, value: Any)', arkTsAveragedTime);
      })

    // InteropArgRecord.type getter
    it('PerformanceTest_InteropArgRecord_Type_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let record: InteropArgRecord = new InteropArgRecord(InteropArgType.DIRECT, 0);
        let res: InteropArgType = InteropArgType.DIRECT;
        let Stime: number = new Date().getTime();
        for (let i: number = 0; i < BASE_COUNT; i++) {res = record.type;}
        let arkTsAveragedTime: number = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
        let _res = res;
        performance.apiWithClassAndKeywordTxt(PKG_NAME, 'InteropArgRecord', 'type', 'type: InteropArgType', arkTsAveragedTime);
      })

    // InteropArgRecord.value getter
    it('PerformanceTest_InteropArgRecord_Value_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let record: InteropArgRecord = new InteropArgRecord(InteropArgType.DIRECT, 42);
        let res: Any = undefined;
        let Stime: number = new Date().getTime();
        for (let i: number = 0; i < BASE_COUNT; i++) {res = record.value;}
        let arkTsAveragedTime: number = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
        let _res = res;
        performance.apiWithClassAndKeywordTxt(PKG_NAME, 'InteropArgRecord', 'value', 'value: Any', arkTsAveragedTime);
      })

    // InteropSerializeHelper constructor
    it('PerformanceTest_InteropSerializeHelper_Constructor_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let args: FixedArray<Any> = new FixedArray<Any>(3);
        args[0] = 1;
        args[1] = "test";
        args[2] = true;
        let helper: InteropSerializeHelper = new InteropSerializeHelper(args);
        let Stime: number = new Date().getTime();
        for (let i: number = 0; i < BASE_COUNT; i++) {helper = new InteropSerializeHelper(args);}
        let arkTsAveragedTime: number = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
        let _helper = helper;
        performance.apiWithClassAndKeywordTxt(PKG_NAME, 'InteropSerializeHelper', 'constructor', 'constructor(args: FixedArray<Any>)', arkTsAveragedTime);
      })

    // InteropSerializeHelper.deserialize
    it('PerformanceTest_InteropSerializeHelper_Deserialize_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let args: FixedArray<Any> = new FixedArray<Any>(3);
        args[0] = 1;
        args[1] = "test";
        args[2] = true;
        let helper: InteropSerializeHelper = new InteropSerializeHelper(args);
        let res: FixedArray<Any> = new FixedArray<Any>(0);
        let Stime: number = new Date().getTime();
        for (let i: number = 0; i < BASE_COUNT; i++) {res = helper.deserialize();}
        let arkTsAveragedTime: number = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
        let _res = res;
        performance.apiWithClassAndKeywordTxt(PKG_NAME, 'InteropSerializeHelper', 'deserialize', 'deserialize(): FixedArray<Any>', arkTsAveragedTime);
      })

    // InteropSerializeHelper.isJSInteropRef
    it('PerformanceTest_InteropSerializeHelper_IsJSInteropRef_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let res: boolean = false;
        let testVal: Any = 42;
        let Stime: number = new Date().getTime();
        for (let i: number = 0; i < BASE_COUNT; i++) {res = InteropSerializeHelper.isJSInteropRef(testVal);}
        let arkTsAveragedTime: number = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
        let _res = res;
        performance.apiWithClassAndKeywordTxt(PKG_NAME, 'InteropSerializeHelper', 'isJSInteropRef', 'isJSInteropRef(value: Any): boolean', arkTsAveragedTime);
      })

  })
}