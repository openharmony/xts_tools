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

export default function EnumConstantPerfTest() {
  describe('EnumConstantPerfTest', () => {
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

    it('PerformanceTest_EnumConstantPerfTest_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let enumconstant = new EnumConstant()
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            enumconstant = new EnumConstant()
        }
        let Dtime = new Date().getTime() - Stime;
        let res = enumconstant
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })
    // it('PerformanceTest_EnumConstantPerfTest_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let enumconstant = new EnumConstant()
    //     let result = enumconstant.getType()
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         result = enumconstant.getType()
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let res = enumconstant
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    // })
        it('PerformanceTest_EnumConstantPerfTest_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let enumconstant = new EnumConstant()
        let result = enumconstant.getName()
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = enumconstant.getName()
        }
        let Dtime = new Date().getTime() - Stime;
        let res = result
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })

    it('PerformanceTest_EnumConstantPerfTest_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let enumconstant = new EnumConstant()
        let result = enumconstant.getValue()
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = enumconstant.getValue()
        }
        let Dtime = new Date().getTime() - Stime;
        let res = result
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })


    it('PerformanceTest_EnumConstantPerfTest_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let enumconstant = new EnumConstant()
        let result = enumconstant.getStringValue()
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = enumconstant.getStringValue()
        }
        let Dtime = new Date().getTime() - Stime;
        let res = result
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })

    it('PerformanceTest_EnumConstantPerfTest_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let enumconstant = new EnumConstant()
        let result = enumconstant.hasValue()
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = enumconstant.hasValue()
        }
        let Dtime = new Date().getTime() - Stime;
        let res = enumconstant
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })

    it('PerformanceTest_EnumConstantPerfTest_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let enumconstant = new EnumConstant()
        let result = enumconstant.hasStringValue()
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = enumconstant.hasStringValue()
        }
        let Dtime = new Date().getTime() - Stime;
        let res = result
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    })


    // it('PerformanceTest_EnumConstantPerfTest_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let type = Type.of(new MyClass())
    //     let result = EnumConstant.create("a",type, 1)
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         result = EnumConstant.create("a",type, 1)
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let res = result
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    // })


    // it('PerformanceTest_EnumConstantPerfTest_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let type = Type.of(new MyClass())
    //     let result = EnumConstant.create("a",type, "a")
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         result = EnumConstant.create("a",type, "a")
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let res = result
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    // })

    // it('PerformanceTest_EnumConstantPerfTest_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let enumconstant = new EnumConstant()
    //     let result = enumconstant.toString()
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         result = enumconstant.toString()
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let res = result
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    // })
  })
}