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
import { uri, util, url, xml, buffer, transfer } from '@kit.ArkTS';

let str = '';

class MyClass {
    num: int = 1;
    name: string = "test";
}

export default function BuiltinArrayPerfTest1() {
  describe('BuiltinArrayPerfTest1', () => {
    // 毫秒 * 1000 = 微秒 毫秒 * 1000000 = 纳秒
    const BASE_COUNT = 500;
    // url.URLParams.get --url.URLParams.has --util.getHash --util.Types.isMap --uri.uri.checkIsAbsolute --util.Types.isArrayBuffer
    const BASE_COUNT_BIG = 500000;
    const UNIT_TIME = 1000000;
    // buffer.from
    const BASE_COUNT_MIX = 100;

    beforeEach(() => {
      let ret = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret);
      let ret1 = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret1);
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })




    it('PerformanceTest_Field_getType_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let classType: ClassType = Type.of(new MyClass()) as ClassType;
        let fieldNum: Field = classType.getField(0); 
        let res: Type = fieldNum.getType();
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            res = fieldNum.getType()
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        let res1 = res;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_Field_getType_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'Field', 'getType',
            'getType(): Type', arkTsAveragedTime);
    })

it('PerformanceTest_BuiltinArrayTest1_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result = new FixedArray<double>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = copyWithin(fixArray, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertClose(4.44, 0.001);
    })


    it('PerformanceTest_BuiltinArrayTest1_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result = new FixedArray<double>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = copyWithin(fixArray, 0, 3, 4);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertClose(4.44, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result = new FixedArray<double>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = fill(fixArray, 9.99);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertClose(9.99, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result: Double | undefined = undefined;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = find(fixArray, (value: double) => value > 3.33);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertClose(4.44, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result: int = -1;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = findIndex(fixArray, (value: double) => value > 3.33);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest1_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result: Double | undefined = undefined;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = findLast(fixArray, (elem: double) => elem < 5.55);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertClose(4.44, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result: boolean = false;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = every(fixArray, (value: double) => value > 1.0);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(true);
    })

    it('PerformanceTest_BuiltinArrayTest1_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result: boolean = false;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = some(fixArray, (value: double) => value > 5.0);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(true);
    })

    it('PerformanceTest_BuiltinArrayTest1_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result: int = -1;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = findLastIndex(fixArray, (element: double) => element < 5.55);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest1_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let result: double = 0.0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduce(fixArray, (previousValue: double, currentValue: double) => previousValue + currentValue);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertClose(6.66, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let result: double = 0.0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduce(fixArray, (previousValue: double, currentValue: double) => previousValue + currentValue, 10.0);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertClose(16.66, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let result: string = "";
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduceRight(fixArray, (previousValue: string, currentValue: double) => previousValue + currentValue, "");
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual("3.332.221.11");
    })


    it('PerformanceTest_BuiltinArrayTest1_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let result: double = 0.0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            forEach(fixArray, (value: double, index: int) => { if (index === 2) result = value; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertClose(3.33, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result = new FixedArray<double>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = slice(fixArray, 2);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertClose(3.33, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result = new FixedArray<double>(2);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = slice(fixArray, 1, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertClose(2.22, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 2.22, 1.11];
        let result: int = -1;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = lastIndexOf(fixArray, 2.22);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest1_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let result: string = "";
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = join(fixArray, "-");
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual("1.11-2.22-3.33");
    })

    it('PerformanceTest_BuiltinArrayTest1_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let result: string = "";
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toString(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual("1.11,2.22,3.33");
    })

    it('PerformanceTest_BuiltinArrayTest1_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let locales: Object = "en-US";
        let options: Object = {};
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            toLocaleString(fixArray, locales, options);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest1_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let locales: Object = "zh-CN";
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            toLocaleString(fixArray, locales);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest1_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let result: string = "";
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toLocaleString(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual("1.11,2.22,3.33");
    })

    it('PerformanceTest_BuiltinArrayTest1_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result = new FixedArray<double>(2);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSpliced(fixArray, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.length).assertEqual(3);
    })
  

    it('PerformanceTest_BuiltinArrayTest1_2300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result = new FixedArray<double>(4);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSpliced(fixArray, 1, 2, 8.88);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[1]).assertClose(8.88, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result = new FixedArray<double>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSpliced(fixArray, 1, 2);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[1]).assertClose(4.44, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result: boolean = false;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = includes(fixArray, 3.33);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(true);
    })

    it('PerformanceTest_BuiltinArrayTest1_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result: int = -1;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = indexOf(fixArray, 4.44);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest1_2700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [3.33, 1.11, 2.22];
        let result = new FixedArray<double>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSorted(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertClose(1.11, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_2800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [3.33, 1.11, 2.22];
        let result = new FixedArray<double>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSorted(fixArray, (a: double, b: double): int => { return b > a ? 1 : -1; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertClose(3.33, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_2900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let result = new FixedArray<double>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reverse(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertClose(3.33, 5);
    })

    it('PerformanceTest_BuiltinArrayTest1_3000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let result = new FixedArray<double>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toReversed(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertClose(3.33, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_3100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let result = new FixedArray<double>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = with(fixArray, 1, 9.99);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[1]).assertClose(9.99, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_3200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let result = values(fixArray);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = values(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.next().value).assertClose(1.11, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_3300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let result = entries(fixArray);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = entries(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.next().value![0]).assertEqual(0);
    })

    it('PerformanceTest_BuiltinArrayTest1_3400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let result = new FixedArray<double>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = map(fixArray, (value: double) => value * 2.0);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertClose(2.22, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_3500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let result: double = 0.0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduceRight(fixArray, (previousValue: double, currentValue: double) => previousValue + currentValue);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertClose(6.66, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_3600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33, 4.44, 5.55];
        let result = new FixedArray<double>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = filter(fixArray, (v: double) => v > 2.22);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertClose(3.33, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_3700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let fixArray2: FixedArray<double> = [4.44, 5.55, 6.66];
        let result = new FixedArray<double>(6);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = concat(fixArray, fixArray2);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[3]).assertClose(4.44, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_3800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let result = new FixedArray<double>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = concat(fixArray, [4.44, 5.55] as FixedArray<double>);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[3]).assertClose(4.44, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_3900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [3.33, 1.11, 2.22];
        let result = new FixedArray<double>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = sort(fixArray, (a: double, b: double): int => { return a > b ? 1 : -1; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertClose(1.11, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_4000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [3.33, 1.11, 2.22];
        let result = new FixedArray<double>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = sort(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertClose(1.11, 0.001);
    })

    it('PerformanceTest_BuiltinArrayTest1_4100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<double> = [1.11, 2.22, 3.33];
        let result = keys(fixArray);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = keys(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.next().value).assertEqual(0);
    })

    it('PerformanceTest_BuiltinArrayTest1_4200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [ c'a', c'b', c'c' ];
        let result: Char = c'a';
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = at(fixArray, 1);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(c'b');
    })

    it('PerformanceTest_BuiltinArrayTest1_4300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd' , c'e'];
        let result = new FixedArray<char>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = copyWithin(fixArray, 0);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(c'a');
    })

    it('PerformanceTest_BuiltinArrayTest1_4400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd' , c'e'];
        let result = new FixedArray<char>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = copyWithin(fixArray, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(c'd');
    })

    it('PerformanceTest_BuiltinArrayTest1_4500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd' , c'e'];
        let result = new FixedArray<char>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = copyWithin(fixArray, 0, 3, 4);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(c'd');
    })

    it('PerformanceTest_BuiltinArrayTest1_4600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd' , c'e'];
        let result = new FixedArray<char>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = fill(fixArray, c'z');
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(c'z');
    })

    it('PerformanceTest_BuiltinArrayTest1_4700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd' , c'e'];
        let result: Char | undefined = undefined;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = find(fixArray, (value: char) => value > c'c');
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(c'd');
    })

    it('PerformanceTest_BuiltinArrayTest1_4800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd' , c'e'];
        let result: int = -1;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = findIndex(fixArray, (value: char) => value > c'c');
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest1_4900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd' , c'e'];
        let result: Char | undefined = undefined;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = findLast(fixArray, (elem: char) => elem < c'e');
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(c'd');
    })

    it('PerformanceTest_BuiltinArrayTest1_5000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd' , c'e'];
        let result: boolean = false;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = every(fixArray, (value: char) => value >= c'a' && value <= c'e');
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(true);
    })

    it('PerformanceTest_BuiltinArrayTest1_5100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd' , c'e'];
        let result: boolean = false;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = some(fixArray, (value: char) => value > c'd');
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(true);
    })

    it('PerformanceTest_BuiltinArrayTest1_5200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd' , c'e'];
        let result: int = -1;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = findLastIndex(fixArray, (element: char) => element < c'e');
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3);
    })

    // it('PerformanceTest_BuiltinArrayTest1_5300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let fixArray: FixedArray<char> = [c'a',c'b', c'c'];
    //     let result: string = '';
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         result = reduce(fixArray, (previousValue: char, currentValue: char) => {
    //             return String.fromCharCode((previousValue as string).charCodeAt(0) + (currentValue as string).charCodeAt(0));
    //         });
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    //     expect(result.charCodeAt(0)).assertEqual(294);
    // })

    it('PerformanceTest_BuiltinArrayTest1_5400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a',c'b', c'c'];
        let result: string = "";
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduce(fixArray, (previousValue: string, currentValue: char) => previousValue + currentValue, "");
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual("abc");
    })

    it('PerformanceTest_BuiltinArrayTest1_5500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a',c'b', c'c'];
        let result: string = "";
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduceRight(fixArray, (previousValue: string, currentValue: char) => previousValue + currentValue, "");
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual("cba");
    })

    it('PerformanceTest_BuiltinArrayTest1_5600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a',c'b', c'c'];
        let result: char = c'a';
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            forEach(fixArray, (value: char, index: int) => { if (index === 2) result = value; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(c'c');
    })

    it('PerformanceTest_BuiltinArrayTest1_5700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd' , c'e'];
        let result = new FixedArray<char>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = slice(fixArray, 2);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(c'c');
    })

    it('PerformanceTest_BuiltinArrayTest1_5800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd' , c'e'];
        let result = new FixedArray<char>(2);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = slice(fixArray, 1, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(c'b');
    })

    it('PerformanceTest_BuiltinArrayTest1_5900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'b', c'a'];
        let result: int = -1;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = lastIndexOf(fixArray, c'b');
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest1_6000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a',c'b', c'c'];
        let result: string = "";
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = join(fixArray, "-");
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual("a-b-c");
    })

    it('PerformanceTest_BuiltinArrayTest1_6100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a',c'b', c'c'];
        let result: string = "";
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toString(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual("a,b,c");
    })

    it('PerformanceTest_BuiltinArrayTest1_6200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a',c'b', c'c'];
        let locales: Object = "en-US";
        let options: Object = {};
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            toLocaleString(fixArray, locales, options);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest1_6300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a',c'b', c'c'];
        let locales: Object = "zh-CN";
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            toLocaleString(fixArray, locales);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })

    it('PerformanceTest_BuiltinArrayTest1_6400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a',c'b', c'c'];
        let result: string = "";
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toLocaleString(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual("a,b,c");
    })


    it('PerformanceTest_BuiltinArrayTest1_6500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd', c'e'];
        let result = new FixedArray<char>(2);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSpliced(fixArray, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.length).assertEqual(2);
    })

    it('PerformanceTest_BuiltinArrayTest1_6600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd', c'e'];
        let result = new FixedArray<char>(4);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSpliced(fixArray, 1, 2, c'x');
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[1]).assertEqual(c'x');
    })

    it('PerformanceTest_BuiltinArrayTest1_6700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd', c'e'];
        let result = new FixedArray<char>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSpliced(fixArray, 1, 2);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[1]).assertEqual(c'd');
    })

    it('PerformanceTest_BuiltinArrayTest1_6800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd', c'e'];
        let result: boolean = false;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = includes(fixArray, c'c');
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(true);
    })

    it('PerformanceTest_BuiltinArrayTest1_6900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd', c'e'];
        let result: int = -1;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = indexOf(fixArray, c'd');
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest1_7000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'c', c'a', c'b'];
        let result = new FixedArray<char>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSorted(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(c'a');
    })

    // it('PerformanceTest_BuiltinArrayTest1_7100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let fixArray: FixedArray<char> = [c'c', c'a', c'b'];
    //     let result = new FixedArray<char>(3);
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         result = toSorted(fixArray, (a: char, b: char): int => { return b.charCodeAt(0) - a.charCodeAt(0); });
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    //     expect(result[0]).assertEqual(c'c');
    // })

    it('PerformanceTest_BuiltinArrayTest1_7200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c'];
        let result = new FixedArray<char>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reverse(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(c'c');
    })

    it('PerformanceTest_BuiltinArrayTest1_7300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c'];
        let result = new FixedArray<char>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toReversed(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(c'c');
    })

    it('PerformanceTest_BuiltinArrayTest1_7400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c'];
        let result = new FixedArray<char>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = with(fixArray, 1, c'z');
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[1]).assertEqual(c'z');
    })

    it('PerformanceTest_BuiltinArrayTest1_7500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c'];
        let result = values(fixArray);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = values(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.next().value).assertEqual(c'a');
    })

    it('PerformanceTest_BuiltinArrayTest1_7600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c'];
        let result = entries(fixArray);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = entries(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.next().value![0]).assertEqual(0);
    })

    // it('PerformanceTest_BuiltinArrayTest1_7700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let fixArray: FixedArray<char> = [c'a', c'b', c'c'];
    //     let result = new FixedArray<char>(3);
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         result = map(fixArray, (value: char) => String.fromCharCode(value.charCodeAt(0) + 1));
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    //     expect(result[0]).assertEqual(c'b');
    // })

    // it('PerformanceTest_BuiltinArrayTest1_7800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let fixArray: FixedArray<char> = [c'a', c'b', c'c'];
    //     let result: char = '';
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         result = reduceRight(fixArray, (previousValue: char, currentValue: char) => {
    //             return String.fromCharCode(previousValue.charCodeAt(0) + currentValue.charCodeAt(0));
    //         });
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    //     expect(result.charCodeAt(0)).assertEqual(294);
    // })

    it('PerformanceTest_BuiltinArrayTest1_7900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c', c'd', c'e'];
        let result = new FixedArray<char>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = filter(fixArray, (v: char) => v > c'b');
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual('c');
    })

    it('PerformanceTest_BuiltinArrayTest1_8000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c'];
        let fixArray2: FixedArray<char> = [c'd', c'e', c'f'];
        let result = new FixedArray<char>(6);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = concat(fixArray, fixArray2);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[3]).assertEqual('d');
    })

    it('PerformanceTest_BuiltinArrayTest1_8100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c'];
        let result = new FixedArray<char>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = concat(fixArray, [c'd', c'e'] as FixedArray<char>);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[3]).assertEqual(c'd');
    })

    // it('PerformanceTest_BuiltinArrayTest1_8200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let fixArray: FixedArray<char> = [c'c', c'a', c'b'];
    //     let result = new FixedArray<char>(3);
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         result = sort(fixArray, (a: char, b: char): int => { return a.charCodeAt(0) - b.charCodeAt(0); });
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    //     expect(result[0]).assertEqual(c'a');
    // })

    it('PerformanceTest_BuiltinArrayTest1_8300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'c', c'a', c'b'];
        let result = new FixedArray<char>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = sort(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual('a');
    })

    it('PerformanceTest_BuiltinArrayTest1_8400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<char> = [c'a', c'b', c'c'];
        let result = keys(fixArray);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = keys(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.next().value).assertEqual(0);
    })

    // it('PerformanceTest_BuiltinArrayTest1_8500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let fixArray: FixedArray<int> = [30, 10, 20];
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         sort_stable(fixArray, 0, 3, (lhs: int, rhs: int): int => { return lhs - rhs; });
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    //     expect(fixArray[0]).assertEqual(10);
    // })

    // it('PerformanceTest_BuiltinArrayTest1_8600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let fixArray: FixedArray<int> = [30, 10, 20];
    //     let arrStr: FixedArray<buffStr> = ["30", "10", "20"];
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         sort_default(fixArray, arrStr, 0, 3);
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    //     expect(fixArray[0]).assertEqual(10);
    // })

    // it('PerformanceTest_BuiltinArrayTest1_8700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let fixArray: Array<int> = [100, 200, 300];
    //     let result: int = 0;
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         result = reduce(fixArray, (previousValue: int, currentValue: int) => previousValue + currentValue, 1000);
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    //     expect(result).assertEqual(1600);
    // })






  })
}
  
