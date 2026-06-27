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
  TestType,
  Size,
  Level,
  beforeEach,
  afterAll,
  expect
} from "@ohos/hypium";
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

function createTuple0(): number[] {
  return [];
}

function createTuple1(): number[] {
  return [1];
}

function createTuple2(): number[] {
  return [1, 2];
}

function createTuple3(): number[] {
  return [1, 2, 3];
}

function createTuple4(): number[] {
  return [1, 2, 3, 4];
}

function createTuple5(): number[] {
  return [1, 2, 3, 4, 5];
}

function createTuple6(): number[] {
  return [1, 2, 3, 4, 5, 6];
}

function createTuple7(): number[] {
  return [1, 2, 3, 4, 5, 6, 7];
}

function createTuple8(): number[] {
  return [1, 2, 3, 4, 5, 6, 7, 8];
}

function createTuple9(): number[] {
  return [1, 2, 3, 4, 5, 6, 7, 8, 9];
}

function createTuple10(): number[] {
  return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
}

function createTuple11(): number[] {
  return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
}

function createTuple12(): number[] {
  return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
}

function createTuple13(): number[] {
  return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
}

function createTuple14(): number[] {
  return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
}

function createTuple15(): number[] {
  return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
}

function createTuple16(): number[] {
  return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
}

function createTupleNRest(): number[] {
  return [17, 18];
}

function createTupleN(): number[] {
  return [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18];
}

