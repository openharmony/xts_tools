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

it('PerformanceTest_ArrayBuffer_toString_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buf: collections.ArrayBuffer = new collections.ArrayBuffer(1024);
        let res: string = '';
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = buf.toString();
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_toString_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'toString',
          'toString(): String', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      })

    it('PerformanceTest_ArrayBuffer_slice_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buf: collections.ArrayBuffer = new collections.ArrayBuffer(100);
        let res: collections.ArrayBuffer = new collections.ArrayBuffer(0);
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = buf.slice(0, 50);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_slice_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'slice',
          'slice(begin: int, end?: int): ArrayBuffer', arkTsAveragedTime);
        expect(res1.byteLength >= 0).assertTrue();
        done();
      })

    it('PerformanceTest_ArrayBuffer_getByteLength_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buf: collections.ArrayBuffer = new collections.ArrayBuffer(1024);
        let res: number = 0;
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = buf.byteLength;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_getByteLength_0800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'getByteLength',
          'getByteLength(): int', arkTsAveragedTime);
        expect(res1 >= 0).assertTrue();
        done();
      })

    it('PerformanceTest_ArrayBuffer_byteLength_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let buf: collections.ArrayBuffer = new collections.ArrayBuffer(1024);
        let res: number = 0;
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = buf.byteLength;
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ArrayBuffer_byteLength_0900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'ArrayBuffer', 'byteLength',
          'get byteLength(): int', arkTsAveragedTime);
        expect(res1 >= 0).assertTrue();
        done();
      })

    })
}