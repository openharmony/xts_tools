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
import { url } from '@kit.ArkTS';

export default function URLPerfTest(): void {
  describe('URLPerfTest', () => {
    const BASE_COUNT = 50000;
    const BASE_COUNT_BIG = 500000;
    const UNIT_TIME = 1000000;

    beforeEach(() => {
      let ret = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret);
      let ret1 = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret1);
    });

    afterAll(() => {
      performance.save('apiURLParams.txt');
    });

    it('URLPerfTest_string_get_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?foo=1&bar=2&baz=3');
      let res = params.get('foo');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.get('bar');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_get_0100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLParams', 'get',
        'get(name: string): string | null', arkTsAveragedTime);
    });

    it('URLPerfTest_string_has_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?foo=1&bar=2&baz=3');
      let res = params.has('foo');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.has('bar');
      }
      let Dtime = new Date().getTime() - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLTest arkTsAveragedTime URLPerfTest_string_has_0200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLParams', 'has',
        'has(name: string): boolean', arkTsAveragedTime);
    });

    it('URLPerfTest_void_append_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?fod=1&bard=2');
      params.append('fod', '3');
      let res = params;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        params.append('fod', '3');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_void_append_0300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLParams', 'append',
        'append(name: string, value: string): void', arkTsAveragedTime);
    });

    it('URLPerfTest_void_delete_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?fod=1&bard=2');
      params.delete('fod');
      let res = params;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        let p = new url.URLParams('?fod=1&bard=2');
        p.delete('fod');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_void_delete_0400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLParams', 'delete',
        'delete(name: string): void', arkTsAveragedTime);
    });

    it('URLPerfTest_string[]_getAll_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?fod=1&bard=2');
      params.append('fod', '3');
      let res = params.getAll('fod');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.getAll('fod');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string[]_getAll_0500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLParams', 'getAll',
        'getAll(name: string): string[]', arkTsAveragedTime);
    });

    it('URLPerfTest_void_forEach_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?fod=1&bard=2');
      let res: void = params.forEach((value: string, key: string, searchParams: url.URLParams) => {
        // 空回调函数，仅用于性能测试
      });
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        params.forEach((value: string, key: string, searchParams: url.URLParams) => {
          // 空回调函数，仅用于性能测试
        });
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_void_forEach_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLParams', 'forEach',
        'forEach(callbackFn: (value: string, key: string, searchParams: URLParams) => void, thisArg?: Object): void', arkTsAveragedTime);
    });

    it('URLPerfTest_void_forEach_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('key1=value1&key2=value2');
      let urlCB: url.UrlCbFn = (value: string, key: string, searchParams: url.URLParams) => {
        // 空回调函数，仅用于性能测试
      };
      let res: void = params.forEach(urlCB);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        params.forEach(urlCB);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_void_forEach_0700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLParams', 'forEach',
        'forEach(callbackFn: UrlCbFn): void', arkTsAveragedTime);
    });

    it('URLPerfTest_string_get_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('name=Jonathan&age=18');
      let res = params.get('name');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.get('name');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_get_0800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLParams', 'get',
        'get(name: string): string | undefined', arkTsAveragedTime);
    });

    it('URLPerfTest_boolean_has_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?fod=1&bard=2');
      let res = params.has('bard');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.has('bard');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_boolean_has_0900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLParams', 'has',
        'has(name: string): boolean', arkTsAveragedTime);
    });

    it('URLPerfTest_void_set_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?fod=1&bard=2');
      params.set('baz', '3');
      let res = params;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        let p = new url.URLParams('?fod=1&bard=2');
        p.set('baz', '3');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_void_set_1000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLParams', 'set',
        'set(name: string, value: string): void', arkTsAveragedTime);
    });

    it('URLPerfTest_void_sort_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams("c=3&a=9&b=4&d=2");
      params.sort();
      let res = params;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        let p = new url.URLParams("c=3&a=9&b=4&d=2");
        p.sort();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_void_sort_1100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLParams', 'sort',
        'sort(): void', arkTsAveragedTime);
    });

    it('URLPerfTest_IterableIterator_keys_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams("key1=value1&key2=value2");
      let res = params.keys();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.keys();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_IterableIterator_keys_1200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLParams', 'keys',
        'keys(): IterableIterator<string>', arkTsAveragedTime);
    });

    it('URLPerfTest_IterableIterator_values_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams("key1=value1&key2=value2");
      let res = params.values();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.values();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_IterableIterator_values_1300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLParams', 'values',
        'values(): IterableIterator<string>', arkTsAveragedTime);
    });

    it('URLPerfTest_IterableIterator_Symbol.iterator_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('fod=bay&edg=bap');
      let res = params.entries();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.entries();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_IterableIterator_Symbol.iterator_1400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLParams', '[Symbol.iterator]',
        '[Symbol.iterator](): IterableIterator<[string, string]>', arkTsAveragedTime);
    });

    it('URLPerfTest_IterableIterator_$_iterator_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('fod=bay&edg=bap');
      let res = params.$_iterator();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.$_iterator();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_IterableIterator_$_iterator_1500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLParams', '$_iterator',
        '$_iterator(): IterableIterator<[string, string]>', arkTsAveragedTime);
    });

    it('URLPerfTest_string_toString_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?fod=1&bard=2');
      params.append('fod', '3');
      let res = params.toString();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.toString();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_toString_1600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLParams', 'toString',
        'toString(): string', arkTsAveragedTime);
    });

    it('URLPerfTest_void_UrlCbFn_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('key1=value1&key2=value2');
      let urlCb: url.UrlCbFn = (value: string, key: string, searchParams: url.URLParams) => {
        // 空回调函数，仅用于性能测试
      };
      let res: void = params.forEach(urlCb);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        params.forEach(urlCb);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_void_UrlCbFn_1700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'UrlCbFn', 'UrlCbFn',
        'type UrlCbFn = (value: string, key: string, searchParams: URLParams) => void', arkTsAveragedTime);
    });

    it('URLPerfTest_string_hash_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let that = url.URL.parseURL('http://username:password@host:8080/directory/file?foo=1&bar=2#fragment');
      let res = that.hash;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = that.hash;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_hash_1800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'hash',
        'hash: string', arkTsAveragedTime);
    });

    it('URLPerfTest_string_host_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let that = url.URL.parseURL('http://username:password@host:8080/directory/file?foo=1&bar=2#fragment');
      let res = that.host;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = that.host;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_host_1900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'host',
        'host: string', arkTsAveragedTime);
    });

    it('URLPerfTest_string_hostname_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let that = url.URL.parseURL('http://username:password@host:8080/directory/file?foo=1&bar=2#fragment');
      let res = that.hostname;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = that.hostname;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_hostname_2000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'hostname',
        'hostname: string', arkTsAveragedTime);
    });

    it('URLPerfTest_string_href_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let that = url.URL.parseURL('http://username:password@host:8080/directory/file?foo=1&bar=2#fragment');
      let res = that.href;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = that.href;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_href_2100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'href',
        'href: string', arkTsAveragedTime);
    });

    it('URLPerfTest_string_origin_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let that = url.URL.parseURL('http://username:password@host:8080/directory/file?foo=1&bar=2#fragment');
      let res = that.origin;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = that.origin;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_origin_2200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'origin',
        'origin: string', arkTsAveragedTime);
    });

    it('URLPerfTest_string_password_2300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let that = url.URL.parseURL('http://username:password@host:8080/directory/file?foo=1&bar=2#fragment');
      let res = that.password;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = that.password;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_password_2300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'password',
        'password: string', arkTsAveragedTime);
    });

    it('URLPerfTest_string_pathname_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let that = url.URL.parseURL('http://username:password@host:8080/directory/file?foo=1&bar=2#fragment');
      let res = that.pathname;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = that.pathname;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_pathname_2400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'pathname',
        'pathname: string', arkTsAveragedTime);
    });

    it('URLPerfTest_string_port_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let that = url.URL.parseURL('http://username:password@host:8080/directory/file?foo=1&bar=2#fragment');
      let res = that.port;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = that.port;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_port_2500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'port',
        'port: string', arkTsAveragedTime);
    });

    it('URLPerfTest_string_protocol_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let that = url.URL.parseURL('http://username:password@host:8080/directory/file?foo=1&bar=2#fragment');
      let res = that.protocol;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = that.protocol;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_protocol_2600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'protocol',
        'protocol: string', arkTsAveragedTime);
    });

    it('URLPerfTest_string_search_2700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let that = url.URL.parseURL('http://username:password@host:8080/directory/file?foo=1&bar=2#fragment');
      let res = that.search;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = that.search;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_search_2700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'search',
        'search: string', arkTsAveragedTime);
    });

    it('URLPerfTest_URLParams_params_2800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let that = url.URL.parseURL('http://username:password@host:8080/directory/file?foo=1&bar=2#fragment');
      let res = that.params;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = that.params;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_URLParams_params_2800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'params',
        'params: URLParams', arkTsAveragedTime);
    });

    it('URLPerfTest_string_username_2900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let that = url.URL.parseURL('http://username:password@host:8080/directory/file?foo=1&bar=2#fragment');
      let res = that.username;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = that.username;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_username_2900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'username',
        'username: string', arkTsAveragedTime);
    });

    it('URLPerfTest_URL_constructor_3000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mm = 'https://username:password@host:8080';
      let res = url.URL.parseURL(mm);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = url.URL.parseURL(mm);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_URL_constructor_3000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'parseURL',
        'static parseURL(href: string): URL', arkTsAveragedTime);
    });

    it('URLPerfTest_URL_constructor_with_base_3100',TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      const fullUrlStr = "https://host:8080/path/path1";
      let res = url.URL.parseURL(fullUrlStr);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = url.URL.parseURL(fullUrlStr);
      }
      let Dtime = new Date().getTime() - Stime;
      let arkTsAveragedTime = (Dtime * UNIT_TIME) / BASE_COUNT;
      console.info(`平均耗时: ${arkTsAveragedTime}`);
      performance.apiWithClassAndKeywordTxt(
        'std.url', 'URL', 'parseURL',
        'static parseURL(href: string): URL',
        arkTsAveragedTime
      );
    });

    it('URLPerfTest_URL_constructor_3200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = new url.URL();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new url.URL();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_URL_constructor_3200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'constructor',
        'constructor()', arkTsAveragedTime);
    });
    it('URLPerfTest_URL_parseURL_3300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let mm = 'https://username:password@host:8080/test/test1/test3';
      let res = url.URL.parseURL(mm);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = url.URL.parseURL(mm);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_URL_parseURL_3300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'parseURL',
        'static parseURL(url: string, base?: string | URL): URL', arkTsAveragedTime);
    });

    it('URLPerfTest_URL_parseURL_with_base_3400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let baseUrl = 'https://www.example.com/test/test1';
      let res = url.URL.parseURL('path2/path3', baseUrl);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = url.URL.parseURL('path2/path3', baseUrl);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_URL_parseURL_with_base_3400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'parseURL',
        'static parseURL(url: string, base?: string | URL): URL', arkTsAveragedTime);
    });

    it('URLPerfTest_string_toString_3500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let urlObject = url.URL.parseURL('https://username:password@host:8080/directory/file?query=pppppp#qwer=da');
      let res = urlObject.toString();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = urlObject.toString();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_toString_3500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'toString',
        'toString(): string', arkTsAveragedTime);
    });

    it('URLPerfTest_string_toJSON_3600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let urlObject = url.URL.parseURL('https://username:password@host:8080/directory/file?query=pppppp#qwer=da');
      let res = urlObject.toJSON();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = urlObject.toJSON();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_toJSON_3600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'toJSON',
        'toJSON(): string', arkTsAveragedTime);
    });

    it('URLPerfTest_URLSearchParams_constructor_3700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      const init: Record<string, string> = {
        'user1': 'abc1',
        'query2': 'first2',
        'query3': 'second3'
      };
      let Stime = new Date().getTime();
      let res = new url.URLParams(init);
      const start = Date.now();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new url.URLParams(init);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      const duration = Date.now() - start;
      const avgTime = (duration * UNIT_TIME) / BASE_COUNT;

      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_URLSearchParams_constructor_3700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URL', 'toJSON',
        'toJSON(): string', arkTsAveragedTime);

    });

    it('URLPerfTest_URLSearchParams_constructor_3800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let init: Record<string, string> = { "fod": '1', "bard": '2' };
      let res = new url.URLParams(init);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new url.URLParams(init);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_URLSearchParams_constructor_3800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'constructor',
        'constructor(init?: string[][] | Record<string, string> | string | URLSearchParams)', arkTsAveragedTime);
    });

    it('URLPerfTest_URLSearchParams_constructor_3900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let init = '?fod=1&bard=2';
      let res = new url.URLParams(init);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new url.URLParams(init);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_URLSearchParams_constructor_3900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'constructor',
        'constructor(init?: string[][] | Record<string, string> | string | URLSearchParams)', arkTsAveragedTime);
    });

    it('URLPerfTest_URLSearchParams_constructor_4000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let init = 'fod=1&bard=2';
      let res = new url.URLParams(init);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new url.URLParams(init);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_URLSearchParams_constructor_4000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'constructor',
        'constructor(init?: string[][] | Record<string, string> | string | URLSearchParams)', arkTsAveragedTime);
    });

    it('URLPerfTest_void_append_4100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?fod=1&bard=2');
      params.append('fod', '3');
      let res = params;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        let p = new url.URLParams('?fod=1&bard=2');
        p.append('fod', '3');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_void_append_4100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'append',
        'append(name: string, value: string): void', arkTsAveragedTime);
    });

    it('URLPerfTest_void_delete_4200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?fod=1&bard=2');
      params.delete('fod');
      let res = params;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        let p = new url.URLParams('?fod=1&bard=2');
        p.delete('fod');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_void_delete_4200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'delete',
        'delete(name: string): void', arkTsAveragedTime);
    });

    it('URLPerfTest_string[]_getAll_4300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?fod=1&bard=2');
      params.append('fod', '3');
      let res = params.getAll('fod');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.getAll('fod');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string[]_getAll_4300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'getAll',
        'getAll(name: string): string[]', arkTsAveragedTime);
    });

    it('URLPerfTest_IterableIterator_entries_4400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams("key1=value1&key2=value2");
      let res = params.entries();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.entries();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_IterableIterator_entries_4400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'entries',
        'entries(): IterableIterator<[string, string]>', arkTsAveragedTime);
    });

    it('URLPerfTest_void_forEach_4500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      const params = new url.URLParams('?fod=1&bard=2');
      let res = params.forEach((value: string, key: string, searchParams: url.URLParams) => {});
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.forEach((value: string, key: string, searchParams: url.URLParams) => {});
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_void_forEach_4500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'forEach',
        'forEach(callbackFn: (value: string, key: string, searchParams: URLSearchParams) => void, thisArg?: Object): void', arkTsAveragedTime);
    });

    it('URLPerfTest_string_get_4600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('name=Jonathan&age=18');
      let res = params.get('name');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.get('name');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_get_4600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'get',
        'get(name: string): string | null', arkTsAveragedTime);
    });

    it('URLPerfTest_string_get_4700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('name=Jonathan&age=18');
      let res = params.get('abc');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.get('abc');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_get_4700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'get',
        'get(name: string): string | null', arkTsAveragedTime);
    });

    it('URLPerfTest_boolean_has_4800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?fod=1&bard=2');
      let res = params.has('bard');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.has('bard');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_boolean_has_4800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'has',
        'has(name: string): boolean', arkTsAveragedTime);
    });

    it('URLPerfTest_boolean_has_4900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?fod=1&bard=2');
      let res = params.has('abc');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.has('abc');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_boolean_has_4900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'has',
        'has(name: string): boolean', arkTsAveragedTime);
    });

    it('URLPerfTest_void_set_5000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?fod=1&bard=2');
      params.set('baz', '3');
      let res = params;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        let p = new url.URLParams('?fod=1&bard=2');
        p.set('baz', '3');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_void_set_5000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'set',
        'set(name: string, value: string): void', arkTsAveragedTime);
    });

    it('URLPerfTest_void_set_5100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?fod=1&bard=2');
      params.set('fod', '5');
      let res = params;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        let p = new url.URLParams('?fod=1&bard=2');
        p.set('fod', '5');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_void_set_5100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'set',
        'set(name: string, value: string): void', arkTsAveragedTime);
    });

    it('URLPerfTest_void_set_5200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?fod=1&bard=2');
      params.append('fod', '3');
      params.set('fod', '5');
      let res = params;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        let p = new url.URLParams('?fod=1&bard=2');
        p.append('fod', '3');
        p.set('fod', '5');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_void_set_5200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'set',
        'set(name: string, value: string): void', arkTsAveragedTime);
    });

    it('URLPerfTest_void_sort_5300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams("c=3&a=9&b=4&d=2");
      params.sort();
      let res = params;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        let p = new url.URLParams("c=3&a=9&b=4&d=2");
        p.sort();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_void_sort_5300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'sort',
        'sort(): void', arkTsAveragedTime);
    });

    it('URLPerfTest_IterableIterator_keys_5400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams("key1=value1&key2=value2");
      let res = params.keys();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.keys();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_IterableIterator_keys_5400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'keys',
        'keys(): IterableIterator<string>', arkTsAveragedTime);
    });

    it('URLPerfTest_IterableIterator_values_5500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams("key1=value1&key2=value2");
      let res = params.values();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.values();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_IterableIterator_values_5500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'values',
        'values(): IterableIterator<string>', arkTsAveragedTime);
    });

    // 修复：Symbol.iterator 测试 - 使用 entries() 方法替代直接访问 [Symbol.iterator]
    it('URLPerfTest_IterableIterator_Symbol.iterator_5600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let paramsObject = new url.URLParams('fod=bay&edg=bap');
      // 修复：使用 entries() 方法代替 [Symbol.iterator]()
      let res = paramsObject.entries();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = paramsObject.entries();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_IterableIterator_Symbol.iterator_5600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'entries',
        'entries(): IterableIterator<[string, string]>', arkTsAveragedTime);
    });

    it('URLPerfTest_string_toString_5700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let params = new url.URLParams('?fod=1&bard=2');
      params.append('fod', '3');
      let res = params.toString();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = params.toString();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsURLPerfTest arkTsAveragedTime URLPerfTest_string_toString_5700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.url', 'URLSearchParams', 'toString',
        'toString(): string', arkTsAveragedTime);
    });
  });
}