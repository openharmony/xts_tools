/*
 * Copyright (c) 2025 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the "License");
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

export default function ArrayBufferPerfTest() {
  describe('ArrayBufferPerfTest', () => {

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

    it('PerformanceTest_ArrayBuffer_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: ArrayBuffer = new ArrayBuffer(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ArrayBuffer(1024);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_constructor_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'constructor',
      'constructor(length: int, maxByteLength?: int)', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: ArrayBuffer = new ArrayBuffer(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new ArrayBuffer(1024 as number);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_constructor_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'constructor',
      'constructor(length: number, maxByteLength?: number)', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_toString_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let buf: ArrayBuffer = new ArrayBuffer(1024);
      let res: String = '';
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = buf.toString();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_toString_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'toString',
      'toString(): String', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_isView_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let u8arr: Uint8Array = new Uint8Array(10);
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ArrayBuffer.isView(u8arr);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_isView_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'isView',
      'static isView(obj: Object): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_slice_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let buf: ArrayBuffer = new ArrayBuffer(100);
      let res: ArrayBuffer = new ArrayBuffer(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = buf.slice(0, 50);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_slice_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'slice',
      'slice(begin: int, end?: int): ArrayBuffer', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_getByteLength_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let buf: ArrayBuffer = new ArrayBuffer(1024);
      let res: int = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = buf.getByteLength();
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_getByteLength_0800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'getByteLength',
      'getByteLength(): int', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_byteLength_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let buf: ArrayBuffer = new ArrayBuffer(1024);
      let res: int = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = buf.byteLength;
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_byteLength_0900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'byteLength',
      'get byteLength(): int', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_detached_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let buf: ArrayBuffer = new ArrayBuffer(1024);
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = buf.detached;
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_detached_1000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'detached',
      'get detached(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_resizable_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let buf: ArrayBuffer = new ArrayBuffer(1024);
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = buf.resizable;
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_resizable_1100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'resizable',
      'get resizable(): boolean', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_resize_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let buf: ArrayBuffer = new ArrayBuffer(2048, 4096);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        buf.resize(1024);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = buf;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_resize_1200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'resize',
        'resize(newLen: int): void', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_from_FixedArray_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr: FixedArray<byte> = [65, 66, 67, 68, 69];
      let res: ArrayBuffer = new ArrayBuffer(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ArrayBuffer.from(arr);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_from_FixedArray_1300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'from',
      'static from(arr: FixedArray<byte>): ArrayBuffer', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_from_Uint8Array_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let u8arr: Uint8Array = new Uint8Array([65, 66, 67, 68, 69]);
      let res: ArrayBuffer = new ArrayBuffer(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ArrayBuffer.from(u8arr);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_from_Uint8Array_1400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'from',
      'static from(u8arr: Uint8Array): ArrayBuffer', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_from_array_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let arr: double[] = [1.0, 2.0, 3.0, 4.0, 5.0];
      let res: ArrayBuffer = new ArrayBuffer(0);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ArrayBuffer.from(arr);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_from_array_1500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'from',
      'static from(array: double[]): ArrayBuffer', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_from_string_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: ArrayBuffer = ArrayBuffer.from('Hello World', 'utf8');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ArrayBuffer.from('Hello World', 'utf8');
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_from_string_1600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'from',
        'static native from(str: string, encoding: string): ArrayBuffer', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_from_buffer_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let src: ArrayBuffer = new ArrayBuffer(10);
      let res: ArrayBuffer = ArrayBuffer.from(src, 2 as number, 5 as number);

        let Stime = new Date().getTime();
      
        for (let i = 0; i < BASE_COUNT; i++) {
          res = ArrayBuffer.from(src, 2 as number, 5 as number);
        }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_from_buffer_1700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'from',
        'static from(buffer: ArrayBuffer, byteOffset?: number, length?: number): ArrayBuffer', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_bytesLength_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res: int = 0;
      let Stime = new Date().getTime();
      
        for (let i = 0; i < BASE_COUNT; i++) {
          res = ArrayBuffer.bytesLength('Hello World', 'utf8');
        }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_bytesLength_1900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'bytesLength',
        'static native bytesLength(text: string, encoding: string): int', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_stringify_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let buf: ArrayBuffer = new ArrayBuffer(10);
      let res: string = '';
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = ArrayBuffer.stringify(buf, 'utf8', 0, 5);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_stringify_2000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'stringify',
        'static native stringify(buffer: ArrayBuffer, encoding: string, start: int, end: int): string', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_atomicLoadI32_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let buf: ArrayBuffer = new ArrayBuffer(128);
      let res: long = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = buf.atomicLoadI32(0, 0);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_atomicLoadI32_2100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'atomicLoadI32',
        'public native atomicLoadI32(index: int, byteOffset: int): long', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_atomicStoreI32_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let buf: ArrayBuffer = new ArrayBuffer(128);
      let res: long = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = buf.atomicStoreI32(0, 0, 42);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_atomicStoreI32_2200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'atomicStoreI32',
        'public native atomicStoreI32(index: int, byteOffset: int, value: int): long', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_atomicAddI32_2300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let buf: ArrayBuffer = new ArrayBuffer(128);
      let res: long = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = buf.atomicAddI32(0, 0, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_atomicAddI32_2300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'atomicAddI32',
        'public native atomicAddI32(index: int, byteOffset: int, value: int): long', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_atomicCompareExchangeI32_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let buf: ArrayBuffer = new ArrayBuffer(128);
      let res: long = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = buf.atomicCompareExchangeI32(0, 0, 0, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_atomicCompareExchangeI32_2400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'atomicCompareExchangeI32',
        'public native atomicCompareExchangeI32(index: int, byteOffset: int, expectedValue: int, replacementValue: int): long', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_atomicExchangeI32_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let buf: ArrayBuffer = new ArrayBuffer(128);
      let res: long = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = buf.atomicExchangeI32(0, 0, 99);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_atomicExchangeI32_2500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'atomicExchangeI32',
        'public native atomicExchangeI32(index: int, byteOffset: int, value: int): long', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_atomicSubI32_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let buf: ArrayBuffer = new ArrayBuffer(128);
      let res: long = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = buf.atomicSubI32(0, 0, 1);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_atomicSubI32_2600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'atomicSubI32',
        'public native atomicSubI32(index: int, byteOffset: int, value: int): long', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_atomicAndI32_2700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let buf: ArrayBuffer = new ArrayBuffer(128);
      let res: long = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = buf.atomicAndI32(0, 0, 0xFF);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_atomicAndI32_2700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'atomicAndI32',
        'public native atomicAndI32(index: int, byteOffset: int, value: int): long', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_atomicOrI32_2800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let buf: ArrayBuffer = new ArrayBuffer(128);
      let res: long = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = buf.atomicOrI32(0, 0, 0xFF);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_atomicOrI32_2800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'atomicOrI32',
        'public native atomicOrI32(index: int, byteOffset: int, value: int): long', arkTsAveragedTime);
    })

    it('PerformanceTest_ArrayBuffer_atomicXorI32_2900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let buf: ArrayBuffer = new ArrayBuffer(128);
      let res: long = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = buf.atomicXorI32(0, 0, 0xFF);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      let res1 = res;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_atomicXorI32_2900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'atomicXorI32',
        'public native atomicXorI32(index: int, byteOffset: int, value: int): long', arkTsAveragedTime);
    })

  })
}
