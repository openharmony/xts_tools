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
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';
declare class ArkTools {
  static forceFullGC(): void;
}

export default function IntlPerfTest01(): void {
  describe('IntlPerfTest01', () => {
    const BASE_COUNT = 1000;
    beforeEach(() => {
      ArkTools.forceFullGC();
    })
    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('PerformanceTest_Intl_NumberFormat_format_long_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let formatter: Intl.NumberFormat = new Intl.NumberFormat('zh-CN');
      let res: string = '';
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = formatter.format(1234567890);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.NumberFormat format_long: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.NumberFormat', 'format',
        'format(value: long): string', arkTsAveragedTime);
      expect(res1.replace(/[^0-9]/g, '') === '1234567890').assertTrue();
      done();
    })

    it('PerformanceTest_Intl_NumberFormat_format_bigint_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let formatter: Intl.NumberFormat = new Intl.NumberFormat('zh-CN');
      let res: string = '';
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = formatter.format(12345678901234567890n);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.NumberFormat format_bigint: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.NumberFormat', 'format',
        'format(value: bigint): string', arkTsAveragedTime);
      expect(res1.replace(/[^0-9]/g, '') === '12345678901234567890').assertTrue();
      done();
    })

    it('PerformanceTest_Intl_NumberFormat_format_number_bigint_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let formatter: Intl.NumberFormat = new Intl.NumberFormat('zh-CN');
      let res: string = '';
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = formatter.format(1234567.89);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.NumberFormat format_number_bigint: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.NumberFormat', 'format',
        'format(value: number | bigint): string', arkTsAveragedTime);
      expect(res1.replace(/[^0-9]/g, '') === '123456789').assertTrue();
      done();
    })

    it('PerformanceTest_Intl_NumberFormat_formatToParts_bigint_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let formatter: Intl.NumberFormat = new Intl.NumberFormat('zh-CN');
      let res = formatter.formatToParts(0);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = formatter.formatToParts(1234567890n);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.NumberFormat formatToParts_bigint: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.NumberFormat', 'formatToParts',
        'formatToParts(value: bigint): NumberFormatPart[]', arkTsAveragedTime);
      let resText: string = '';
      for (let i = 0; i < res1.length; i++) {
        resText += res1[i].value;
      }
      expect(resText.replace(/[^0-9]/g, '') === '1234567890').assertTrue();
      done();
    })

    it('PerformanceTest_Intl_PluralRules_select_number_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let pluralRules: Intl.PluralRules = new Intl.PluralRules('zh-CN');
      let res: string = 'other';
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pluralRules.select(2.5);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.PluralRules select_number: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.PluralRules', 'select',
        'select(value: number): LDMLPluralRule', arkTsAveragedTime);
      expect(res1 === 'other').assertTrue();
      done();
    })

    it('PerformanceTest_Intl_Locale_language_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let locale: Intl.Locale = new Intl.Locale('zh-CN');
      let res: string | undefined = '';
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = locale.language;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.Locale language: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.Locale', 'language',
        'language: string | undefined', arkTsAveragedTime);
      expect(res1 === 'zh').assertTrue();
      done();
    })

    it('PerformanceTest_Intl_Locale_region_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let locale: Intl.Locale = new Intl.Locale('zh-CN');
      let res: string | undefined = '';
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = locale.region;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.Locale region: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.Locale', 'region',
        'region: string | undefined', arkTsAveragedTime);
      expect(res1 === 'CN').assertTrue();
      done();
    })

    it('PerformanceTest_Intl_Locale_script_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let locale: Intl.Locale = new Intl.Locale('zh-Hans-CN');
      let res: string | undefined = '';
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = locale.script;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.Locale script: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.Locale', 'script',
        'script: string | undefined', arkTsAveragedTime);
      expect(res1 === 'Hans').assertTrue();
      done();
    })

    it('PerformanceTest_Intl_Locale_calendar_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let locale: Intl.Locale = new Intl.Locale('zh-CN-u-ca-gregory');
      let res: string | undefined = '';
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = locale.calendar;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.Locale calendar: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.Locale', 'calendar',
        'calendar: string | undefined', arkTsAveragedTime);
      expect(res1 === 'gregory').assertTrue();
      done();
    })

    it('PerformanceTest_Intl_Locale_numberingSystem_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let locale: Intl.Locale = new Intl.Locale('zh-CN-u-nu-hanidec');
      let res: string | undefined = '';
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = locale.numberingSystem;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.Locale numberingSystem: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.Locale', 'numberingSystem',
        'numberingSystem: string | undefined', arkTsAveragedTime);
      expect(res1 === 'hanidec').assertTrue();
      done();
    })

    it('PerformanceTest_Intl_Locale_hourCycle_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let locale: Intl.Locale = new Intl.Locale('zh-CN-u-hc-h23');
      let res: string | undefined = '';
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = locale.hourCycle;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.Locale hourCycle: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.Locale', 'hourCycle',
        'hourCycle: string | undefined', arkTsAveragedTime);
      expect(res1 === 'h23').assertTrue();
      done();
    })

    it('PerformanceTest_Intl_Locale_numeric_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let locale: Intl.Locale = new Intl.Locale('zh-CN-u-kn-true');
      let res: boolean | undefined = false;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = locale.numeric;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.Locale numeric: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.Locale', 'numeric',
        'numeric: boolean | undefined', arkTsAveragedTime);
      expect(res1 === true).assertTrue();
      done();
    })

    it('PerformanceTest_Intl_Locale_collation_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let locale: Intl.Locale = new Intl.Locale('zh-CN-u-co-pinyin');
      let res: string | undefined = '';
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = locale.collation;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.Locale collation: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.Locale', 'collation',
        'collation: string | undefined', arkTsAveragedTime);
      expect(res1 === 'pinyin').assertTrue();
      done();
    })

    it('PerformanceTest_Intl_Locale_caseFirst_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let locale: Intl.Locale = new Intl.Locale('zh-CN-u-kf-upper');
      let res: string | undefined = '';
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = locale.caseFirst;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.Locale caseFirst: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.Locale', 'caseFirst',
        'caseFirst: string | undefined', arkTsAveragedTime);
      expect(res1 === 'upper').assertTrue();
      done();
    })

    it('PerformanceTest_Intl_Locale_baseName_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let locale: Intl.Locale = new Intl.Locale('zh-Hans-CN');
      let res: string | undefined = '';
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = locale.baseName;
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.Locale baseName: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.Locale', 'baseName',
        'baseName: string | undefined', arkTsAveragedTime);
      expect(res1 === 'zh-Hans-CN').assertTrue();
      done();
    })

    it('PerformanceTest_Intl_NumberFormat_formatRange_bigint_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let formatter: Intl.NumberFormat = new Intl.NumberFormat('zh-CN');
      let res: string = '';
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = formatter.formatRange(100000, 999999);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.NumberFormat formatRange bigint: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.NumberFormat', 'formatRange',
        'formatRange(start: number, end: number): string', arkTsAveragedTime);
      let normalizedRange: string = res1.replace(/[^0-9]/g, '');
      expect(normalizedRange.indexOf('100000') >= 0 && normalizedRange.indexOf('999999') >= 0).assertTrue();
      done();
    })

    it('PerformanceTest_Intl_NumberFormat_formatRangeToParts_bigint_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let formatter: Intl.NumberFormat = new Intl.NumberFormat('zh-CN');
      let res = formatter.formatRangeToParts(0, 1);
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = formatter.formatRangeToParts(100000, 999999);
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.NumberFormat formatRangeToParts bigint: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.NumberFormat', 'formatRangeToParts',
        'formatRangeToParts(start: number, end: number): NumberRangeFormatPart[]', arkTsAveragedTime);
      let rangeText: string = '';
      for (let i = 0; i < res1.length; i++) {
        rangeText += res1[i].value;
      }
      let normalizedRangeText: string = rangeText.replace(/[^0-9]/g, '');
      expect(normalizedRangeText.indexOf('100000') >= 0 && normalizedRangeText.indexOf('999999') >= 0).assertTrue();
      done();
    })

    it('PerformanceTest_Intl_DisplayNames_of_region_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let displayNames: Intl.DisplayNames = new Intl.DisplayNames('zh-CN', { type: 'region' });
      let res: string | undefined;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = displayNames.of('US');
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.DisplayNames of region: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.DisplayNames', 'of',
        'of(code: string): string | undefined (type: region)', arkTsAveragedTime);
      expect(res1 !== undefined && res1.length > 0 && res1 !== 'US').assertTrue();
      done();
    })

    it('PerformanceTest_Intl_DisplayNames_of_script_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, (done: Function) => {
      let displayNames: Intl.DisplayNames = new Intl.DisplayNames('zh-CN', { type: 'script' });
      let res: string | undefined;
      let Stime: number = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = displayNames.of('Hans');
      }
      let Dtime: number = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      const arkTsAveragedTime: number = Dtime / BASE_COUNT;
      console.info('arkTsPerformanceTest Intl.DisplayNames of script: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.core', 'Intl.DisplayNames', 'of',
        'of(code: string): string | undefined (type: script)', arkTsAveragedTime);
      expect(res1 !== undefined && res1.length > 0 && res1 !== 'Hans').assertTrue();
      done();
    })
  })
}