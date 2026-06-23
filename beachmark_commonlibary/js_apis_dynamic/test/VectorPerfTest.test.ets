import {
  describe, it, TestType, Size, Level, beforeEach, afterAll, expect
} from "@ohos/hypium";
import performance from './Performance.util';
import { Vector } from '@kit.ArkTS';
import { systemDateTime } from '@kit.BasicServicesKit';
import { util } from '@kit.ArkTS';


declare class ArkTools {
  static forceFullGC(): void;
}

export default function VectorPerfTest(): void {
  describe('VectorPerfTest', () => {
    const BASE_COUNT = 1000;
    const UNIT_TIME = 1000000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('VectorPerfTest_number_length_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      let res = vector.length;
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.length;
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime =  Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_number_length_0100: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'length',
        'get length(): number;', arkTsAveragedTime);
    })

    it('VectorPerfTest_Vector_Constructor_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = new Vector<string | number | Array<number>>();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new Vector<string | number | Array<number>>();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_Vector_Constructor_0200: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'constructor',
        'constructor();', arkTsAveragedTime);
    })

    it('VectorPerfTest_boolean_add_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<string | number | Array<number>>();
      let res = vector.add("a");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.add("a");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_boolean_add_0300: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'add',
        'add(element: T): boolean;', arkTsAveragedTime);
    })

    it('VectorPerfTest_void_insert_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<string | number | boolean>();
      vector.insert("A", 0);
      let res = vector.insert(0, 1);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.insert(0, 1);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_void_insert_0400: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'insert',
        'insert(element: T, index: number): void;', arkTsAveragedTime);
    })

    it('VectorPerfTest_boolean_has_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<string>();
      vector.add("squirrel");
      let res = vector.has("squirrel");
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.has("squirrel");
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_boolean_has_0500: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'has',
        'has(element: T): boolean;', arkTsAveragedTime);
    })

    it('VectorPerfTest_number_getIndexOf_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(2);
      vector.add(1);
      vector.add(2);
      vector.add(4);
      let res = vector.getIndexOf(2);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.getIndexOf(2);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_number_getIndexOf_0600: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'getIndexOf',
        'getIndexOf(element: T): number;', arkTsAveragedTime);
    })

    it('VectorPerfTest_number_removeByIndex_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vectors: Vector<number>[] = [];
      for (let i = 0; i < BASE_COUNT; i++) {
        let vector = new Vector<number>();
        vector.add(0);
        vector.add(1);
        vectors.push(vector);
      }
      let res = vectors[0].get(1);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vectors[i].removeByIndex(1);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_number_removeByIndex_0700: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'removeByIndex',
        'removeByIndex(index: number): T;', arkTsAveragedTime);
    })

    it('VectorPerfTest_boolean_remove_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vectors: Vector<number>[] = [];
      for (let i = 0; i < BASE_COUNT; i++) {
        let vector = new Vector<number>();
        vector.add(2);
        vector.add(4);
        vectors.push(vector);
      }
      let res = vectors[0].has(2);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vectors[i].remove(2);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_boolean_remove_0800: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'remove',
        'remove(element: T): boolean;', arkTsAveragedTime);
    })

    it('VectorPerfTest_void_removeByRange_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vectors: Vector<number>[] = [];
      for (let i = 0; i < BASE_COUNT; i++) {
        let vector = new Vector<number>();
        vector.add(0);
        vector.add(1);
        vector.add(2);
        vectors.push(vector);
      }
      let res: void = vectors[0].removeByRange(1, 2);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vectors[i].removeByRange(1, 2);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_void_removeByRange_0900: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'removeByRange',
        'removeByRange(fromIndex: number, toIndex: number): void;', arkTsAveragedTime);
    })

    it('VectorPerfTest_void_replaceAllElements_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector.replaceAllElements((value: number): number => {
        return value;
      });
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.replaceAllElements((value: number): number => {
          return value;
        });
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_void_replaceAllElements_1000: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'replaceAllElements',
        'replaceAllElements(callbackFn: (value: T, index?: number, vector?: Vector<T>) => T, thisArg?: Object): void;',
        arkTsAveragedTime);
    })

    it('VectorPerfTest_void_forEach_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector.forEach((value: number, index?: number): void => {});
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.forEach((value: number, index?: number): void => {});
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_void_forEach_1100: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'forEach',
        'forEach(callbackFn: (value: T, index?: number, vector?: Vector<T>) => void, thisArg?: Object): void;',
        arkTsAveragedTime);
    })

    it('VectorPerfTest_void_sort_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector.sort((a: number, b: number) => a - b);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.sort((a: number, b: number) => a - b);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_void_sort_1200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'sort',
        'sort(comparator?: (firstValue: T, secondValue: T) => number): void;', arkTsAveragedTime);
    })

    it('VectorPerfTest_Vector_subVector_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      vector.add(6);
      vector.add(8);
      let res = vector.subVector(0, 4);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.subVector(0, 4);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_Vector_subVector_1300: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'subVector',
        'subVector(fromIndex: number, toIndex: number): Vector<T>;', arkTsAveragedTime);
    })

    it('VectorPerfTest_void_clear_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vectors: Vector<number>[] = [];
      for (let i = 0; i < BASE_COUNT; i++) {
        let vector = new Vector<number>();
        vector.add(2);
        vector.add(4);
        vectors.push(vector);
      }
      let res = vectors[0].clear();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vectors[i].clear();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_void_clear_1400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'clear', 'clear(): void;', arkTsAveragedTime);
    })

    it('VectorPerfTest_Vector_clone_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector.clone();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.clone();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_Vector_clone_1500: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'clone', 'clone(): Vector<T>;', arkTsAveragedTime);
    })

    it('VectorPerfTest_number_getCapacity_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector.getCapacity();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.getCapacity();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_number_getCapacity_1600: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'getCapacity',
        'getCapacity(): number;', arkTsAveragedTime);
    })

    it('VectorPerfTest_Array_convertToArray_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector.convertToArray();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.convertToArray();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_Array_convertToArray_1700: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'convertToArray',
        'convertToArray(): Array<T>;', arkTsAveragedTime);
    })

    it('VectorPerfTest_boolean_isEmpty_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector.isEmpty();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.isEmpty();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_boolean_isEmpty_1700: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'isEmpty',
        'isEmpty(): boolean;', arkTsAveragedTime);
    })

    it('VectorPerfTest_void_increaseCapacityTo_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector.increaseCapacityTo(12);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.increaseCapacityTo(12);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_void_increaseCapacityTo_1800: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'increaseCapacityTo',
        'increaseCapacityTo(newCapacity: number): void;', arkTsAveragedTime);
    })

    it('VectorPerfTest_void_trimToCurrentLength_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector.trimToCurrentLength();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.trimToCurrentLength();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_void_trimToCurrentLength_1900: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'trimToCurrentLength',
        'trimToCurrentLength(): void;', arkTsAveragedTime);
    })

    it('VectorPerfTest_string_toString_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector.toString();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.toString();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_string_toString_2000: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'toString',
        'toString(): string;', arkTsAveragedTime);
    })

    it('VectorPerfTest_void_copyToArray_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let targetArray: Array<number> = new Array<number>(4);
      let res = vector.copyToArray(targetArray);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.copyToArray(targetArray);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_void_copyToArray_2100: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'copyToArray',
        'copyToArray(array: Array<T>): void;', arkTsAveragedTime);
    })

    it('VectorPerfTest_number_getFirstElement_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector.getFirstElement();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.getFirstElement();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_number_getFirstElement_2200: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'getFirstElement',
        'getFirstElement(): T;', arkTsAveragedTime);
    })

    it('VectorPerfTest_number_getLastElement_2300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector.getLastElement();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.getLastElement();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_number_getLastElement_2300: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'getLastElement',
        'getLastElement(): T;', arkTsAveragedTime);
    })

    it('VectorPerfTest_number_getLastIndexFrom_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector.getLastIndexFrom(4, 3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.getLastIndexFrom(4, 3);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_number_getLastIndexFrom_2400: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'getLastIndexFrom',
        'getLastIndexFrom(element: T, index: number): number;', arkTsAveragedTime);
    })

    it('VectorPerfTest_number_getIndexFrom_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector.getIndexFrom(4, 3);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.getIndexFrom(4, 3);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_number_getIndexFrom_2500: ' +
        arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'getIndexFrom',
        'getIndexFrom(element: T, index: number): number;', arkTsAveragedTime);
    })

    it('VectorPerfTest_void_setLength_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector.setLength(8);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.setLength(8);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_void_setLength_2600: ' + arkTsAveragedTime +
        'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'setLength',
        'setLength(newSize: number): void;', arkTsAveragedTime);
    })

    it('VectorPerfTest_number_get_2700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector.get(2);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.get(2);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_number_get_2700: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'get',
        'get(index: number): T;', arkTsAveragedTime);
    })

    it('VectorPerfTest_number_set_2800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector.set(2, 10);
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector.set(2, 10);
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info('arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_number_set_2800: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'set',
        'set(index: number, element: T): T;', arkTsAveragedTime);
    })

    it('VectorPerfTest_Vector_iterator_2900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let vector = new Vector<number>();
      vector.add(2);
      vector.add(4);
      vector.add(5);
      vector.add(4);
      let res = vector[Symbol.iterator]();
      let Stime = systemDateTime.getTime(true);
      for (let i = 0; i < BASE_COUNT; i++) {
        res = vector[Symbol.iterator]();
      }
      let Dtime = systemDateTime.getTime(true) - Stime;
      let res1 = res;
      let arkTsAveragedTime = Dtime / BASE_COUNT;
      console.info(
        'arkTsVectorPerfTest arkTsAveragedTime VectorPerfTest_Vector_iterator_2900: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.vector', 'Vector', 'Symbol.iterator',
        '[Symbol.iterator](): IterableIterator<T>;', arkTsAveragedTime);
    })
  })
}