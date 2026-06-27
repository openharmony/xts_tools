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
  beforeEach,
  afterAll,
  expect
} from "@ohos/hypium";
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function InteropTransferHelperPerfTest(): void {
  describe('InteropTransferHelperPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_InteropTransferHelper_TransferArrayBufferToDynamic_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let mockData: ArrayBuffer = new ArrayBuffer(8);
        let res: ArrayBuffer | null = null;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = mockData.slice(0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: ArrayBuffer | null = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InteropTransferHelper_TransferArrayBufferToDynamic_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferArrayBufferToDynamic',
          'transferArrayBufferToDynamic(staticObject: Object): Any', arkTsAveragedTime);
        expect(res != null && res.byteLength === 8).assertTrue();
        done();
      })

    it('PerformanceTest_InteropTransferHelper_TransferInt8ArrayToDynamic_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let mockData: Int8Array = new Int8Array(8);
        let res: Int8Array | null = null;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = mockData.slice();
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: Int8Array | null = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InteropTransferHelper_TransferInt8ArrayToDynamic_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferInt8ArrayToDynamic',
          'transferInt8ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
        expect(res != null && res.length === 8).assertTrue();
        done();
      })

    it('PerformanceTest_InteropTransferHelper_TransferUint8ArrayToDynamic_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let mockData: Uint8Array = new Uint8Array(8);
        let res: Uint8Array | null = null;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = mockData.slice();
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: Uint8Array | null = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InteropTransferHelper_TransferUint8ArrayToDynamic_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferUint8ArrayToDynamic',
          'transferUint8ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
        expect(res != null && res.length === 8).assertTrue();
        done();
      })

    it('PerformanceTest_InteropTransferHelper_TransferUint8ClampedArrayToDynamic_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let mockData: Uint8ClampedArray = new Uint8ClampedArray(8);
        let res: Uint8ClampedArray | null = null;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = mockData.slice();
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: Uint8ClampedArray | null = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InteropTransferHelper_TransferUint8ClampedArrayToDynamic_0800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferUint8ClampedArrayToDynamic',
          'transferUint8ClampedArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
        expect(res != null && res.length === 8).assertTrue();
        done();
      })

    it('PerformanceTest_InteropTransferHelper_TransferInt16ArrayToDynamic_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let mockData: Int16Array = new Int16Array(8);
        let res: Int16Array | null = null;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = mockData.slice();
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: Int16Array | null = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InteropTransferHelper_TransferInt16ArrayToDynamic_1000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferInt16ArrayToDynamic',
          'transferInt16ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
        expect(res != null && res.length === 8).assertTrue();
        done();
      })

    it('PerformanceTest_InteropTransferHelper_TransferUint16ArrayToDynamic_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let mockData: Uint16Array = new Uint16Array(8);
        let res: Uint16Array | null = null;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = mockData.slice();
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: Uint16Array | null = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InteropTransferHelper_TransferUint16ArrayToDynamic_1200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferUint16ArrayToDynamic',
          'transferUint16ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
        expect(res != null && res.length === 8).assertTrue();
        done();
      })

    it('PerformanceTest_InteropTransferHelper_TransferInt32ArrayToDynamic_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let mockData: Int32Array = new Int32Array(8);
        let res: Int32Array | null = null;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = mockData.slice();
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: Int32Array | null = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InteropTransferHelper_TransferInt32ArrayToDynamic_1400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferInt32ArrayToDynamic',
          'transferInt32ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
        expect(res != null && res.length === 8).assertTrue();
        done();
      })

    it('PerformanceTest_InteropTransferHelper_TransferUint32ArrayToDynamic_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let mockData: Uint32Array = new Uint32Array(8);
        let res: Uint32Array | null = null;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = mockData.slice();
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: Uint32Array | null = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InteropTransferHelper_TransferUint32ArrayToDynamic_1600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferUint32ArrayToDynamic',
          'transferUint32ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
        expect(res != null && res.length === 8).assertTrue();
        done();
      })

    it('PerformanceTest_InteropTransferHelper_TransferFloat32ArrayToDynamic_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let mockData: Float32Array = new Float32Array(8);
        let res: Float32Array | null = null;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = mockData.slice();
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: Float32Array | null = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InteropTransferHelper_TransferFloat32ArrayToDynamic_1800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferFloat32ArrayToDynamic',
          'transferFloat32ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
        expect(res != null && res.length === 8).assertTrue();
        done();
      })

    it('PerformanceTest_InteropTransferHelper_TransferFloat64ArrayToDynamic_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let mockData: Float64Array = new Float64Array(8);
        let res: Float64Array | null = null;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = mockData.slice();
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: Float64Array | null = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InteropTransferHelper_TransferFloat64ArrayToDynamic_2000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferFloat64ArrayToDynamic',
          'transferFloat64ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
        expect(res != null && res.length === 8).assertTrue();
        done();
      })

    it('PerformanceTest_InteropTransferHelper_TransferBigInt64ArrayToDynamic_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let mockData: BigInt64Array = new BigInt64Array(8);
        let res: BigInt64Array | null = null;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = mockData.slice();
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: BigInt64Array | null = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InteropTransferHelper_TransferBigInt64ArrayToDynamic_2200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferBigInt64ArrayToDynamic',
          'transferBigInt64ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
        expect(res != null && res.length === 8).assertTrue();
        done();
      })

    it('PerformanceTest_InteropTransferHelper_TransferBigUint64ArrayToDynamic_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let mockData: BigUint64Array = new BigUint64Array(8);
        let res: BigUint64Array | null = null;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = mockData.slice();
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: BigUint64Array | null = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InteropTransferHelper_TransferBigUint64ArrayToDynamic_2400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferBigUint64ArrayToDynamic',
          'transferBigUint64ArrayToDynamic(staticObject: Object): Any', arkTsAveragedTime);
        expect(res != null && res.length === 8).assertTrue();
        done();
      })

    it('PerformanceTest_InteropTransferHelper_TransferDataViewToDynamic_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let mockData: DataView = new DataView(new ArrayBuffer(8));
        let res: DataView | null = null;
        let Stime: number = systemDateTime.getTime(true);
        for (let i: number = 0; i < BASE_COUNT; i++) {
          res = new DataView(mockData.buffer.slice(mockData.byteOffset, mockData.byteOffset + mockData.byteLength));
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1: DataView | null = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_InteropTransferHelper_TransferDataViewToDynamic_2600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.interop.js', 'InteropTransferHelper', 'transferDataViewToDynamic',
          'transferDataViewToDynamic(staticObject: Object): Any', arkTsAveragedTime);
        expect(res != null && res.byteLength === 8).assertTrue();
        done();
      })

  })
}