export default function TuplePerfTest(): void {
  describe('TuplePerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {

    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_Tuple0_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result = [];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple0_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple0', 'constructor',
        'constructor()', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple0_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple0();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple0_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple0', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple0_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple0();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple0_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple0', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple0_$_iterator_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple0();
      let result: IterableIterator<number> = value[Symbol.iterator]();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[Symbol.iterator]();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple0_$_iterator_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple0', '$_iterator',
        '$_iterator(): IterableIterator<Any>', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple1_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result = [1];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [1];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple1_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple1', 'constructor',
        'constructor(p0: T0)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple1_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple1();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple1_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple1', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple1_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple1();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple1_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple1', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple1_unsafeGet_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple1();
      let result: number = value[0];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[0];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple1_unsafeGet_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple1', 'unsafeGet',
        'unsafeGet(index: int): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple2_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result = [1, 2];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [1, 2];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple2_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple2', 'constructor',
        'constructor(p0: T0, p1: T1)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple2_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple2();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple2_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple2', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple2_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple2();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple2_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple2', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple2_unsafeGet_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple2();
      let result: number = value[1];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[1];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple2_unsafeGet_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple2', 'unsafeGet',
        'unsafeGet(index: int): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple3_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result = [1, 2, 3];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [1, 2, 3];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple3_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple3', 'constructor',
        'constructor(p0: T0, p1: T1, p2: T2)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple3_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple3();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple3_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple3', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple3_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple3();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple3_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple3', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple3_unsafeGet_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple3();
      let result: number = value[2];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[2];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple3_unsafeGet_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple3', 'unsafeGet',
        'unsafeGet(index: int): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple4_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result = [1, 2, 3, 4];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [1, 2, 3, 4];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple4_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple4', 'constructor',
        'constructor(p0: T0, p1: T1, p2: T2, p3: T3)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple4_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple4();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple4_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple4', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple4_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple4();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple4_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple4', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple4_unsafeGet_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple4();
      let result: number = value[3];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[3];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple4_unsafeGet_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple4', 'unsafeGet',
        'unsafeGet(index: int): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple5_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result = [1, 2, 3, 4, 5];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [1, 2, 3, 4, 5];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple5_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple5', 'constructor',
        'constructor(p0: T0, p1: T1, p2: T2, p3: T3, p4: T4)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple5_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple5();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple5_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple5', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple5_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple5();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple5_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple5', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple5_unsafeGet_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple5();
      let result: number = value[4];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[4];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple5_unsafeGet_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple5', 'unsafeGet',
        'unsafeGet(index: int): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple6_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result = [1, 2, 3, 4, 5, 6];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [1, 2, 3, 4, 5, 6];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple6_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple6', 'constructor',
        'constructor(p0: T0, p1: T1, p2: T2, p3: T3, p4: T4, p5: T5)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple6_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple6();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple6_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple6', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple6_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple6();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple6_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple6', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple6_unsafeGet_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple6();
      let result: number = value[5];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[5];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple6_unsafeGet_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple6', 'unsafeGet',
        'unsafeGet(index: int): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple7_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result = [1, 2, 3, 4, 5, 6, 7];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [1, 2, 3, 4, 5, 6, 7];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple7_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple7', 'constructor',
        'constructor(p0: T0, p1: T1, p2: T2, p3: T3, p4: T4, p5: T5, p6: T6)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple7_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple7();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple7_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple7', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple7_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple7();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple7_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple7', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple7_unsafeGet_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple7();
      let result: number = value[6];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[6];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple7_unsafeGet_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple7', 'unsafeGet',
        'unsafeGet(index: int): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple8_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result = [1, 2, 3, 4, 5, 6, 7, 8];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [1, 2, 3, 4, 5, 6, 7, 8];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple8_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple8', 'constructor',
        'constructor(p0: T0, p1: T1, p2: T2, p3: T3, p4: T4, p5: T5, p6: T6, p7: T7)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple8_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple8();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple8_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple8', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple8_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple8();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple8_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple8', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple8_unsafeGet_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple8();
      let result: number = value[7];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[7];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple8_unsafeGet_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple8', 'unsafeGet',
        'unsafeGet(index: int): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple9_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result = [1, 2, 3, 4, 5, 6, 7, 8, 9];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [1, 2, 3, 4, 5, 6, 7, 8, 9];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple9_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple9', 'constructor',
        'constructor(p0: T0, p1: T1, p2: T2, p3: T3, p4: T4, p5: T5, p6: T6, p7: T7, p8: T8)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple9_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple9();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple9_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple9', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple9_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple9();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple9_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple9', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple9_unsafeGet_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple9();
      let result: number = value[8];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[8];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple9_unsafeGet_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple9', 'unsafeGet',
        'unsafeGet(index: int): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple10_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple10_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple10', 'constructor',
        'constructor(p0: T0, p1: T1, p2: T2, p3: T3, p4: T4, p5: T5, p6: T6, p7: T7, p8: T8, p9: T9)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple10_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple10();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple10_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple10', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple10_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple10();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple10_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple10', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple10_unsafeGet_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple10();
      let result: number = value[9];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[9];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple10_unsafeGet_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple10', 'unsafeGet',
        'unsafeGet(index: int): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple11_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple11_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple11', 'constructor',
        'constructor(p0: T0, p1: T1, p2: T2, p3: T3, p4: T4, p5: T5, p6: T6, p7: T7, p8: T8, p9: T9, p10: T10)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple11_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple11();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple11_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple11', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple11_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple11();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple11_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple11', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple11_unsafeGet_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple11();
      let result: number = value[10];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[10];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple11_unsafeGet_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple11', 'unsafeGet',
        'unsafeGet(index: int): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple12_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple12_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple12', 'constructor',
        'constructor(p0: T0, p1: T1, p2: T2, p3: T3, p4: T4, p5: T5, p6: T6, p7: T7, p8: T8, p9: T9, p10: T10, p11: T11)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple12_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple12();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple12_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple12', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple12_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple12();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple12_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple12', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple12_unsafeGet_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple12();
      let result: number = value[11];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[11];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple12_unsafeGet_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple12', 'unsafeGet',
        'unsafeGet(index: int): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple13_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple13_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple13', 'constructor',
        'constructor(p0: T0, p1: T1, p2: T2, p3: T3, p4: T4, p5: T5, p6: T6, p7: T7, p8: T8, p9: T9, p10: T10, p11: T11, p12: T12)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple13_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple13();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple13_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple13', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple13_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple13();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple13_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple13', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple13_unsafeGet_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple13();
      let result: number = value[12];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[12];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple13_unsafeGet_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple13', 'unsafeGet',
        'unsafeGet(index: int): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple14_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple14_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple14', 'constructor',
        'constructor(p0: T0, p1: T1, p2: T2, p3: T3, p4: T4, p5: T5, p6: T6, p7: T7, p8: T8, p9: T9, p10: T10, p11: T11, p12: T12, p13: T13)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple14_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple14();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple14_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple14', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple14_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple14();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple14_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple14', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple14_unsafeGet_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple14();
      let result: number = value[13];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[13];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple14_unsafeGet_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple14', 'unsafeGet',
        'unsafeGet(index: int): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple15_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple15_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple15', 'constructor',
        'constructor(p0: T0, p1: T1, p2: T2, p3: T3, p4: T4, p5: T5, p6: T6, p7: T7, p8: T8, p9: T9, p10: T10, p11: T11, p12: T12, p13: T13, p14: T14)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple15_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple15();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple15_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple15', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple15_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple15();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple15_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple15', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple15_unsafeGet_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple15();
      let result: number = value[14];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[14];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple15_unsafeGet_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple15', 'unsafeGet',
        'unsafeGet(index: int): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple16_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple16_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple16', 'constructor',
        'constructor(p0: T0, p1: T1, p2: T2, p3: T3, p4: T4, p5: T5, p6: T6, p7: T7, p8: T8, p9: T9, p10: T10, p11: T11, p12: T12, p13: T13, p14: T14, p15: T15)', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple16_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple16();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple16_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple16', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple16_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple16();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple16_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple16', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_Tuple16_unsafeGet_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTuple16();
      let result: number = value[15];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[15];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Tuple16_unsafeGet_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Tuple16', 'unsafeGet',
        'unsafeGet(index: int): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_TupleN_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let rest: number[] = createTupleNRest();
      let result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, ...rest];
      let Stime: number = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        result = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, ...rest];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TupleN_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'TupleN', 'constructor',
        'constructor(p0: T0, ..., p15: T15, p: Any[])', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_TupleN_toString_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTupleN();
      let result: string = value.toString();
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.toString();
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TupleN_toString_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'TupleN', 'toString',
        'toString(): string', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_TupleN_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTupleN();
      let result: number = value.length;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value.length;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TupleN_length_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'TupleN', 'length',
        'get length(): int', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })

    it('PerformanceTest_TupleN_unsafeGet_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let value = createTupleN();
      let result: number = value[16];
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        result = value[16];
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = result;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_TupleN_unsafeGet_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'TupleN', 'unsafeGet',
        'unsafeGet(index: int): Any', arkTsAveragedTime);
      expect(res1 != null).assertTrue();
      done();
    })
  });
}