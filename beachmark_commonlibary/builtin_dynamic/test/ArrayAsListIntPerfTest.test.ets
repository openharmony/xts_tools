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

import {
  describe,
  it,
  TestType,
  Size,
  Level,
  beforeAll,
  afterAll,
  beforeEach,
  afterEach,
  expect
} from "@ohos/hypium";
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function ArrayAsListIntPerfTest(): void {
  describe('ArrayAsListIntPerfTest', () => {

    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_ArrayAsListInt_Constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let val = new Int(1);
      let list: containers.ArrayAsListInt = new containers.ArrayAsListInt();
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        list = new containers.ArrayAsListInt(10 as int, val);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = list;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_Constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'constructor', 'constructor(capacity: int, val: Int)', arkTsAveragedTime);
      expect(res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayAsListInt_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let list: containers.ArrayAsListInt = new containers.ArrayAsListInt();
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        list = new containers.ArrayAsListInt();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = list;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_Constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'constructor', 'constructor()', arkTsAveragedTime);
      expect(res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayAsListInt_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let list: containers.ArrayAsListInt = new containers.ArrayAsListInt();
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        list = new containers.ArrayAsListInt(10 as int);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = list;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_Constructor_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'constructor', 'constructor(capacity: int)', arkTsAveragedTime);
      expect(res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayAsListInt_Reserve_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let list = new containers.ArrayAsListInt();
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        list.reserve(10 as int);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = list;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_Reserve_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'reserve', 'reserve(capacity: int): void', arkTsAveragedTime);
      expect(res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayAsListInt_ToArray_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let list = new containers.ArrayAsListInt(10 as int, new Int(1));
      let res: Int[] = [];
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = list.toArray();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_ToArray_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'toArray', 'toArray(): Int[]', arkTsAveragedTime);
      expect(res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayAsListInt_PushFront_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let list = new containers.ArrayAsListInt();
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        list.pushFront(new Int(i as int));
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = list;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_PushFront_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'pushFront', 'pushFront(e: Int): void', arkTsAveragedTime);
      expect(res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayAsListInt_PopFront_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let list = new containers.ArrayAsListInt(BASE_COUNT as int, new Int(1));
      let res: Int = new Int(0);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = list.popFront();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_PopFront_0700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'popFront', 'popFront(): Int', arkTsAveragedTime);
      expect(res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayAsListInt_PushBack_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let list = new containers.ArrayAsListInt();
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        list.pushBack(new Int(i as int));
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = list;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_PushBack_0800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'pushBack', 'pushBack(e: Int): void', arkTsAveragedTime);
      expect(res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayAsListInt_PopBack_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let list = new containers.ArrayAsListInt(BASE_COUNT as int, new Int(1));
      let res: Int = new Int(0);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = list.popBack();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_PopBack_0900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'popBack', 'popBack(): Int', arkTsAveragedTime);
      expect(res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayAsListInt_Size_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let list = new containers.ArrayAsListInt(10 as int, new Int(1));
      let res: int = 0;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = list.size();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_Size_1000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'size', 'size(): int', arkTsAveragedTime);
      expect(res1 >= 0).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayAsListInt_At_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let list = new containers.ArrayAsListInt(10 as int, new Int(1));
      let res: Int = new Int(0);
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = list.at(0 as int);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_At_1100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'at', 'at(index: int): Int', arkTsAveragedTime);
      expect(res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayAsListInt_Set_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let list = new containers.ArrayAsListInt(10 as int, new Int(1));
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        list.set(0 as int, new Int(i as int));
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = list;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_Set_1200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'set', 'set(index: int, e: Int): void', arkTsAveragedTime);
      expect(res1 !== null).assertTrue();
      done();
    })

    it('PerformanceTest_ArrayAsListInt_Has_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let list = new containers.ArrayAsListInt(10 as int, new Int(1));
      let val = new Int(1);
      let res: boolean = false;
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = list.has(val);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayAsListInt_Has_1300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.containers', 'ArrayAsListInt', 'has', 'has(e: Int): boolean', arkTsAveragedTime);
      expect(res1 != false).assertTrue();
      done();
    })

  })
}
