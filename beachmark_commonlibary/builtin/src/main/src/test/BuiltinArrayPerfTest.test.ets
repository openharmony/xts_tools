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


export default function BuiltinArrayPerfTest() {
  describe('BuiltinArrayPerfTest', () => {
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

    it('PerformanceTest_BuiltinArrayTest_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray = new FixedArray<boolean>(5)
        let result = true;
        fixArray[1] = false;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = at(fixArray,1)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(false);
    })
    
    it('PerformanceTest_BuiltinArrayTest_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray = new FixedArray<boolean>(5)
        let result= new FixedArray<boolean>(5)
        fixArray[1] = false;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = copyWithin(fixArray,0)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[1]).assertEqual(false);
    })
    it('PerformanceTest_BuiltinArrayTest_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray = new FixedArray<boolean>(5)
        let result= new FixedArray<boolean>(5)
        fixArray[1] = true;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = copyWithin(fixArray,0,0)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[1]).assertEqual(true);
    })


    it('PerformanceTest_BuiltinArrayTest_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray = new FixedArray<boolean>(5)
        let result= new FixedArray<boolean>(5)
        fixArray[1] = true;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = copyWithin(fixArray,4,1,4)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.length).assertEqual(5);
        expect(result[4]).assertEqual(true);
    })


    it('PerformanceTest_BuiltinArrayTest_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray = new FixedArray<boolean>(5)
        fixArray[1] = true;
        let result= new FixedArray<boolean>(5)
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = fill(fixArray,false,0,6)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.length).assertEqual(5);
        expect(result[1]).assertEqual(false);
    })


    it('PerformanceTest_BuiltinArrayTest_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray = new FixedArray<boolean>(5);
        fixArray[0] = true;
        fixArray[1] = false;
        let result: boolean | undefined = false;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = find(fixArray, (value) => value === true)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(true); 
    })


    it('PerformanceTest_BuiltinArrayTest_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray = new FixedArray<boolean>(5);
        fixArray[0] = true;
        fixArray[1] = false;
        let result= 0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = findIndex(fixArray,(value) => value === false)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(1); 
    })


    it('PerformanceTest_BuiltinArrayTest_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray = new FixedArray<boolean>(5);
        fixArray[3] = false;
        fixArray[2] = true;
        fixArray[4] = true;
        let result: boolean | undefined= false
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = findLast(fixArray,(value) => value === true)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(true); 
    })


    it('PerformanceTest_BuiltinArrayTest_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<boolean> = [true,true,true];
        let result: boolean | undefined= false
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = every(fixArray,(value) => value === true);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(true); 
    })


    it('PerformanceTest_BuiltinArrayTest_01000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray = new FixedArray<boolean>(5);
        fixArray[3] = false;
        fixArray[4] = true;
        let result: boolean | undefined= false
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = some(fixArray,(value) => value === true)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(true); 
    })

    it('PerformanceTest_BuiltinArrayTest_01100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray = new FixedArray<boolean>(5);
        fixArray[3] = false;
        fixArray[2] = true;
        fixArray[4] = true;
        let result=0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = findLastIndex(fixArray,(value) => value === true)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(4); 
    })


    it('PerformanceTest_BuiltinArrayTest_01200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray = new FixedArray<boolean>(5);
        let result: boolean | undefined= false
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduce(fixArray,(previousValue, currentValue)=>{return previousValue && currentValue;})
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(false); 
    })
    it('PerformanceTest_BuiltinArrayTest_01300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray = new FixedArray<boolean>(5);
        fixArray[0]=true
        fixArray[3]=true
        fixArray[4]=true
        let result=0
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduce(fixArray,(previousValue, currentValue)=>{ return previousValue+(currentValue?1:0);},0)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3); 
    })


    it('PerformanceTest_BuiltinArrayTest_01400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray = new FixedArray<boolean>(5);
        fixArray[0]=true
        fixArray[3]=true
        fixArray[4]=true
        let result=0
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduceRight(fixArray,(previousValue, currentValue)=>{ return previousValue+(currentValue?1:0);},0)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3); 
    })


    it('PerformanceTest_BuiltinArrayTest_01500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray = new FixedArray<boolean>(5);
        let a = 1
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            a = 2
            forEach(fixArray,(value, index)=>{})
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(a).assertEqual(2); 
    })


    it('PerformanceTest_BuiltinArrayTest_01600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray = new FixedArray<boolean>(5);
        let result=new FixedArray<boolean>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = slice(fixArray,2)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.length).assertEqual(3); 
    })


    it('PerformanceTest_BuiltinArrayTest_01700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray = new FixedArray<boolean>(5);
        let result=new FixedArray<boolean>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = slice(fixArray,2,4)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.length).assertEqual(2); 
        expect(result[0]).assertEqual(false); 
        expect(result[1]).assertEqual(false); 
    })
    it('PerformanceTest_BuiltinArrayTest_01800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray = new FixedArray<boolean>(5);
        fixArray[1]=true
        fixArray[4]=true
        let result=0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = lastIndexOf(fixArray,true)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(4); 
    })


    it('PerformanceTest_BuiltinArrayTest_01900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray:FixedArray<boolean> = [true,false,true]
        let result="";
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = join(fixArray,'-');
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual('true-false-true');

    })

    it('PerformanceTest_BuiltinArrayTest_02000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray:FixedArray<boolean> = [true,false,true]
        let result="";
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toString(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual('true,false,true');

    })


    // it('PerformanceTest_BuiltinArrayTest_02100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let fixArray:FixedArray<boolean> = [true,false,true]
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         toLocaleString(fixArray,{}, {});
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    // })


    // it('PerformanceTest_BuiltinArrayTest_02200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let fixArray:FixedArray<boolean> = [true,false,true]
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         toLocaleString(fixArray,{});
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        
    // })


    it('PerformanceTest_BuiltinArrayTest_02300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray:FixedArray<boolean> = [true,false,true]
        let result="";
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toLocaleString(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual('true,false,true');
    })

    it('PerformanceTest_BuiltinArrayTest_02400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray:FixedArray<boolean> = [true,false,true]
        let result = new FixedArray<boolean>(5)
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSpliced(fixArray,1);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.length).assertEqual(1);
        expect(result[0]).assertEqual(true);
        
    })
    it('PerformanceTest_BuiltinArrayTest_02500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<boolean> =[true, false, true];
        let result = new FixedArray<boolean>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSpliced(fixArray,1, 1, false);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
        'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.length).assertEqual(3);
        expect(result[1]).assertEqual(false);
    })



    it('PerformanceTest_BuiltinArrayTest_02600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<boolean> =[true, false, true];
        let result = new FixedArray<boolean>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSpliced(fixArray,1,1)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
        'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.length).assertEqual(2);
        expect(result[0]).assertEqual(true);
        expect(result[1]).assertEqual(true);
    })


    it('PerformanceTest_BuiltinArrayTest_02700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<boolean> =[true, false, true];
        let result = false;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
             result = includes(fixArray,false)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(true);
    })


    it('PerformanceTest_BuiltinArrayTest_02800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<boolean> =[true, false, true];
        let result=0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = indexOf(fixArray,false)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(1);
    })


    it('PerformanceTest_BuiltinArrayTest_02900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<boolean> =[true, false, true];
        let result = new FixedArray<boolean>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSorted(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(false);
        expect(result[2]).assertEqual(true);
    })

    it('PerformanceTest_BuiltinArrayTest_03000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<boolean> =[true, false, true];
        let result= new FixedArray<boolean>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSorted(fixArray,(a:boolean,b:boolean)=>{
                return a === b ? 0:a?-1:1;
            })
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(true);
        expect(result[2]).assertEqual(false);

    })
    
    it('PerformanceTest_BuiltinArrayTest_03100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray:FixedArray<boolean> = [true,false,true]
        let result = new FixedArray<boolean>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reverse(fixArray)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(true);
        expect(result[2]).assertEqual(true);
    })
    

    it('PerformanceTest_BuiltinArrayTest_03200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray:FixedArray<boolean> = [true,false,true]
        let result = new FixedArray<boolean>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toReversed(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(true);
        expect(result[2]).assertEqual(true);
    })
    it('PerformanceTest_BuiltinArrayTest_03300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray:FixedArray<boolean> = [true,false,true]        
        let result = new FixedArray<boolean>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = with(fixArray,1, true);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[1]).assertEqual(true);
    })


    it('PerformanceTest_BuiltinArrayTest_03400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray:FixedArray<boolean> = [true,false,true]
        let resultct = new FixedArray<boolean>(5);
        let result = values(resultct)
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = values(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.next().value).assertEqual(true);
    })

    it('PerformanceTest_BuiltinArrayTest_03500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray:FixedArray<boolean> = [true, false]
        let resultct = new FixedArray<boolean>(5);
        let result = entries(resultct);
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
        expect(result.next().value![1]).assertEqual(false);
    })
    it('PerformanceTest_BuiltinArrayTest_03600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray:FixedArray<boolean> = [true,false,true]
        
        let result = new FixedArray<boolean>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = map(fixArray,(value: boolean) => !value);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(false);
        expect(result[1]).assertEqual(true);
    })


    it('PerformanceTest_BuiltinArrayTest_03700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray:FixedArray<boolean> = [true,false,true]
        let result = true;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduceRight(fixArray,(prev: boolean, curr: boolean) => prev && curr);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(false);
    })

    it('PerformanceTest_BuiltinArrayTest_03800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray:FixedArray<boolean> = [true,false,true]
        let result = new FixedArray<boolean>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = filter(fixArray,(value: boolean) => value);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.length).assertEqual(2);
        expect(result[0]).assertEqual(true);
    })
    it('PerformanceTest_BuiltinArrayTest_03900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<boolean> =[true, false, true];
        let fixArray2: FixedArray<boolean> =[true, false, true];
        let result= new FixedArray<boolean>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = concat(fixArray,fixArray2)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.length).assertEqual(6);
        expect(result[3]).assertEqual(true);
    })                  

    it('PerformanceTest_BuiltinArrayTest_04000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<boolean> =[true, false, true];
        let result= new FixedArray<boolean>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = concat(fixArray,[false,true] as FixedArray<boolean>)
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.length).assertEqual(5);
        expect(result[3]).assertEqual(false);
    })

    it('PerformanceTest_BuiltinArrayTest_04100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<boolean> = [true, false, true];
        let result = new FixedArray<boolean>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = sort(fixArray, (a: boolean, b: boolean): int => { return (a ? 1 : 0) - (b ? 1 : 0); })
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(false);
    })



        it('PerformanceTest_BuiltinArrayTest_04200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<boolean> = [true, false, true];
        let result = new FixedArray<boolean>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = sort(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(false);
    })

    it('PerformanceTest_BuiltinArrayTest_04300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<boolean> = [true, false, true];
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

    it('PerformanceTest_BuiltinArrayTest_04400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
        let result: Byte = 0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = at(fixArray, 1);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(2);
    })

    it('PerformanceTest_BuiltinArrayTest_04500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
        let result = new FixedArray<byte>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = copyWithin(fixArray, 0);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(1);
    })

    it('PerformanceTest_BuiltinArrayTest_04600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
        let result = new FixedArray<byte>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = copyWithin(fixArray, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(4);
    })

    it('PerformanceTest_BuiltinArrayTest_04700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
        let result = new FixedArray<byte>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = copyWithin(fixArray, 0, 3, 4);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(4);
    })

    it('PerformanceTest_BuiltinArrayTest_04800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
        let result = new FixedArray<byte>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = fill(fixArray, 9);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(9);
    })

    it('PerformanceTest_BuiltinArrayTest_04900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
        let result: Byte | undefined = undefined;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = find(fixArray, (value: byte) => value > 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(4);
    })

    it('PerformanceTest_BuiltinArrayTest_05000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
        let result: int = -1;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = findIndex(fixArray, (value: byte) => value > 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest_05100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
        let result: Byte | undefined = undefined;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = findLast(fixArray, (elem: byte) => elem < 5);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(4);
    })

    it('PerformanceTest_BuiltinArrayTest_05200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [2, 4, 6, 8, 10];
        let result: boolean = false;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = every(fixArray, (value: byte) => value % 2 === 0);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(true);
    })
    it('PerformanceTest_BuiltinArrayTest_05300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
        let result: boolean = false;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = some(fixArray, (value: byte) => value > 4);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(true);
    })

    it('PerformanceTest_BuiltinArrayTest_05400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
        let result: int = -1;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = findLastIndex(fixArray, (element: byte) => element < 5);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest_05500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
        let result: byte = 0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduce(fixArray, (previousValue: byte, currentValue: byte) => previousValue + currentValue as byte);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(6);
    })

    it('PerformanceTest_BuiltinArrayTest_05600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
        let result: int = 0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduce(fixArray, (previousValue: int, currentValue: byte) => previousValue + currentValue, 10);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(16);
    })

    it('PerformanceTest_BuiltinArrayTest_05700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
        let result: string = "";
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduceRight(fixArray, (previousValue: string, currentValue: byte) => previousValue + currentValue, "");
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual("321");
    })

    it('PerformanceTest_BuiltinArrayTest_05800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
        let result: byte = 0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            forEach(fixArray, (value: byte, index: int) => { if (index === 2) result = value; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest_05900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
        let result = new FixedArray<byte>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = slice(fixArray, 2);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest_06000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
        let result = new FixedArray<byte>(2);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = slice(fixArray, 1, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(2);
    })

    it('PerformanceTest_BuiltinArrayTest_06100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 2, 1];
        let result: int = -1;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = lastIndexOf(fixArray, 2);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest_06200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
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
        expect(result).assertEqual("1-2-3");
    })

    it('PerformanceTest_BuiltinArrayTest_06300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
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
        expect(result).assertEqual("1,2,3");
    })

        it('PerformanceTest_BuiltinArrayTest_06400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
        let result: string = "";
        let locales: Object = "en-US";
        let options: Object = {};
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toLocaleString(fixArray, locales, options);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.length).assertEqual(5);
    })

    it('PerformanceTest_BuiltinArrayTest_06500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
        let result: string = "";
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

    it('PerformanceTest_BuiltinArrayTest_06600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
        let result = "";
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toLocaleString(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual("1,2,3");
    })

    it('PerformanceTest_BuiltinArrayTest_06700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
        let result = new FixedArray<byte>(2);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSpliced(fixArray, 2);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.length).assertEqual(2);
    })

    it('PerformanceTest_BuiltinArrayTest_06800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
        let result = new FixedArray<byte>(4);
        // let fixArray2 : FixedArray<byte> = [1, 2];
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSpliced(fixArray,1,2,8);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[1]).assertEqual(8);
    })

    it('PerformanceTest_BuiltinArrayTest_06900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
        let result = new FixedArray<byte>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSpliced(fixArray, 1, 2);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[1]).assertEqual(4);
    })

    it('PerformanceTest_BuiltinArrayTest_07000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
        let result: boolean = false;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = includes(fixArray, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(true);
    })

    it('PerformanceTest_BuiltinArrayTest_07100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
        let result: int = -1;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = indexOf(fixArray, 4);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest_07200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [3, 1, 2];
        let result = new FixedArray<byte>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSorted(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(1);
    })

    it('PerformanceTest_BuiltinArrayTest_07300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [3, 1, 2];
        let result = new FixedArray<byte>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSorted(fixArray, (a: byte, b: byte): int => { return b - a; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest_07400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
        let result = new FixedArray<byte>(1);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reverse(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.length).assertEqual(3);
    })


        it('PerformanceTest_BuiltinArrayTest_07500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
        let result = new FixedArray<byte>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toReversed(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest_07600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
        let result = new FixedArray<byte>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = with(fixArray, 1, 9);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[1]).assertEqual(9);
    })

    it('PerformanceTest_BuiltinArrayTest_07700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
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
        expect(result.next().value).assertEqual(1);
    })

    it('PerformanceTest_BuiltinArrayTest_07800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
        let fixArray2: FixedArray<byte> = [3,2,1];
        let result = entries(fixArray2);
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

    it('PerformanceTest_BuiltinArrayTest_07900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
        let result = new FixedArray<byte>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = map(fixArray, (value: byte) => value * 2 as byte);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(2);
    })

    it('PerformanceTest_BuiltinArrayTest_08000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
        let result: byte = 0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduceRight(fixArray, (previousValue: byte, currentValue: byte) => previousValue + currentValue as byte);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(6);
    })

    it('PerformanceTest_BuiltinArrayTest_08100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3, 4, 5];
        let result = new FixedArray<byte>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = filter(fixArray, (v: byte) => v > 2);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest_08200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
        let fixArray2: FixedArray<byte> = [4, 5, 6];
        let result = new FixedArray<byte>(6);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = concat(fixArray, fixArray2);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[3]).assertEqual(4);
    })

    // it('PerformanceTest_BuiltinArrayTest_08300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let fixArray: FixedArray<byte> = [1, 2, 3];
    //     let result = new FixedArray<byte>(5);
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         result = concat(fixArray, [4, 5] as FixedArray<ConcatArray<byte>>);
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    //     expect(result[3]).assertEqual(4);
    // })

    it('PerformanceTest_BuiltinArrayTest_08400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [3, 1, 2];
        let result = new FixedArray<byte>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = sort(fixArray, (a: byte, b: byte): int => { return a - b; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(1);
    })

    it('PerformanceTest_BuiltinArrayTest_08500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [3, 1, 2];
        let result = new FixedArray<byte>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = sort(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(1);
    })


        it('PerformanceTest_BuiltinArrayTest_08600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<byte> = [1, 2, 3];
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

    it('PerformanceTest_BuiltinArrayTest_08700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30];
        let result: Short = 0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = at(fixArray, 1);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(20);
    })

    it('PerformanceTest_BuiltinArrayTest_08800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [1, 2, 3, 4, 5];
        let result = new FixedArray<short>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = copyWithin(fixArray, 0);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(1);
    })

    it('PerformanceTest_BuiltinArrayTest_08900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [1, 2, 3, 4, 5];
        let result = new FixedArray<short>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = copyWithin(fixArray, 0, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(4);
    })

    it('PerformanceTest_BuiltinArrayTest_09000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [1, 2, 3, 4, 5];
        let result = new FixedArray<short>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = copyWithin(fixArray, 0, 3, 4);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(4);
    })

    it('PerformanceTest_BuiltinArrayTest_09100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [1, 2, 3, 4, 5];
        let result = new FixedArray<short>(5);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = fill(fixArray, 9);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(9);
    })

    it('PerformanceTest_BuiltinArrayTest_09200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
        let result: Short | undefined = undefined;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = find(fixArray, (value: short) => value > 30);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(40);
    })

    it('PerformanceTest_BuiltinArrayTest_09300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
        let result: int = -1;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = findIndex(fixArray, (value: short) => value > 30);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest_09400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
        let result: Short | undefined = undefined;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = findLast(fixArray, (elem: short) => elem < 50);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(40);
    })

    it('PerformanceTest_BuiltinArrayTest_09500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [2, 4, 6, 8, 10];
        let result: boolean = false;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = every(fixArray, (value: short) => value % 2 === 0);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(true);
    })

    it('PerformanceTest_BuiltinArrayTest_09600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [1, 2, 3, 4, 5];
        let result: boolean = false;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = some(fixArray, (value: short) => value > 4);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(true);
    })

    it('PerformanceTest_BuiltinArrayTest_09700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
        let result: int = -1;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = findLastIndex(fixArray, (element: short) => element < 50);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest_09800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30];
        let result: short = 0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduce(fixArray, (previousValue: short, currentValue: short) => previousValue + currentValue as short);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(60);
    })

    it('PerformanceTest_BuiltinArrayTest_09900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30];
        let result: int = 0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduce(fixArray, (previousValue: int, currentValue: short) => previousValue + currentValue, 100);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(160);
    })

    it('PerformanceTest_BuiltinArrayTest_10000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30];
        let result: string = "";
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduceRight(fixArray, (previousValue: string, currentValue: short) => previousValue + currentValue, "");
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual("302010");
    })

    it('PerformanceTest_BuiltinArrayTest_10100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30];
        let result: short = 0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            forEach(fixArray, (value: short, index: int) => { if (index === 2) result = value; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(30);
    })

    it('PerformanceTest_BuiltinArrayTest_10200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
        let result = new FixedArray<short>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = slice(fixArray, 2);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(30);
    })

    it('PerformanceTest_BuiltinArrayTest_10300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
        let result = new FixedArray<short>(2);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = slice(fixArray, 1, 3);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(20);
    })

    it('PerformanceTest_BuiltinArrayTest_10400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30, 20, 10];
        let result: int = -1;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = lastIndexOf(fixArray, 20);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest_10500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30];
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
        expect(result).assertEqual("10-20-30");
    })

    it('PerformanceTest_BuiltinArrayTest_10600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30];
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
        expect(result).assertEqual("10,20,30");
    })

    // it('PerformanceTest_BuiltinArrayTest_10700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let fixArray: FixedArray<short> = [10, 20, 30];
    //     let locales: Object = "en-US";
    //     let options: Object = {};
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         toLocaleString(fixArray, locales, options);
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    // })


    //     it('PerformanceTest_BuiltinArrayTest_10800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let fixArray: FixedArray<short> = [10, 20, 30];
    //     let locales: Object = "zh-CN";
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         toLocaleString(fixArray, locales);
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    // })

    // it('PerformanceTest_BuiltinArrayTest_10900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //     let fixArray: FixedArray<short> = [10, 20, 30];
    //     let Stime = new Date().getTime();
    //     for (let i = 0; i < BASE_COUNT; i++) {
    //         toLocaleString(fixArray);
    //     }
    //     let Dtime = new Date().getTime() - Stime;
    //     let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //     console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
    //     performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
    //         'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
    // })

    it('PerformanceTest_BuiltinArrayTest_11000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
        let result = new FixedArray<short>(2);
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

    it('PerformanceTest_BuiltinArrayTest_11100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
        let result = new FixedArray<short>(4);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSpliced(fixArray, 1, 2, 80);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[1]).assertEqual(80);
    })

    it('PerformanceTest_BuiltinArrayTest_11200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
        let result = new FixedArray<short>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSpliced(fixArray, 1, 2);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[1]).assertEqual(40);
    })

    it('PerformanceTest_BuiltinArrayTest_11300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
        let result: boolean = false;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = includes(fixArray, 30);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(true);
    })

    it('PerformanceTest_BuiltinArrayTest_11400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30, 40, 50];
        let result: int = -1;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = indexOf(fixArray, 40);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest_11500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [30, 10, 20];
        let result = new FixedArray<short>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSorted(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(10);
    })

    it('PerformanceTest_BuiltinArrayTest_11600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [30, 10, 20];
        let result = new FixedArray<short>(1);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toSorted(fixArray, (a: short, b: short): int => { return b - a; });
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(30);
    })

    it('PerformanceTest_BuiltinArrayTest_11700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30];
        let result = new FixedArray<short>(1);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reverse(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result.length).assertEqual(3);
    })

    it('PerformanceTest_BuiltinArrayTest_11800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30];
        let result = new FixedArray<short>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = toReversed(fixArray);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(30);
    })

    it('PerformanceTest_BuiltinArrayTest_11900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30];
        let result = new FixedArray<short>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = with(fixArray, 1, 90);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[1]).assertEqual(90);
    })

    it('PerformanceTest_BuiltinArrayTest_12000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30];
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
        expect(result.next().value).assertEqual(10);
    })

    it('PerformanceTest_BuiltinArrayTest_12100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30];
        let fixArray1: FixedArray<short> = [1, 2, 3];
        let result = entries(fixArray1);
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

    it('PerformanceTest_BuiltinArrayTest_12200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30];
        let result = new FixedArray<short>(3);
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = map(fixArray, (value: short) => value * 2 as short);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result[0]).assertEqual(20);
    })

    it('PerformanceTest_BuiltinArrayTest_12300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fixArray: FixedArray<short> = [10, 20, 30];
        let result: short = 0;
        let Stime = new Date().getTime();
        for (let i = 0; i < BASE_COUNT; i++) {
            result = reduceRight(fixArray, (previousValue: short, currentValue: short) => previousValue + currentValue as short);
        }
        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime format: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'util', 'format',
            'function format(format: string, ...args: Object[]): string;', arkTsAveragedTime);
        expect(result).assertEqual(60);
    })
	
    })
}