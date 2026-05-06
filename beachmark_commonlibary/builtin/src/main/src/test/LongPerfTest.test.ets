import {
  describe,
  it,
  TestType,
  Size,
  Level,
  beforeEach,
  afterAll
} from "../../../hypium/index";
import performance from './Performance.util';

const BASE_COUNT = 50000;
const UNIT_TIME = 1000000;
const BASE_COUNT_MIX = 500;
function getLong123(): long {
  return Long.parseInt("123", 10);
}

function getLong456(): long {
  return Long.parseInt("456", 10);
}

function getLong7(): long {
  return Long.parseInt("7", 10);
}

function getLong255(): long {
  return Long.parseInt("255", 10);
}

function createLong123(): Long {
  return new Long(getLong123());
}

function createLong456(): Long {
  return new Long(getLong456());
}

function createLong7(): Long {
  return new Long(getLong7());
}

export default function LongPerfTest(): void {
  describe('LongPerfTest', () => {
    beforeEach(() => {
      let ret = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret);
      let ret1 = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret1);
    });

    afterAll(() => {
      performance.save('apiPerformance.txt');
    });

    it('PerformanceTest_Long_constructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let result: Long = new Long();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = new Long();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_constructor_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'constructor',
          'constructor()', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_constructor_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: long = getLong123();
        let result: Long = new Long(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = new Long(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_constructor_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'constructor',
          'constructor(value: long)', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_valueOf_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: long = getLong123();
        let result: Long = Long.valueOf(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Long.valueOf(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_valueOf_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'valueOf',
          'valueOf(value: long): Long', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_toByte_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong123();
        let result: byte = value.toByte();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.toByte();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_toByte_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toByte',
          'toByte(): byte', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_toShort_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong123();
        let result: short = value.toShort();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.toShort();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_toShort_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toShort',
          'toShort(): short', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_toInt_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong123();
        let result: int = value.toInt();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.toInt();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_toInt_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toInt',
          'toInt(): int', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_toLong_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong123();
        let result: long = value.toLong();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.toLong();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_toLong_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toLong',
          'toLong(): long', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_toFloat_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong123();
        let result: float = value.toFloat();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.toFloat();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_toFloat_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toFloat',
          'toFloat(): float', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_toDouble_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong123();
        let result: double = value.toDouble();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.toDouble();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_toDouble_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toDouble',
          'toDouble(): double', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_toChar_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong123();
        let result: char = value.toChar();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.toChar();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_toChar_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toChar',
          'toChar(): char', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_toByte_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: long = getLong123();
        let result: byte = Long.toByte(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Long.toByte(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_toByte_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toByte',
          'static toByte(value: long): byte', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_toShort_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: long = getLong123();
        let result: short = Long.toShort(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Long.toShort(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_toShort_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toShort',
          'static toShort(value: long): short', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_toInt_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: long = getLong123();
        let result: int = Long.toInt(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Long.toInt(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_toInt_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toInt',
          'static toInt(value: long): int', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_toFloat_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: long = getLong123();
        let result: float = Long.toFloat(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Long.toFloat(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_toFloat_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toFloat',
          'static toFloat(value: long): float', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_toDouble_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: long = getLong123();
        let result: double = Long.toDouble(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Long.toDouble(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_toDouble_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toDouble',
          'static toDouble(value: long): double', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_toChar_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: long = getLong123();
        let result: char = Long.toChar(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Long.toChar(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_toChar_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toChar',
          'static toChar(value: long): char', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_toLong_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: long = getLong123();
        let result: long = Long.toLong(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Long.toLong(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_toLong_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toLong',
          'static toLong(value: long): long', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_compareTo_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong123();
        let other: Long = createLong456();
        let result: int = value.compareTo(other);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.compareTo(other);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_compareTo_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'compareTo',
          'compareTo(other: Long): int', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_toString_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: long = getLong123();
        let result: string = Long.toString(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Long.toString(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_toString_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toString',
          'static toString(v: long): string', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_toString_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong123();
        let result: String = value.toString();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.toString();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_toString_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toString',
          'toString(): String', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_equals_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong123();
        let other: Any = createLong123();
        let result: boolean = value.equals(other);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.equals(other);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_equals_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'equals',
          'equals(other: Any): boolean', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_toLocaleString_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong123();
        let options: Intl.NumberFormatOptions | undefined = undefined;
        let result: String = value.toLocaleString(undefined, options);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT_MIX; i++) {
          result = value.toLocaleString(undefined, options);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT_MIX;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_toLocaleString_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'toLocaleString',
          'toLocaleString(locales?: Intl.LocalesArgument, options?: Intl.NumberFormatOptions): String', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_add_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong123();
        let other: Long = createLong456();
        let result: Long = value.add(other);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.add(other);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_add_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'add',
          'add(other: Long): Long', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_sub_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong456();
        let other: Long = createLong123();
        let result: Long = value.sub(other);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.sub(other);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_sub_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'sub',
          'sub(other: Long): Long', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_mul_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong123();
        let other: Long = createLong7();
        let result: Long = value.mul(other);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.mul(other);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_mul_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'mul',
          'mul(other: Long): Long', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_div_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong456();
        let other: Long = createLong7();
        let result: Long = value.div(other);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.div(other);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_div_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'div',
          'div(other: Long): Long', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_isLessThan_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong123();
        let other: Long = createLong456();
        let result: boolean = value.isLessThan(other);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.isLessThan(other);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_isLessThan_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'isLessThan',
          'isLessThan(other: Long): boolean', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_isLessEqualThan_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong123();
        let other: Long = createLong456();
        let result: boolean = value.isLessEqualThan(other);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.isLessEqualThan(other);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_isLessEqualThan_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'isLessEqualThan',
          'isLessEqualThan(other: Long): boolean', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_isGreaterThan_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong456();
        let other: Long = createLong123();
        let result: boolean = value.isGreaterThan(other);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.isGreaterThan(other);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_isGreaterThan_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'isGreaterThan',
          'isGreaterThan(other: Long): boolean', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_isGreaterEqualThan_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: Long = createLong456();
        let other: Long = createLong123();
        let result: boolean = value.isGreaterEqualThan(other);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = value.isGreaterEqualThan(other);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_isGreaterEqualThan_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'isGreaterEqualThan',
          'isGreaterEqualThan(other: Long): boolean', arkTsAveragedTime);
      });

    it('PerformanceTest_Long_parseInt_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let s: String = "123456";
        let r: int = 10;
        let result: long = Long.parseInt(s, r);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = Long.parseInt(s, r);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Long_parseInt_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Long', 'parseInt',
          'parseInt(s: String, r: int): long', arkTsAveragedTime);
      });
  });
}