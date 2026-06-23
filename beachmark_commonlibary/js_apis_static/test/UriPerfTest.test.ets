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
import { uri } from '@kit.ArkTS';

export default function UriPerfTest(): void {
  describe('UriTest', () => {
    // 毫秒 * 1000 = 微秒 毫秒 * 1000000 = 纳秒
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
      performance.save('apiUri.txt');
    });

    it('UriPerfTest_string_checkIsAbsolute_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:password@host:8080/directory/file?foo=1&bar=2#fragment");
      let res = testUri.checkIsAbsolute();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.checkIsAbsolute();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_string_checkIsAbsolute_0100: ' + arkTsAveragedTime
        + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'checkIsAbsolute',
        'checkIsAbsolute(): boolean', arkTsAveragedTime);
    });

    it('UriPerfTest_string_normalize_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:password@host:8080/directory/../file?foo=1&bar=2#fragment");
      let res = testUri.normalize();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.normalize();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_string_normalize_0200: ' + arkTsAveragedTime
        + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'normalize',
        'normalize(): URI', arkTsAveragedTime);
    });

    it('UriPerfTest_boolean_equalsTo_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:password@host:8080/directory/file?foo=1&bar=2#fragment");
      let otherUri = new uri.URI("https://username:password@host:8080/directory/file?foo=1&bar=2#fragment");
      let res = testUri.equalsTo(otherUri);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.equalsTo(otherUri);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_boolean_equalsTo_0300: ' + arkTsAveragedTime
        + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'equalsTo',
        'equalsTo(other: URI): boolean', arkTsAveragedTime);
    });

    it('UriPerfTest_Object_getScheme_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:password@host:8080/directory/file?foo=1&bar=2#fragment");
      let res = testUri.scheme;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.scheme;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_Object_getScheme_0400: ' + arkTsAveragedTime
        + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'scheme',
        'scheme: string', arkTsAveragedTime);
    });

    it('UriPerfTest_Object_getHost_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:password@host:8080/directory/file?foo=1&bar=2#fragment");
      let res = testUri.host;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.host;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_Object_getHost_0500: ' + arkTsAveragedTime
        + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'host',
        'host: string', arkTsAveragedTime);
    });

    it('UriPerfTest_string_getPort_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:password@host:8080/directory/file?foo=1&bar=2#fragment");
      let res = testUri.port;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.port;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_string_getPort_0600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'port',
        'port: string', arkTsAveragedTime);
    });

    it('UriPerfTest_string_getPath_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:password@host:8080/directory/file?foo=1&bar=2#fragment");
      let res = testUri.path;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.path;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_string_getPath_0700: ' + arkTsAveragedTime
        + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'path',
        'path: string', arkTsAveragedTime);
    });

    it('UriPerfTest_string_getQuery_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:password@host:8080/directory/file?foo=1&bar=2#fragment");
      let res = testUri.query;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.query;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_string_getQuery_0800: ' + arkTsAveragedTime
        + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'query',
        'query: string', arkTsAveragedTime);
    });

    it('UriPerfTest_string_getFragment_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:password@host:8080/directory/file?foo=1&bar=2#fragment");
      let res = testUri.fragment;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.fragment;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_string_getFragment_0900: ' + arkTsAveragedTime
        + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'fragment',
        'fragment: string', arkTsAveragedTime);
    });

    it('UriPerfTest_string_getAuthority_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:password@host:8080/directory/file?foo=1&bar=2#fragment");
      let res = testUri.authority;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.authority;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_string_getAuthority_1000: ' + arkTsAveragedTime
        + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'authority',
        'authority: string', arkTsAveragedTime);
    });

    it('UriPerfTest_string_getUserInfo_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:password@host:8080/directory/file?foo=1&bar=2#fragment");
      let res = testUri.userInfo;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.userInfo;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_string_getUserInfo_1100: ' + arkTsAveragedTime
        + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'userInfo',
        'userInfo: string', arkTsAveragedTime);
    });

    it('UriPerfTest_string_getSSP_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:password@host:8080/directory/file?foo=1&bar=2#fragment");
      let res = testUri.ssp;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.ssp;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_string_getSSP_1200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'ssp',
        'ssp: string', arkTsAveragedTime);
    });

    it('UriPerfTest_string_getEncodedUserInfo_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:my+name@host:8080/directory/my+file?foo=1&bar=2#fragment");
      let res = testUri.encodedUserInfo;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.encodedUserInfo;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_string_getEncodedUserInfo_1300: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'encodedUserInfo',
        'encodedUserInfo: string', arkTsAveragedTime);
    });

    it('UriPerfTest_string_getEncodedPath_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:my+name@host:8080/directory/my+file?foo=1&bar=2#fragment");
      let res = testUri.encodedPath;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.encodedPath;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_string_getEncodedPath_1400: ' + arkTsAveragedTime
        + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'encodedPath',
        'encodedPath: string', arkTsAveragedTime);
    });

    it('UriPerfTest_string_getEncodedQuery_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:my+name@host:8080/directory/my+file?foo=1&bar=2#fragment");
      let res = testUri.encodedQuery;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.encodedQuery;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_string_getEncodedQuery_1500: ' + arkTsAveragedTime
        + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'encodedQuery',
        'encodedQuery: string', arkTsAveragedTime);
    });

    it('UriPerfTest_string_getEncodedFragment_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:my+name@host:8080/directory/my+file?foo=1&bar=2#fragment");
      let res = testUri.encodedFragment;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.encodedFragment;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_string_getEncodedFragment_1600: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'encodedFragment',
        'encodedFragment: string', arkTsAveragedTime);
    });

    it('UriPerfTest_string_getEncodedAuthority_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:my+name@host:8080/directory/my+file?foo=1&bar=2#fragment");
      let res = testUri.encodedAuthority;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.encodedAuthority;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_string_getEncodedAuthority_1700: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'encodedAuthority',
        'encodedAuthority: string', arkTsAveragedTime);
    });

    it('UriPerfTest_string_getEncodedSSP_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://username:my+name@host:8080/directory/my+file?foo=1&bar=2#fragment");
      let res = testUri.encodedSSP;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.encodedSSP;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriPerfTest arkTsAveragedTime UriPerfTest_string_getEncodedSSP_1800: ' + arkTsAveragedTime
        + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'encodedSSP',
        'encodedSSP: string', arkTsAveragedTime);
    });

    it('UriConstructorPerfTest_Object_Constructor_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let uriString = 'https://username:password@host:8080/directory/file?foo=1&bar=2#fragment';
      let res = new uri.URI(uriString);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new uri.URI(uriString);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriConstructorPerfTest arkTsAveragedTime UriConstructorPerfTest_Object_Constructor_1900: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'constructor',
        'constructor(uri: string): URI', arkTsAveragedTime);
    });

    it('UriConstructorPerfTest_Object_Constructor_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let uriString = 'https://username:password@host:8080';
      let res = new uri.URI(uriString);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new uri.URI(uriString);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriConstructorPerfTest arkTsAveragedTime UriConstructorPerfTest_Object_Constructor_2000: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'constructor',
        'constructor(uri: string): URI', arkTsAveragedTime);
    });

    it('UriToStringPerfTest_string_toString_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI('https://username:password@host:8080/directory/file?ab=pppppp#qwer da');
      let res = testUri.toString();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.toString();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriToStringPerfTest arkTsAveragedTime UriToStringPerfTest_string_toString_2100: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'toString',
        'toString(): string', arkTsAveragedTime);
    });

    it('UriEqualsToPerfTest_boolean_equalsTo_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI('https://username:password@host:8080/directory/file?query=pppppp#qwer=da');
      let otherUri = new uri.URI('https://username:password@host:8080/directory/file?query=pppppp#qwer=da');
      let res = testUri.equalsTo(otherUri);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.equalsTo(otherUri);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriEqualsToPerfTest arkTsAveragedTime UriEqualsToPerfTest_boolean_equalsTo_2200: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'equalsTo',
        'equalsTo(other: URI): boolean', arkTsAveragedTime);
    });

    it('UriCheckIsAbsolutePerfTest_boolean_checkIsAbsolute_2300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      () => {
        let testUri = new uri.URI('https://username:password@www.qwer.com:8080?query=pppppp');
        let res = testUri.checkIsAbsolute();
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
          res = testUri.checkIsAbsolute();
        }
        let Dtime = new Date().getTime() - Stime;
        const res1 = res;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsUriCheckIsAbsolutePerfTest ' +
          'arkTsAveragedTime UriCheckIsAbsolutePerfTest_boolean_checkIsAbsolute_2300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'checkIsAbsolute',
          'checkIsAbsolute(): boolean', arkTsAveragedTime);
      });

    it('UriCheckIsAbsolutePerfTest_boolean_checkIsAbsolute_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      () => {
        let testUri = new uri.URI('xxx.com/suppliers.htm');
        let res = testUri.checkIsAbsolute();
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
          res = testUri.checkIsAbsolute();
        }
        let Dtime = new Date().getTime() - Stime;
        const res1 = res;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsUriCheckIsAbsolutePerfTest arkTsAveragedTime ' +
          'UriCheckIsAbsolutePerfTest_boolean_checkIsAbsolute_2400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'checkIsAbsolute',
          'checkIsAbsolute(): boolean', arkTsAveragedTime);
      });

    it('UriNormalizePerfTest_Object_normalize_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI('https://username:password@www.qwer.com:8080/path/path1/../path2/./path3?query=pppppp');
      let res = testUri.normalize();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.normalize();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriNormalizePerfTest arkTsAveragedTime UriNormalizePerfTest_Object_normalize_2500: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'normalize',
        'normalize(): URI', arkTsAveragedTime);
    });

    it('UriNormalizePerfTest_Object_normalize_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI('http://www.test.com/../../patch/path1/../path2/path3/./path4/../');
      let res = testUri.normalize();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.normalize();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriNormalizePerfTest arkTsAveragedTime UriNormalizePerfTest_Object_normalize_2600: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'normalize',
        'normalize(): URI', arkTsAveragedTime);
    });

    it('UriCheckRelativePerfTest_boolean_checkRelative_2700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      () => {
        let testUri = new uri.URI("https://username:password@www.qwer.com:8080?query=p");
        let res = testUri.checkRelative();
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
          res = testUri.checkRelative();
        }
        let Dtime = new Date().getTime() - Stime;
        const res1 = res;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsUriCheckRelativePerfTest arkTsAveragedTime ' +
          'UriCheckRelativePerfTest_boolean_checkRelative_2700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'checkRelative',
          'checkRelative(): boolean', arkTsAveragedTime);
      });

    it('UriCheckRelativePerfTest_boolean_checkRelative_2800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      () => {
        let testUri = new uri.URI("/images/pic.jpg");
        let res = testUri.checkRelative();
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
          res = testUri.checkRelative();
        }
        let Dtime = new Date().getTime() - Stime;
        const res1 = res;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsUriCheckRelativePerfTest arkTsAveragedTime ' +
          'UriCheckRelativePerfTest_boolean_checkRelative_2800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'checkRelative',
          'checkRelative(): boolean', arkTsAveragedTime);
      });

    it('UriCheckOpaquePerfTest_boolean_checkOpaque_2900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("http://www.test.com/images/pic.jpg");
      let res = testUri.checkOpaque();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.checkOpaque();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriCheckOpaquePerfTest arkTsAveragedTime UriCheckOpaquePerfTest_boolean_checkOpaque_2900: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'checkOpaque',
        'checkOpaque(): boolean', arkTsAveragedTime);
    });

    it('UriCheckOpaquePerfTest_boolean_checkOpaque_3000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("mailto:user@example.com");
      let res = testUri.checkOpaque();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.checkOpaque();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriCheckOpaquePerfTest arkTsAveragedTime UriCheckOpaquePerfTest_boolean_checkOpaque_3000: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'checkOpaque',
        'checkOpaque(): boolean', arkTsAveragedTime);
    });

    it('UriCheckHierarchicalPerfTest_boolean_checkHierarchical_3100', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI("http://www.test.com/images/pic.jpg");
      let res = testUri.checkHierarchical();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.checkHierarchical();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriCheckHierarchicalPerfTest arkTsAveragedTime ' +
        'UriCheckHierarchicalPerfTest_boolean_checkHierarchical_3100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'checkHierarchical',
        'checkHierarchical(): boolean', arkTsAveragedTime);
    });

    it('UriCheckHierarchicalPerfTest_boolean_checkHierarchical_3200', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI("mailto:user@example.com");
      let res = testUri.checkHierarchical();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.checkHierarchical();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriCheckHierarchicalPerfTest arkTsAveragedTime ' +
        'UriCheckHierarchicalPerfTest_boolean_checkHierarchical_3200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'checkHierarchical',
        'checkHierarchical(): boolean', arkTsAveragedTime);
    });

    it('UriGetQueryValuePerfTest_string_getQueryValue_3300', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI("https://www.com?param1=value1&param2=value2");
      let res = testUri.getQueryValue("param1");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.getQueryValue("param1");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriGetQueryValuePerfTest arkTsAveragedTime ' +
        'UriGetQueryValuePerfTest_string_getQueryValue_3300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'getQueryValue',
        'getQueryValue(key: string): string | null', arkTsAveragedTime);
    });

    it('UriGetQueryValuePerfTest_string_getQueryValue_3400', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI('https://www.zyy.ss?sa%3D=po%7E');
      let res = testUri.getQueryValue('sa=');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.getQueryValue('sa=');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriGetQueryValuePerfTest arkTsAveragedTime ' +
        'UriGetQueryValuePerfTest_string_getQueryValue_3400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'getQueryValue',
        'getQueryValue(key: string): string | null', arkTsAveragedTime);
    });

    it('UriGetQueryValuePerfTest_string_getQueryValue_3500', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI('https://www.zyy.ss?sa%3D=po%7E');
      let res = testUri.getQueryValue('abc');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.getQueryValue('abc');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriGetQueryValuePerfTest arkTsAveragedTime ' +
        'UriGetQueryValuePerfTest_string_getQueryValue_3500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'getQueryValue',
        'getQueryValue(key: string): string | null', arkTsAveragedTime);
    });

    it('UriAddQueryValuePerfTest_Object_addQueryValue_3600', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI("https://www.test.com");
      let res = testUri.addQueryValue("param1", "hello world");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.addQueryValue("param1", "hello world");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriAddQueryValuePerfTest arkTsAveragedTime ' +
        'UriAddQueryValuePerfTest_Object_addQueryValue_3600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'addQueryValue',
        'addQueryValue(key: string, value: string): URI', arkTsAveragedTime);
    });

    it('UriAddSegmentPerfTest_Object_addSegment_3700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("http://www.test.com");
      let res = testUri.addSegment("my image.jpg");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.addSegment("my image.jpg");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriAddSegmentPerfTest arkTsAveragedTime UriAddSegmentPerfTest_Object_addSegment_3700: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'addSegment',
        'addSegment(pathSegment: string): URI', arkTsAveragedTime);
    });

    it('UriAddEncodedSegmentPerfTest_Object_addEncodedSegment_3800', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI("http://www.test.com");
      let res = testUri.addEncodedSegment("my%20image.jpg");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.addEncodedSegment("my%20image.jpg");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriAddEncodedSegmentPerfTest arkTsAveragedTime ' +
        'UriAddEncodedSegmentPerfTest_Object_addEncodedSegment_3800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'addEncodedSegment',
        'addEncodedSegment(pathSegment: string): URI', arkTsAveragedTime);
    });

    it('UriGetQueryNamesPerfTest_stringArray_getQueryNames_3900', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI("https://www.test.com?param1=value1&param2=value2");
      let res = testUri.getQueryNames();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.getQueryNames();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriGetQueryNamesPerfTest arkTsAveragedTime ' +
        'UriGetQueryNamesPerfTest_stringArray_getQueryNames_3900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'getQueryNames',
        'getQueryNames(): string[]', arkTsAveragedTime);
    });

    it('UriGetQueryValuesPerfTest_stringArray_getQueryValues_4000', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI("https://www.test.com/search?query=name&query=my");
      let res = testUri.getQueryValues("query");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.getQueryValues("query");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriGetQueryValuesPerfTest arkTsAveragedTime ' +
        'UriGetQueryValuesPerfTest_stringArray_getQueryValues_4000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'getQueryValues',
        'getQueryValues(key: string): string[]', arkTsAveragedTime);
    });

    it('UriGetQueryValuesPerfTest_stringArray_getQueryValues_4100', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI("https://www.test.com/search?query=name&query=my");
      let res = testUri.getQueryValues("abc");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.getQueryValues("abc");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriGetQueryValuesPerfTest arkTsAveragedTime ' +
        'UriGetQueryValuesPerfTest_stringArray_getQueryValues_4100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'getQueryValues',
        'getQueryValues(key: string): string[]', arkTsAveragedTime);
    });

    it('UriGetBooleanQueryValuePerfTest_boolean_getBooleanQueryValue_4200', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI("https://www.test.com/search?active=true");
      let res = testUri.getBooleanQueryValue("active", false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.getBooleanQueryValue("active", false);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriGetBooleanQueryValuePerfTest arkTsAveragedTime ' +
        'UriGetBooleanQueryValuePerfTest_boolean_getBooleanQueryValue_4200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'getBooleanQueryValue',
        'getBooleanQueryValue(key: string, defaultValue: boolean): boolean', arkTsAveragedTime);
    });

    it('UriGetBooleanQueryValuePerfTest_boolean_getBooleanQueryValue_4300', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI("https://www.test.com/search");
      let res = testUri.getBooleanQueryValue("active", false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.getBooleanQueryValue("active", false);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriGetBooleanQueryValuePerfTest arkTsAveragedTime ' +
        'UriGetBooleanQueryValuePerfTest_boolean_getBooleanQueryValue_4300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'getBooleanQueryValue',
        'getBooleanQueryValue(key: string, defaultValue: boolean): boolean', arkTsAveragedTime);
    });

    it('UriGetBooleanQueryValuePerfTest_boolean_getBooleanQueryValue_4400', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI("https://www.test.com/search?active=aa&active=false");
      let res = testUri.getBooleanQueryValue("active", false);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.getBooleanQueryValue("active", false);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriGetBooleanQueryValuePerfTest arkTsAveragedTime ' +
        'UriGetBooleanQueryValuePerfTest_boolean_getBooleanQueryValue_4400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'getBooleanQueryValue',
        'getBooleanQueryValue(key: string, defaultValue: boolean): boolean', arkTsAveragedTime);
    });

    it('UriGetBooleanQueryValuePerfTest_boolean_getBooleanQueryValue_4500', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI("https://www.test.com/search?active=0");
      let res = testUri.getBooleanQueryValue("active", true);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.getBooleanQueryValue("active", true);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriGetBooleanQueryValuePerfTest arkTsAveragedTime ' +
        'UriGetBooleanQueryValuePerfTest_boolean_getBooleanQueryValue_4500: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'getBooleanQueryValue',
        'getBooleanQueryValue(key: string, defaultValue: boolean): boolean', arkTsAveragedTime);
    });

    it('UriGetBooleanQueryValuePerfTest_boolean_getBooleanQueryValue_4600', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI("https://www.test.com/search");
      let res = testUri.getBooleanQueryValue("active", true);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.getBooleanQueryValue("active", true);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriGetBooleanQueryValuePerfTest arkTsAveragedTime ' +
        'UriGetBooleanQueryValuePerfTest_boolean_getBooleanQueryValue_4600: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'getBooleanQueryValue',
        'getBooleanQueryValue(key: string, defaultValue: boolean): boolean', arkTsAveragedTime);
    });

    it('UriClearQueryPerfTest_Object_clearQuery_4700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let testUri = new uri.URI("https://www.test.com?param1=value1");
      let res = testUri.clearQuery();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.clearQuery();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriClearQueryPerfTest arkTsAveragedTime UriClearQueryPerfTest_Object_clearQuery_4700: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'clearQuery',
        'clearQuery(): URI', arkTsAveragedTime);
    });

    it('UriGetLastSegmentPerfTest_string_getLastSegment_4800', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI("content://com.test.provider/files/image.jpg");
      let res = testUri.getLastSegment();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.getLastSegment();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriGetLastSegmentPerfTest arkTsAveragedTime ' +
        'UriGetLastSegmentPerfTest_string_getLastSegment_4800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'getLastSegment',
        'getLastSegment(): string', arkTsAveragedTime);
    });

    it('UriGetSegmentPerfTest_stringArray_getSegment_4900', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI("http://www.test.com/path/to/image.jpg");
      let res = testUri.getSegment();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.getSegment();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriGetSegmentPerfTest arkTsAveragedTime UriGetSegmentPerfTest_stringArray_getSegment_4900: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'getSegment',
        'getSegment(): string[]', arkTsAveragedTime);
    });

    it('UriCreateFromPartsPerfTest_Object_createFromParts_5000', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let res = uri.URI.createFromParts("mailto", "no body", "top");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = uri.URI.createFromParts("mailto", "no body", "top");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriCreateFromPartsPerfTest arkTsAveragedTime ' +
        'UriCreateFromPartsPerfTest_Object_createFromParts_5000: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'createFromParts',
        'createFromParts(scheme: string, ssp: string, fragment: string): URI', arkTsAveragedTime);
    });

    it('UriEqualsDeprecatedPerfTest_boolean_equalsTo_5100', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let testUri = new uri.URI('https://username:password@host:8080/directory/file?query=pppppp#qwer=da');
      let otherUri = new uri.URI('https://username:password@host:8080/directory/file?query=pppppp#qwer=da');
      let res = testUri.equalsTo(otherUri);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = testUri.equalsTo(otherUri);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsUriEqualsDeprecatedPerfTest arkTsAveragedTime ' +
        'UriEqualsDeprecatedPerfTest_boolean_equalsTo_5100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.uri', 'uri', 'equalsTo',
        'equalsTo(other: URI): boolean', arkTsAveragedTime);
    });
  });
}