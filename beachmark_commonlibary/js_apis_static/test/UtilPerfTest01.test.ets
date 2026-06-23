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
import { util } from '@kit.ArkTS';
interface Person {
  name: string;
  age: number;
}
class ChildLRUCache extends util.LRUCache<int, int> {
  constructor() {
    super();
  }
  createDefault(key: int): int {
    return key;
  }
}
class Temperature implements util.ScopeComparable<Temperature> {
  private readonly _temp: int;

  constructor(value: int) {
    this._temp = value;
  }

  compareTo(value: Temperature): boolean {
    return this._temp >= value.getTemp();
  }

  getTemp(): int {
    return this._temp;
  }

  toString(): string {
    return this._temp.toString();
  }
}

export default function UtilPerfTest01(): void {
  describe('UtilPerfTest01', () => {
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
      performance.save('apiUtil.txt');
    });

    it('UtilPerfTest01_string_format_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let name = 'John';
      let age = 20;
      let res = util.format('My name is %s and I am %s years old', name, age);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.format('My name is %s and I am %s years old', name, age);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_string_format_0100: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'format',
        'format(format: string, ...args: Object[]): string', arkTsAveragedTime);
    });

    it('UtilPerfTest01_string_errnoToString_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let errnum = -1;
      let res = util.errnoToString(errnum);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.errnoToString(errnum);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_string_errnoToString_0200: ' + arkTsAveragedTime +
        'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'errnoToString',
        'errnoToString(errno: number): string', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Function_callbackWrapper_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let fn = async (): Promise<string> =>{
        return 'hello world';
      }
      let res = util.callbackWrapper(fn);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.callbackWrapper(fn);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Function_callbackWrapper_0300: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'callbackWrapper',
        'callbackWrapper(original: Function): (err: Object, value: Object) => void', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Function_promisify_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let func: Function = (val: Object, callback: (err: Error | null, ...value: Object[]) => void) => {
        callback(null, val);
      };
      let res = util.promisify(func);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.promisify(func);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Function_promisify_0400: ' + arkTsAveragedTime +
        'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'promisify',
        'promisify(original: Function): PromisifiedFunc', arkTsAveragedTime);
    });

    it('UtilPerfTest01_string_generateRandomUUID_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = util.generateRandomUUID(true);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.generateRandomUUID(true);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_string_generateRandomUUID_0500: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'generateRandomUUID',
        'generateRandomUUID(entropyCache?: boolean): string', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Uint8Array_generateRandomBinaryUUID_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      () => {
      let res = util.generateRandomBinaryUUID(true);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.generateRandomBinaryUUID(true);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Uint8Array_generateRandomBinaryUUID_0600: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'generateRandomBinaryUUID',
        'generateRandomBinaryUUID(entropyCache?: boolean): Uint8Array', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Uint8Array_parseUUID_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = util.parseUUID("84bdf796-66cc-4655-9b89-d6218d100f9c");

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.parseUUID("84bdf796-66cc-4655-9b89-d6218d100f9c");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Uint8Array_parseUUID_0700: ' + arkTsAveragedTime
        + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'parseUUID',
        'parseUUID(uuid: string): Uint8Array', arkTsAveragedTime);
    });

    it('UtilPerfTest01_number_getHash_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let obj: Person = { name: 'Jack', age: 20 };
      let res = util.getHash(obj);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.getHash(obj);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_number_getHash_0800: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'getHash',
        'getHash(object: object): number', arkTsAveragedTime);
    });

    it('UtilPerfTest01_PromisifiedFunc_promisify_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let func: Function = (val: Object, callback: (err: Error | null, ...value: Object[]) => void) => {
        callback(null, val);
      };
      let promisifiedFunc: util.PromisifiedFunc = util.promisify(func);
      let res = promisifiedFunc;

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.promisify(func);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_PromisifiedFunc_promisify_0900: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'PromisifiedFunc',
        'type PromisifiedFunc = (...args: FixedArray<Any>) => Promise<Any>', arkTsAveragedTime);
    });

    it('UtilPerfTest01_TextDecoderOptions_fatal_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let options: util.TextDecoderOptions = {
        fatal: true,
        ignoreBOM: false
      };
      let res = options;

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        options = {
          fatal: true,
          ignoreBOM: false
        };
        res = options;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_TextDecoderOptions_fatal_1000: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'TextDecoderOptions',
        'interface TextDecoderOptions { fatal?: boolean; ignoreBOM?: boolean; }', arkTsAveragedTime);
    });

    it('UtilPerfTest01_DecodeToStringOptions_stream_true_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      () => {
      let options: util.DecodeToStringOptions = {
        stream: true
      };
      let res: util.DecodeToStringOptions = options;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = options;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_DecodeToStringOptions_stream_true_1100: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'DecodeToStringOptions',
        'interface DecodeToStringOptions { stream?: boolean; }', arkTsAveragedTime);
    });

    it('UtilPerfTest01_TextDecoder_constructor_utf8_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let decoder = new util.TextDecoder();
      let res = decoder;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new util.TextDecoder();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_TextDecoder_constructor_utf8_1200: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'TextDecoder',
        'class TextDecoder', arkTsAveragedTime);
    });

    it('UtilPerfTest01_TextDecoder_constructor_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let textDecoder = new util.TextDecoder();
      let retStr = textDecoder.encoding;
      let res: string = retStr;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = retStr;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_TextDecoder_constructor_1300: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'TextDecoder',
        'constructor()', arkTsAveragedTime);
    });

    it('UtilPerfTest01_string_decodeToString_normal_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let textDecoderOptions: util.TextDecoderOptions = {
        fatal: false,
        ignoreBOM: true
      };
      let decodeToStringOptions: util.DecodeToStringOptions = {
        stream: false
      };
      let textDecoder = util.TextDecoder.create('utf-8', textDecoderOptions);
      let uint8 = new Uint8Array([0xEF, 0xBB, 0xBF, 0x61, 0x62, 0x63]);
      let res = textDecoder.decodeToString(uint8, decodeToStringOptions);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = textDecoder.decodeToString(uint8, decodeToStringOptions);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_string_decodeToString_normal_1400: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'decodeToString',
        'decodeToString(input: Uint8Array, options?: DecodeToStringOptions): string', arkTsAveragedTime);
    });

    it('UtilPerfTest01_string_decodeToString_withNull_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let textDecoderOptions: util.TextDecoderOptions = {
        fatal: false,
        ignoreBOM: true
      };
      let decodeToStringOptions: util.DecodeToStringOptions = {
        stream: false
      };
      let textDecoder = util.TextDecoder.create('utf-8', textDecoderOptions);
      let uint8 = new Uint8Array([97, 98, 0, 99]);
      let res = textDecoder.decodeToString(uint8, decodeToStringOptions);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = textDecoder.decodeToString(uint8, decodeToStringOptions);
      }
      let Dtime = new Date().getTime() - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_string_decodeToString_withNull_1500: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'decodeToString',
        'decodeToString(input: Uint8Array, options?: DecodeToStringOptions): string', arkTsAveragedTime);
    });

    it('UtilPerfTest01_EncodeIntoUint8ArrayInfo_read_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let encodeInfo: util.EncodeIntoUint8ArrayInfo = {
        read: 5,
        written: 8
      };
      let res: number = 0;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = encodeInfo.read;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_EncodeIntoUint8ArrayInfo_read_1600: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'EncodeIntoUint8ArrayInfo',
        'interface EncodeIntoUint8ArrayInfo { readonly read: int; readonly written: int; }', arkTsAveragedTime);
    });

    it('UtilPerfTest01_TextEncoder_constructor_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = new util.TextEncoder('utf-8');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new util.TextEncoder('utf-8');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_TextEncoder_constructor_1700: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'TextEncoder',
        'constructor(encoding?: string)', arkTsAveragedTime);
    });

    it('UtilPerfTest01_TextEncoder_create_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = util.TextEncoder.create('utf-8');
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.TextEncoder.create('utf-8');
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_TextEncoder_create_1800: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'TextEncoder.create',
        'static create(encoding?: string): TextEncoder', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Uint8Array_encodeInto_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let textEncoder = new util.TextEncoder();
      let res = textEncoder.encodeInto("\uD800¥¥");

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = textEncoder.encodeInto("\uD800¥¥");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Uint8Array_encodeInto_1900: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'encodeInto',
        'encodeInto(input?: string): Uint8Array', arkTsAveragedTime);
    });

    it('UtilPerfTest01_EncodeIntoUint8ArrayInfo_encodeIntoUint8Array_2000', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let textEncoder = new util.TextEncoder();
      let buffer = new ArrayBuffer(4);
      let uint8 = new Uint8Array(buffer);
      let res = textEncoder.encodeIntoUint8Array('abcd', uint8);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = textEncoder.encodeIntoUint8Array('abcd', uint8);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_EncodeIntoUint8ArrayInfo_encodeIntoUint8Array_2000: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'encodeIntoUint8Array',
        'encodeIntoUint8Array(input: string, dest: Uint8Array): EncodeIntoUint8ArrayInfo', arkTsAveragedTime);
    });

    it('UtilPerfTest01_RationalNumber_constructor_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = util.RationalNumber.parseRationalNumber(3, 4);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.RationalNumber.parseRationalNumber(3, 4);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_RationalNumber_constructor_2100: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'RationalNumber',
        'class RationalNumber', arkTsAveragedTime);
    });

    it('UtilPerfTest01_RationalNumber_constructor_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let rationalNumber = new util.RationalNumber();
      let res = util.RationalNumber.parseRationalNumber(1, 2);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = rationalNumber;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_RationalNumber_constructor_2200: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'RationalNumber',
        'constructor()', arkTsAveragedTime);
    });

    it('UtilPerfTest01_RationalNumber_parseRationalNumber_2300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      () => {
      let res = util.RationalNumber.parseRationalNumber(1, 2);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.RationalNumber.parseRationalNumber(1, 2);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_RationalNumber_parseRationalNumber_2300: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'RationalNumber.parseRationalNumber',
        'static parseRationalNumber(numerator: long, denominator: long): RationalNumber', arkTsAveragedTime);
    });

    it('UtilPerfTest01_RationalNumber_createRationalFromString_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      () => {
      let res = util.RationalNumber.createRationalFromString("3/4");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.RationalNumber.createRationalFromString("3/4");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_RationalNumber_createRationalFromString_2400: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'RationalNumber.createRationalFromString',
        'static createRationalFromString(rationalString: string): RationalNumber', arkTsAveragedTime);
    });

    it('UtilPerfTest01_int_compare_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let rationalNumber = util.RationalNumber.parseRationalNumber(1, 2);
      let rational = util.RationalNumber.createRationalFromString("3/4");
      let res = rationalNumber.compare(rational);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = rationalNumber.compare(rational);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_int_compare_2500: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'compare',
        'compare(another: RationalNumber): int', arkTsAveragedTime);
    });

    it('UtilPerfTest01_double_valueOf_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let rationalNumber = util.RationalNumber.parseRationalNumber(1, 2);
      let res = rationalNumber.valueOf();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = rationalNumber.valueOf();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_double_valueOf_2600: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'valueOf',
        'valueOf(): double', arkTsAveragedTime);
    });

    it('UtilPerfTest01_boolean_equals_2700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let rationalNumber = util.RationalNumber.parseRationalNumber(1, 2);
      let rational = util.RationalNumber.createRationalFromString("3/4");
      let res = rationalNumber.equals(rational);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = rationalNumber.equals(rational);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_boolean_equals_2700: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'equals',
        'equals(obj: Object): boolean', arkTsAveragedTime);
    });

    it('UtilPerfTest01_long_getCommonFactor_2800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = util.RationalNumber.getCommonFactor(4, 6);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.RationalNumber.getCommonFactor(4, 6);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_long_getCommonFactor_2800: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'RationalNumber.getCommonFactor',
        'static getCommonFactor(number1: long, number2: long): long', arkTsAveragedTime);
    });

    it('UtilPerfTest01_long_getNumerator_2900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let rationalNumber = util.RationalNumber.parseRationalNumber(1, 2);
      let res = rationalNumber.getNumerator();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = rationalNumber.getNumerator();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_long_getNumerator_2900: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'getNumerator',
        'getNumerator(): long', arkTsAveragedTime);
    });

    it('UtilPerfTest01_long_getDenominator_3000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let rationalNumber = util.RationalNumber.parseRationalNumber(1, 2);
      let res = rationalNumber.getDenominator();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = rationalNumber.getDenominator();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_long_getDenominator_3000: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'getDenominator',
        'getDenominator(): long', arkTsAveragedTime);
    });

    it('UtilPerfTest01_boolean_isZero_3100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let rationalNumber = util.RationalNumber.parseRationalNumber(1, 2);
      let res = rationalNumber.isZero();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = rationalNumber.isZero();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_boolean_isZero_3100: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'isZero',
        'isZero(): boolean', arkTsAveragedTime);
    });

    it('UtilPerfTest01_boolean_isNaN_3200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let rationalNumber = util.RationalNumber.parseRationalNumber(1, 2);
      let res = rationalNumber.isNaN();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = rationalNumber.isNaN();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_boolean_isNaN_3200: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'isNaN',
        'isNaN(): boolean', arkTsAveragedTime);
    });

    it('UtilPerfTest01_boolean_isFinite_3300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let rationalNumber = util.RationalNumber.parseRationalNumber(1, 2);
      let res = rationalNumber.isFinite();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = rationalNumber.isFinite();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_boolean_isFinite_3300: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'isFinite',
        'isFinite(): boolean', arkTsAveragedTime);
    });

    it('UtilPerfTest01_string_toString_3400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let rationalNumber = util.RationalNumber.parseRationalNumber(1, 2);
      let res = rationalNumber.toString();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = rationalNumber.toString();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_string_toString_3400: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'toString',
        'toString(): string', arkTsAveragedTime);
    });

    it('UtilPerfTest01_RationalNumber_constructor_3500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = util.RationalNumber.parseRationalNumber(1, 2);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.RationalNumber.parseRationalNumber(1, 2);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_RationalNumber_constructor_3500: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'RationalNumber',
        'constructor(numerator: number, denominator: number)', arkTsAveragedTime);
    });

    it('UtilPerfTest01_LRUCache_constructor_default_3600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<int, int>();
      let res = pro;

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_LRUCache_constructor_default_3600: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'LRUCache',
        'constructor(capacity?: int)', arkTsAveragedTime);
    });

    it('UtilPerfTest01_void_updateCapacity_3700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<int, int>();
      let res: void = pro.updateCapacity(100);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.updateCapacity(100);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_void_updateCapacity_3700: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'updateCapacity',
        'updateCapacity(newCapacity: int): void', arkTsAveragedTime);
    });

    it('UtilPerfTest01_string_toString_3800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<int, int>();
      pro.put(2, 10);
      pro.get(2);
      pro.get(3);
      let res = pro.toString();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.toString();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_string_toString_3800: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'toString',
        'toString(): string', arkTsAveragedTime);
    });

    it('UtilPerfTest01_int_getCapacity_3900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<int, int>();
      let res = pro.getCapacity();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.getCapacity();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_int_getCapacity_3900: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'getCapacity',
        'getCapacity(): int', arkTsAveragedTime);
    });

    it('UtilPerfTest01_void_clear_4000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<int, int>();
      pro.put(2, 10);
      let result = pro.length;
      let res = pro.clear();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.clear();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_void_clear_4000: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'clear',
        'clear(): void', arkTsAveragedTime);
    });

    it('UtilPerfTest01_long_getCreateCount_4100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {

      let lru = new ChildLRUCache();
      lru.put(2, 10);
      lru.get(3);
      lru.get(5);
      let res = lru.getCreateCount();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = lru.getCreateCount();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_long_getCreateCount_4100: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'getCreateCount',
        'getCreateCount(): long', arkTsAveragedTime);
    });

    it('UtilPerfTest01_long_getMissCount_4200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<int, int>();
      pro.put(2, 10);
      pro.get(2);
      let res = pro.getMissCount();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.getMissCount();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_long_getMissCount_4200: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'getMissCount',
        'getMissCount(): long', arkTsAveragedTime);
    });

    it('UtilPerfTest01_long_getRemovalCount_4300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<int, int>();
      pro.put(2, 10);
      pro.updateCapacity(2);
      pro.put(50, 22);
      let res = pro.getRemovalCount();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.getRemovalCount();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_long_getRemovalCount_4300: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'getRemovalCount',
        'getRemovalCount(): long', arkTsAveragedTime);
    });

    it('UtilPerfTest01_long_getMatchCount_4400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<int, int>();
      pro.put(2, 10);
      pro.get(2);
      let res = pro.getMatchCount();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.getMatchCount();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_long_getMatchCount_4400: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'getMatchCount',
        'getMatchCount(): long', arkTsAveragedTime);
    });

    it('UtilPerfTest01_long_getPutCount_4500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<int, int>();
      pro.put(2, 10);
      let res = pro.getPutCount();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.getPutCount();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_long_getPutCount_4500: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'getPutCount',
        'getPutCount(): long', arkTsAveragedTime);
    });

    it('UtilPerfTest01_boolean_isEmpty_4600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<int, int>();
      pro.put(2, 10);
      let res = pro.isEmpty();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.isEmpty();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_boolean_isEmpty_4600: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'isEmpty',
        'isEmpty(): boolean', arkTsAveragedTime);
    });

    it('UtilPerfTest01_V_get_4700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<int, int>();
      pro.put(2, 10);
      let res = pro.get(2);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.get(2);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_V_get_4700: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'get',
        'get(key: K): V | undefined', arkTsAveragedTime);
    });

    it('UtilPerfTest01_V_put_4800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<number, number>();
      let res = pro.put(2, 10);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.put(2, 10);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_V_put_4800: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'put',
        'put(key: K, value: V): V | undefined', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Array_values_4900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<number, string>();
      pro.put(1, 'A');
      pro.put(2, "B");
      pro.put(3, 'C');
      pro.put(4, 'D');
      pro.put(5, 'E');
      pro.put(6, 'F');
      let res = pro.values();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.values();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Array_values_4900: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'values',
        'values(): Array<V>', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Array_keys_5000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<number, string>();
      pro.put(1, 'A');
      pro.put(2, "B");
      pro.put(3, 'C');
      pro.put(4, 'D');
      pro.put(5, 'E');
      pro.put(6, 'F');
      let res = pro.keys();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.keys();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Array_keys_5000: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'keys',
        'keys(): Array<K>', arkTsAveragedTime);
    });

    it('UtilPerfTest01_V_remove_5100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<int, int>();
      pro.put(2, 10);
      let res = pro.remove(20);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.remove(20);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_V_remove_5100: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'remove',
        'remove(key: K): V | undefined', arkTsAveragedTime);
    });

    it('UtilPerfTest01_boolean_contains_5200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<int, int>();
      pro.put(2, 10);
      let res = pro.contains(2);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.contains(2);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_boolean_contains_5200: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'contains',
        'contains(key: K): boolean', arkTsAveragedTime);
    });

    it('UtilPerfTest01_V_createDefault_5300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<number, number>();
      let res = pro.createDefault(50);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.createDefault(50);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_V_createDefault_5300: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'createDefault',
        'createDefault(key: K): V | undefined', arkTsAveragedTime);
    });

    it('UtilPerfTest01_IterableIterator_entries_5400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<int, int>();
      pro.put(2, 10);
      pro.put(3, 15);
      let res = pro.entries();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.entries();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_IterableIterator_entries_5400: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'entries',
        'entries(): IterableIterator<[K, V]>', arkTsAveragedTime);
    });

    it('UtilPerfTest01_IterableIterator_$_iterator_5500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let pro = new util.LRUCache<int, int>();
      pro.put(2, 10);
      pro.put(3, 15);
      let res = pro.$_iterator();

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = pro.$_iterator();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_IterableIterator_$_iterator_5500: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', '$_iterator',
        '$_iterator(): IterableIterator<[K, V]>', arkTsAveragedTime);
    });

    it('UtilPerfTest01_boolean_compareTo_5600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {

      let temp1 = new Temperature(25);
      let temp2 = new Temperature(20);
      let res = temp1.compareTo(temp2);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = temp1.compareTo(temp2);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_boolean_compareTo_5600: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'compareTo',
        'compareTo(other: T): boolean', arkTsAveragedTime);
    });

    it('UtilPerfTest01_ScopeType_type_5700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {

      let temp: util.ScopeType<Temperature> = new Temperature(25);
      let res = temp;

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = temp;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_ScopeType_type_5700: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'ScopeType',
        'type ScopeType<T> = ScopeComparable<T>', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Base64Helper_constructor_5800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let base64Helper = new util.Base64Helper();
      let res = base64Helper;

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = base64Helper;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Base64Helper_constructor_5800: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'Base64Helper',
        'class Base64Helper', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Base64Helper_constructor_5900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let base64 = new util.Base64Helper();
      let res = base64;

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = base64;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Base64Helper_constructor_5900: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'Base64Helper',
        'constructor()', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Uint8Array_encodeSync_6000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let base64Helper = new util.Base64Helper();
      let array = new Uint8Array([115, 49, 51]);
      let res = base64Helper.encodeSync(array);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = base64Helper.encodeSync(array);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Uint8Array_encodeSync_6000: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'encodeSync',
        'encodeSync(src: Uint8Array, options?: Type): Uint8Array', arkTsAveragedTime);
    });

    it('UtilPerfTest01_string_encodeToStringSync_MIME_6100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let base64Helper = new util.Base64Helper();
      let array = new Uint8Array([77, 97, 110, 105, 115, 100, 105, 115, 116, 105, 110, 103, 117, 105, 115, 104, 101,
        100, 110, 111, 116, 111, 110, 108, 121, 98, 121, 104, 105, 115, 114, 101, 97, 115, 111, 110, 98, 117, 116, 98,
        121, 116, 104, 105, 115, 115, 105, 110, 103, 117, 108, 97, 114, 112, 97, 115, 115, 105, 111, 110, 102, 114, 111,
        109, 111, 116, 104, 101, 114, 97, 110, 105, 109, 97, 108, 115, 119, 104, 105, 99, 104, 105, 115, 97, 108, 117,
        115, 116, 111, 102, 116, 104, 101, 109, 105, 110, 100, 101, 120, 99, 101, 101, 100, 115, 116, 104, 101, 115,
        104, 111, 114, 116, 118, 101, 104, 101, 109, 101, 110, 99, 101, 111, 102, 97, 110, 121, 99, 97, 114, 110, 97,
        108, 112, 108, 101, 97, 115, 117, 114, 101
        ]);
      let res = base64Helper.encodeToStringSync(array, util.Type.MIME);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = base64Helper.encodeToStringSync(array, util.Type.MIME);
      }
      let Dtime = new Date().getTime() - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_string_encodeToStringSync_MIME_6100: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'encodeToStringSync',
        'encodeToStringSync(src: Uint8Array, options?: Type): string', arkTsAveragedTime);
    });

    it('UtilPerfTest01_string_encodeToStringSync_BASIC_6200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let base64Helper = new util.Base64Helper();
      let array = new Uint8Array([77, 97, 110, 105, 115, 100, 105, 115, 116, 105, 110, 103, 117, 105, 115, 104, 101,
        100, 110, 111, 116, 111, 110, 108, 121, 98, 121, 104, 105, 115, 114, 101, 97, 115, 111, 110, 98, 117, 116,
         98, 121, 116, 104, 105, 115, 115, 105, 110, 103, 117, 108, 97, 114, 112, 97, 115, 115, 105, 111, 110, 102, 114,
        111, 109, 111, 116, 104, 101, 114, 97, 110, 105, 109, 97, 108, 115, 119, 104, 105, 99, 104, 105, 115, 97, 108,
        117, 115, 116, 111, 102, 116, 104, 101, 109, 105, 110, 100, 101, 120, 99, 101, 101, 100, 115, 116, 104, 101, 115,
        104, 111, 114, 116, 118, 101, 104, 101, 109, 101, 110, 99, 101, 111, 102, 97, 110, 121, 99, 97, 114, 110, 97,
        108, 112, 108, 101, 97, 115, 117, 114, 101
      ]);
      let res = base64Helper.encodeToStringSync(array, util.Type.BASIC);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = base64Helper.encodeToStringSync(array, util.Type.BASIC);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_string_encodeToStringSync_BASIC_6200: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'encodeToStringSync',
        'encodeToStringSync(src: Uint8Array, options?: Type): string', arkTsAveragedTime);
    });

    it('UtilPerfTest01_string_encodeToStringSync_BASIC_URL_SAFE_6300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      () => {
      let base64Helper = new util.Base64Helper();
      let array = new Uint8Array([77, 97, 110, 105, 115, 100, 105, 115, 116, 105, 110, 103, 117, 105, 115, 104, 101,
        100, 110, 111, 116, 111, 110, 108, 121, 98, 121, 104, 105, 115, 114, 101, 97, 115, 111, 110, 98, 117, 116, 98,
        121, 116, 104, 105, 115, 115, 105, 110, 103, 117, 108, 97, 114, 112, 97, 115, 115, 105, 111, 110, 102, 114,
        111, 109, 111, 116, 104, 101, 114, 97, 110, 105, 109, 97, 108, 115, 119, 104, 105, 99, 104, 105, 115, 97, 108,
        117, 115, 116, 111, 102, 116, 104, 101, 109, 105, 110, 100, 101, 120, 99, 101, 101, 100, 115, 116, 104, 101, 115,
        104, 111, 114, 116, 118, 101, 104, 101, 109, 101, 110, 99, 101, 111, 102, 97, 110, 121, 99, 97, 114, 110, 97,
        108, 112, 108, 101, 97, 115, 117, 114, 101
      ]);
      let res = base64Helper.encodeToStringSync(array, util.Type.BASIC_URL_SAFE);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = base64Helper.encodeToStringSync(array, util.Type.BASIC_URL_SAFE);
      }
      let Dtime = new Date().getTime() - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime ' +
        'UtilPerfTest01_string_encodeToStringSync_BASIC_URL_SAFE_6300: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'encodeToStringSync',
        'encodeToStringSync(src: Uint8Array, options?: Type): string', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Uint8Array_decodeSync_MIME_6400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let base64Helper = new util.Base64Helper();
      let buff = 'TWFuaXNkaXN0aW5ndWlzaGVkbm90b25seWJ5aGlzcmVhc29uYnV0Ynl0aGlzc2luZ3VsYXJwYXNz' +
        '\r\naW9uZnJvbW90aGVyYW5pbWFsc3doaWNoaXNhbHVzdG9mdGhlbWluZGV4Y2VlZHN0aGVzaG9ydHZl' +
        '\r\naGVtZW5jZW9mYW55Y2FybmFscGxlYXN1cmU=\r\n';
      let res = base64Helper.decodeSync(buff, util.Type.MIME);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = base64Helper.decodeSync(buff, util.Type.MIME);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Uint8Array_decodeSync_MIME_6400: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'decodeSync',
        'decodeSync(src: Uint8Array | string, options?: Type): Uint8Array', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Promise_encode_6500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let base64Helper = new util.Base64Helper();
      let array = new Uint8Array([115, 49, 51]);
      let res = base64Helper.encode(array);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = base64Helper.encode(array);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Promise_encode_6500: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'encode',
        'encode(src: Uint8Array, options?: Type): Promise<Uint8Array>', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Promise_encodeToString_MIME_6600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let base64Helper = new util.Base64Helper();
      let array = new Uint8Array([77, 97, 110, 105, 115, 100, 105, 115, 116, 105, 110, 103, 117, 105, 115, 104, 101, 100,
        110, 111, 116, 111, 110, 108, 121, 98, 121, 104, 105, 115, 114, 101, 97, 115, 111, 110, 98, 117, 116, 98, 121,
        116, 104, 105, 115, 115, 105, 110, 103, 117, 108, 97, 114, 112, 97, 115, 115, 105, 111, 110, 102, 114, 111, 109,
        111, 116, 104, 101, 114, 97, 110, 105, 109, 97, 108, 115, 119, 104, 105, 99, 104, 105, 115, 97, 108, 117, 115,
        116, 111, 102, 116, 104, 101, 109, 105, 110, 100, 101, 120, 99, 101, 101, 100, 115, 116, 104, 101, 115, 104, 111,
        114, 116, 118, 101, 104, 101, 109, 101, 110, 99, 101, 111, 102, 97, 110, 121, 99, 97, 114, 110, 97, 108, 112,
        108, 101, 97, 115, 117, 114, 101
      ]);
      let res = base64Helper.encodeToString(array, util.Type.MIME);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = base64Helper.encodeToString(array, util.Type.MIME);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Promise_encodeToString_MIME_6600: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'encodeToString',
        'encodeToString(src: Uint8Array, options?: Type): Promise<string>', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Promise_decode_MIME_6700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let base64Helper = new util.Base64Helper();
      let array = 'TWFuaXNkaXN0aW5ndWlzaGVkbm90b25seWJ5aGlzcmVhc29uYnV0Ynl0aGlzc2luZ3VsYXJwYXNz' +
        '\r\naW9uZnJvbW90aGVyYW5pbWFsc3doaWNoaXNhbHVzdG9mdGhlbWluZGV4Y2VlZHN0aGVzaG9ydHZl' +
        '\r\naGVtZW5jZW9mYW55Y2FybmFscGxlYXN1cmU=\r\n';
      let res = base64Helper.decode(array, util.Type.MIME);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = base64Helper.decode(array, util.Type.MIME);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Promise_decode_MIME_6700: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'decode',
        'decode(src: Uint8Array | string, options?: Type): Promise<Uint8Array>', arkTsAveragedTime);
    });

    it('UtilPerfTest01_StringDecoder_constructor_utf8_6800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let stringDecoder = new util.StringDecoder('utf-8');
      let res = stringDecoder;

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = stringDecoder;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_StringDecoder_constructor_utf8_6800: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'StringDecoder',
        'constructor(encoding?: string)', arkTsAveragedTime);
    });

    it('UtilPerfTest01_StringDecoder_constructor_6900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let decoder = new util.StringDecoder();
      let res = decoder;

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = decoder;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_StringDecoder_constructor_6900: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'StringDecoder',
        'constructor(encoding?: string)', arkTsAveragedTime);
    });

    it('UtilPerfTest01_string_write_7000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let decoder = new util.StringDecoder('utf-8');
      let input = new Uint8Array([0xE4, 0xBD, 0xA0, 0xE5, 0xA5, 0xBD]);
      let res = decoder.write(input);

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = decoder.write(input);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_string_write_7000: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'write',
        'write(chunk: string | Uint8Array): string', arkTsAveragedTime);
    });

    it('UtilPerfTest01_string_end_7100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let decoder = new util.StringDecoder('utf-8');
      let input = new Uint8Array([0xE4, 0xBD, 0xA0, 0xE5, 0xA5, 0xBD]);
      let res = decoder.end(input.slice(5));

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = decoder.end(input.slice(5));
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_string_end_7100: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'end',
        'end(chunk?: string | Uint8Array): string', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Type_BASIC_7200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = util.Type.BASIC;

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.Type.BASIC;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Type_BASIC_7200: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'Type.BASIC',
        'BASIC = 0', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Type_MIME_7300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = util.Type.MIME;

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.Type.MIME;
      }
      let Dtime = new Date().getTime() - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Type_MIME_7300: ' + arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'Type.MIME',
        'MIME = 1', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Type_BASIC_URL_SAFE_7400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = util.Type.BASIC_URL_SAFE;

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.Type.BASIC_URL_SAFE;
      }
      let Dtime = new Date().getTime() - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Type_BASIC_URL_SAFE_7400: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'Type.BASIC_URL_SAFE',
        'BASIC_URL_SAFE = 2', arkTsAveragedTime);
    });

    it('UtilPerfTest01_Type_MIME_URL_SAFE_7500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = util.Type.MIME_URL_SAFE;

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = util.Type.MIME_URL_SAFE;
      }
      let Dtime = new Date().getTime() - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_Type_MIME_URL_SAFE_7500: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'Type.MIME_URL_SAFE',
        'MIME_URL_SAFE = 3', arkTsAveragedTime);
    });

    it('UtilPerfTest01_types_constructor_7600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let type = new util.types();
      let res = type;

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = type;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_types_constructor_7600: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'types',
        'constructor()', arkTsAveragedTime);
    });

    it('UtilPerfTest01_boolean_isAnyArrayBuffer_7700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let type = new util.types();
      let res = type.isAnyArrayBuffer(new ArrayBuffer(0));

      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = type.isAnyArrayBuffer(new ArrayBuffer(0));
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;

      console.info('arkTsUtilPerfTest01 arkTsAveragedTime UtilPerfTest01_boolean_isAnyArrayBuffer_7700: ' +
        arkTsAveragedTime + 'ns');

      performance.apiWithClassAndKeywordTxt('std.util', 'util', 'isAnyArrayBuffer',
        'isAnyArrayBuffer(value: Object): boolean', arkTsAveragedTime);
    });
  });
}