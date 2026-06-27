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

mport {
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
} from "@ohos/hypium";
import { systemDateTime } from '@kit.BasicServicesKit';
import performance from './Performance.util';
declare class ArkTools {
  static forceFullGC(): void;
}

export default function BuiltinArrayPerfTest16(): void {
  describe('BuiltinArrayPerfTest16', () => {
    const BASE_COUNT = 1000;
    beforeEach(() => {
      ArkTools.forceFullGC();
    })
    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_BuiltinArrayTest_50000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [1, 2, 3, 4, 5];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduce(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_50000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduce',
          'reduce(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 5).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_50100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: string[] = ['a', 'b', 'c', 'd', 'e'];
        let result: string = 'a';
        const reducer = (acc: string, val: string): string => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduce(reducer, 'a');
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_50100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduce',
          'reduce(callbackFn: (previousValue: string, currentValue: string) => string, initialValue: string): string', arkTsAveragedTime);
        expect(res1 === 'e').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_50200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [1.1, 2.2, 3.3, 4.4, 5.5];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduce(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_50200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduce',
          'reduce(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 5.5).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_50300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [100, 200, 300, 400, 500];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduce(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_50300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduce',
          'reduce(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 500).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_50400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [1000, 2000, 3000, 4000, 5000];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduce(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_50400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduce',
          'reduce(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 5000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_50500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [10, 20, 30, 40, 50];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduce(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_50500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduce',
          'reduce(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 50).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_50600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: boolean[] = [true, false, true, false, true];
        let result: boolean = false;
        const reducer = (acc: boolean, val: boolean): boolean => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduce(reducer, false);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_50600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduce',
          'reduce(callbackFn: (previousValue: boolean, currentValue: boolean) => boolean, initialValue: boolean): boolean', arkTsAveragedTime);
        expect(res1 === true).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_50700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [1, 2, 3, 4, 5];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduce(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_50700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduce',
          'reduce(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 5).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_50800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduce(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_50800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduce',
          'reduce(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 5.55).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_50900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [1.1, 2.2, 3.3, 4.4, 5.5];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduce(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_50900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduce',
          'reduce(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 5.5).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_51000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [100, 200, 300, 400, 500];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduce(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_51000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduce',
          'reduce(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 500).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_51100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [1000, 2000, 3000, 4000, 5000];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduce(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_51100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduce',
          'reduce(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 5000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_51200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [10, 20, 30, 40, 50];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduce(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_51200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduce',
          'reduce(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 50).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_51300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [1, 2, 3, 4, 5];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduceRight(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_51300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduceRight',
          'reduceRight(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 1).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_51400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: string[] = ['a', 'b', 'c', 'd', 'e'];
        let result: string = 'a';
        const reducer = (acc: string, val: string): string => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduceRight(reducer, 'a');
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_51400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduceRight',
          'reduceRight(callbackFn: (previousValue: string, currentValue: string) => string, initialValue: string): string', arkTsAveragedTime);
        expect(res1 === 'a').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_51500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [1.1, 2.2, 3.3, 4.4, 5.5];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduceRight(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_51500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduceRight',
          'reduceRight(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 1.1).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_51600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [100, 200, 300, 400, 500];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduceRight(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_51600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduceRight',
          'reduceRight(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 100).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_51700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [1000, 2000, 3000, 4000, 5000];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduceRight(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_51700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduceRight',
          'reduceRight(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 1000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_51800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [10, 20, 30, 40, 50];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduceRight(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_51800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduceRight',
          'reduceRight(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 10).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_51900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: boolean[] = [true, false, true, false, true];
        let result: boolean = false;
        const reducer = (acc: boolean, val: boolean): boolean => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduceRight(reducer, false);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_51900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduceRight',
          'reduceRight(callbackFn: (previousValue: boolean, currentValue: boolean) => boolean, initialValue: boolean): boolean', arkTsAveragedTime);
        expect(res1 === true).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_52000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [1, 2, 3, 4, 5];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduceRight(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_52000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduceRight',
          'reduceRight(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 1).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_52100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: string[] = ['a', 'b', 'c', 'd', 'e'];
        let result: string = 'a';
        const reducer = (acc: string, val: string): string => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduceRight(reducer, 'a');
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_52100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduceRight',
          'reduceRight(callbackFn: (previousValue: string, currentValue: string) => string, initialValue: string): string', arkTsAveragedTime);
        expect(res1 === 'a').assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_52200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduceRight(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_52200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduceRight',
          'reduceRight(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 1.11).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_52300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [1.1, 2.2, 3.3, 4.4, 5.5];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduceRight(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_52300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduceRight',
          'reduceRight(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 1.1).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_52400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [100, 200, 300, 400, 500];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduceRight(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_52400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduceRight',
          'reduceRight(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 100).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_52500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [1000, 2000, 3000, 4000, 5000];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduceRight(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_52500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduceRight',
          'reduceRight(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 1000).assertTrue();
        done();
      })

    it('PerformanceTest_BuiltinArrayTest_52600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let array: number[] = [10, 20, 30, 40, 50];
        let result: number = 0;
        const reducer = (acc: number, val: number): number => {
          return val;
        };
        let Stime: number = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          result = array.reduceRight(reducer, 0);
        }
        let Dtime: number = systemDateTime.getTime(true) - Stime;
        let res1 = result;
        const arkTsAveragedTime: number = Dtime / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_BuiltinArrayTest_52600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Array', 'reduceRight',
          'reduceRight(callbackFn: (previousValue: number, currentValue: number) => number, initialValue: number): number', arkTsAveragedTime);
        expect(res1 === 10).assertTrue();
        done();
      })
  })
}