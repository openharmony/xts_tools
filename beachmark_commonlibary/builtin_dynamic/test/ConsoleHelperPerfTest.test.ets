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
  expect,
  TestType,
  Size,
  Level,
  beforeAll,
  afterAll,
  beforeEach,
  afterEach
} from "@ohos/hypium";
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';
import { uri, util, url, xml, buffer } from '@kit.ArkTS';

declare class ArkTools {
  static forceFullGC(): void;
}

class TestObject {
  name: string = "test";
  value: number = 123;
}

class Point2D {
  x: number = 1;
  y: number = 2;
}

class Point3D {
  x: number = 1;
  y: number = 2;
  z: number = 3;
}

export default function ConsoleHelperPerfTest(): void {
  describe('ConsoleHelperPerfTest', () => {
    const BASE_COUNT = 1000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_ConsoleHelper_Format_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("%%");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (%% escape)', arkTsAveragedTime);
      expect(res1 === '%%').assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("%s","hello");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (%s)', arkTsAveragedTime);
      expect(res1 === 'hello').assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("%d",123);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (%d)', arkTsAveragedTime);
      expect(res1 === '123').assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("%i",456);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (%i)', arkTsAveragedTime);
      expect(res1 === '456').assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("%f",3.14159);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (%f)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== '').assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("User: %s, Age: %d","张三", 25);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (mixed)', arkTsAveragedTime);
      expect(res1 === 'User: 张三, Age: 25').assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("Score: %d, Name: %s, Rate: %f",90, "李四", 4.5);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_0700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (three args)', arkTsAveragedTime);
      expect(res1 !== undefined && res1.indexOf('Score') >= 0 && res1.indexOf('李四') >= 0).assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let obj: TestObject = new TestObject();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("%j",obj);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_0800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (%j)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== '').assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let obj: Point2D = new Point2D();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("%o",obj);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_0900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (%o)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== '').assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let obj: Point3D = new Point3D();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("%O",obj);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_1000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (%O)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== '').assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("Hello %s","World", "Extra");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_1100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (extra args)', arkTsAveragedTime);
      expect(res1 === 'Hello World Extra').assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("%c","char");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_1200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (%c)', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("","test");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_1300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (empty format)', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let bigInt: BigInt = 123456789n;
      let bigIntStr: string = bigInt.toString();
      let Stime = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = util.format("%s", bigIntStr);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_1400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (BigInt)', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let nullObj: Object | null = null;
      let Stime = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        res = util.format("%s", nullObj);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_1500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (null)', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let undefObj: Object | undefined = undefined;
      let Stime = systemDateTime.getTime(true);
      for (let i: number = 0; i < BASE_COUNT; i++) {
        try {
          res = util.format("%s", undefObj);
        } catch (e) {
          res = '';
        }
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_1600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (undefined)', arkTsAveragedTime);
      expect(res1 !== undefined).assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("%s%d%s","name", 100, "end");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_1700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (consecutive flags %s%d%s)', arkTsAveragedTime);
      expect(res1 === 'name100end').assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("Hello\nWorld","test");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_1800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (escape char)', arkTsAveragedTime);
      expect(res1 === 'Hello\nWorld').assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("% s","space");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_1900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (space flag % s)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== '').assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("100%%%","test");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_2000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (consecutive %%%)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== '').assertTrue();
      done();
    })

    it('PerformanceTest_ConsoleHelper_Format_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let res: string = '';
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format("value: %x",255);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_ConsoleHelper_Format_2100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'ConsoleHelper', 'format',
        'function format(format: string, ...args: Object[]): string (invalid flag %x)', arkTsAveragedTime);
      expect(res1 !== undefined && res1 !== '').assertTrue();
      done();
    })

  })
}