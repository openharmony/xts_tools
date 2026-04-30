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

export default function InteropTransferHelperPerfTest(): void {
  describe('InteropTransferHelperPerfTest', () => {
    const BASE_COUNT = 50000;
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

    // ================================================================
    // 1. ArrayBuffer
    // ================================================================
    it('PerformanceTest_InteropTransferHelper_TransferArrayBufferToStatic_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new ArrayBuffer(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferArrayBufferToStatic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferArrayBufferToStatic', 'transferArrayBufferToStatic(dynamicObject: Any): Object', arkTsAveragedTime);
    })

    it('PerformanceTest_InteropTransferHelper_TransferArrayBufferToDynamic_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new ArrayBuffer(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferArrayBufferToDynamic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferArrayBufferToDynamic', 'transferArrayBufferToDynamic(staticObject: Object): Any', arkTsAveragedTime);
    })

    // ================================================================
    // 2. Int8Array
    // ================================================================
    it('PerformanceTest_InteropTransferHelper_TransferInt8ArrayToStatic_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Int8Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferInt8ArrayToStatic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferInt8ArrayToStatic', 'transferInt8ArrayToStatic(dynamicObject: Any): Object', arkTsAveragedTime);
    })

    it('PerformanceTest_InteropTransferHelper_TransferInt8ArrayToDynamic_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Int8Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferInt8ArrayToDynamic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferInt8ArrayToDynamic', 'transferInt8ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
    })

    // ================================================================
    // 3. Uint8Array
    // ================================================================
    it('PerformanceTest_InteropTransferHelper_TransferUint8ArrayToStatic_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Uint8Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferUint8ArrayToStatic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferUint8ArrayToStatic', 'transferUint8ArrayToStatic(dynamicObject: Any): Object', arkTsAveragedTime);
    })

    it('PerformanceTest_InteropTransferHelper_TransferUint8ArrayToDynamic_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Uint8Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferUint8ArrayToDynamic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferUint8ArrayToDynamic', 'transferUint8ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
    })

    // ================================================================
    // 4. Uint8ClampedArray
    // ================================================================
    it('PerformanceTest_InteropTransferHelper_TransferUint8ClampedArrayToStatic_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Uint8ClampedArray(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferUint8ClampedArrayToStatic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferUint8ClampedArrayToStatic', 'transferUint8ClampedArrayToStatic(dynamicObject: Any): Object', arkTsAveragedTime);
    })

    it('PerformanceTest_InteropTransferHelper_TransferUint8ClampedArrayToDynamic_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Uint8ClampedArray(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferUint8ClampedArrayToDynamic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferUint8ClampedArrayToDynamic', 'transferUint8ClampedArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
    })

    // ================================================================
    // 5. Int16Array
    // ================================================================
    it('PerformanceTest_InteropTransferHelper_TransferInt16ArrayToStatic_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Int16Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferInt16ArrayToStatic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferInt16ArrayToStatic', 'transferInt16ArrayToStatic(dynamicObject: Any): Object', arkTsAveragedTime);
    })

    it('PerformanceTest_InteropTransferHelper_TransferInt16ArrayToDynamic_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Int16Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferInt16ArrayToDynamic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferInt16ArrayToDynamic', 'transferInt16ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
    })

    // ================================================================
    // 6. Uint16Array
    // ================================================================
    it('PerformanceTest_InteropTransferHelper_TransferUint16ArrayToStatic_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Uint16Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferUint16ArrayToStatic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferUint16ArrayToStatic', 'transferUint16ArrayToStatic(dynamicObject: Any): Object', arkTsAveragedTime);
    })

    it('PerformanceTest_InteropTransferHelper_TransferUint16ArrayToDynamic_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Uint16Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferUint16ArrayToDynamic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferUint16ArrayToDynamic', 'transferUint16ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
    })

    // ================================================================
    // 7. Int32Array
    // ================================================================
    it('PerformanceTest_InteropTransferHelper_TransferInt32ArrayToStatic_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Int32Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferInt32ArrayToStatic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferInt32ArrayToStatic', 'transferInt32ArrayToStatic(dynamicObject: Any): Object', arkTsAveragedTime);
    })

    it('PerformanceTest_InteropTransferHelper_TransferInt32ArrayToDynamic_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Int32Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferInt32ArrayToDynamic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferInt32ArrayToDynamic', 'transferInt32ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
    })

    // ================================================================
    // 8. Uint32Array
    // ================================================================
    it('PerformanceTest_InteropTransferHelper_TransferUint32ArrayToStatic_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Uint32Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferUint32ArrayToStatic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferUint32ArrayToStatic', 'transferUint32ArrayToStatic(dynamicObject: Any): Object', arkTsAveragedTime);
    })

    it('PerformanceTest_InteropTransferHelper_TransferUint32ArrayToDynamic_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Uint32Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferUint32ArrayToDynamic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferUint32ArrayToDynamic', 'transferUint32ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
    })

    // ================================================================
    // 9. Float32Array
    // ================================================================
    it('PerformanceTest_InteropTransferHelper_TransferFloat32ArrayToStatic_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Float32Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferFloat32ArrayToStatic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferFloat32ArrayToStatic', 'transferFloat32ArrayToStatic(dynamicObject: Any): Object', arkTsAveragedTime);
    })

    it('PerformanceTest_InteropTransferHelper_TransferFloat32ArrayToDynamic_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Float32Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferFloat32ArrayToDynamic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferFloat32ArrayToDynamic', 'transferFloat32ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
    })

    // ================================================================
    // 10. Float64Array
    // ================================================================
    it('PerformanceTest_InteropTransferHelper_TransferFloat64ArrayToStatic_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Float64Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferFloat64ArrayToStatic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferFloat64ArrayToStatic', 'transferFloat64ArrayToStatic(dynamicObject: Any): Object', arkTsAveragedTime);
    })

    it('PerformanceTest_InteropTransferHelper_TransferFloat64ArrayToDynamic_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new Float64Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferFloat64ArrayToDynamic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferFloat64ArrayToDynamic', 'transferFloat64ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
    })

    // ================================================================
    // 11. BigInt64Array
    // ================================================================
    it('PerformanceTest_InteropTransferHelper_TransferBigInt64ArrayToStatic_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new BigInt64Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferBigInt64ArrayToStatic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferBigInt64ArrayToStatic', 'transferBigInt64ArrayToStatic(dynamicObject: Any): Object', arkTsAveragedTime);
    })

    it('PerformanceTest_InteropTransferHelper_TransferBigInt64ArrayToDynamic_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new BigInt64Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferBigInt64ArrayToDynamic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferBigInt64ArrayToDynamic', 'transferBigInt64ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
    })

    // ================================================================
    // 12. BigUint64Array
    // ================================================================
    it('PerformanceTest_InteropTransferHelper_TransferBigUint64ArrayToStatic_2300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new BigUint64Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferBigUint64ArrayToStatic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferBigUint64ArrayToStatic', 'transferBigUint64ArrayToStatic(dynamicObject: Any): Object', arkTsAveragedTime);
    })

    it('PerformanceTest_InteropTransferHelper_TransferBigUint64ArrayToDynamic_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new BigUint64Array(8) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferBigUint64ArrayToDynamic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferBigUint64ArrayToDynamic', 'transferBigUint64ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
    })

    // ================================================================
    // 13. DataView
    // ================================================================
    it('PerformanceTest_InteropTransferHelper_TransferDataViewToStatic_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new DataView(new ArrayBuffer(8)) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferDataViewToStatic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferDataViewToStatic', 'transferDataViewToStatic(dynamicObject: Any): Object', arkTsAveragedTime);
    })

    it('PerformanceTest_InteropTransferHelper_TransferDataViewToDynamic_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mockData = new DataView(new ArrayBuffer(8)) as Object;
      let res: Object = new Object();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {res = InteropTransferHelper.transferDataViewToDynamic(mockData) as Object;}
      let arkTsAveragedTime = (new Date().getTime() - Stime).toDouble() * UNIT_TIME / BASE_COUNT;
      let _res = res;
      performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferDataViewToDynamic', 'transferDataViewToDynamic(staticObject: Object): Any', arkTsAveragedTime);
    })

  })
}