import {
  describe, it, TestType, Size, Level, beforeEach, afterAll, expect
} from "@ohos/hypium";
import performance from './Performance.util';
import { systemDateTime } from '@kit.BasicServicesKit';
import { TreeSet } from '@kit.ArkTS';

declare class ArkTools {
  static forceFullGC(): void;
}

export default function TreeSetPerfTest(): void {
  describe('TreeSetPerfTest', () => {
    const BASE_COUNT = 1000;
    const UNIT_TIME = 1000000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })

    it('TreeSetPerfTest_boolean_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeSet: TreeSet<string | number | boolean | String> = new TreeSet<string | number | boolean | String>();
        let res = treeSet;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new TreeSet<string | number | boolean | String>();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_constructor_0100: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeSet', 'constructor',
          'constructor(comparator?: (firstValue: T, secondValue: T) => boolean);', arkTsAveragedTime);
        expect(res !== null).assertTrue();
        done();
      })

    it('TreeSetPerfTest_boolean_isEmpty_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        const treeSet: TreeSet<string | number | boolean | String> = new TreeSet<string | number | boolean | String>();
        let result = treeSet.isEmpty();
        let res = result;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeSet.isEmpty();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info(
          'arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_isEmpty_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeSet', 'isEmpty',
          'isEmpty(): boolean;', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('TreeSetPerfTest_boolean_has_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeSet: TreeSet<number> = new TreeSet<number>();
        treeSet.add(123);
        let result = treeSet.has(123);
        let res = result;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeSet.has(123);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_has_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeSet', 'has',
          'has(value: T): boolean;', arkTsAveragedTime);
        expect(res).assertTrue();
        done();
      })

    it('TreeSetPerfTest_String_getFirstValue_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeSet: TreeSet<string> = new TreeSet();
        treeSet.add("squirrel");
        treeSet.add("sparrow");
        let result = treeSet.getFirstValue();
        let res = result;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeSet.getFirstValue();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_String_getFirstValue_0400: ' + arkTsAveragedTime +
          'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeSet', 'getFirstValue',
          'getFirstValue(): T;', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('TreeSetPerfTest_String_getLastValue_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeSet: TreeSet<string> = new TreeSet();
        treeSet.add("squirrel");
        treeSet.add("sparrow");
        let result = treeSet.getLastValue();
        let res = result;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeSet.getLastValue();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info(
          'arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_String_getLastValue_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeSet', 'getLastValue',
          'getLastValue(): T;', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('TreeSetPerfTest_boolean_add_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeSet: TreeSet<string> = new TreeSet<string>();
        let result = treeSet.add("squirrel");
        let res = result;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeSet.add("squirrel");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_add_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeSet', 'add',
          'add(value: T): boolean;', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('TreeSetPerfTest_boolean_remove_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeSets: TreeSet<string>[] = [];
        for (let i = 0; i < BASE_COUNT; i++) {
          let item = new TreeSet<string>();
          item.add("squirrel");
          item.add("sparrow");
          treeSets.push(item);
        }
        let res = treeSets[0].has("sparrow");
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeSets[i].remove("sparrow");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_remove_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeSet', 'remove',
          'remove(value: T): boolean;', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('TreeSetPerfTest_String_getLowerValue_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeSet: TreeSet<string> = new TreeSet();
        treeSet.add("squirrel");
        treeSet.add("sparrow");
        treeSet.add("gander");
        let result = treeSet.getLowerValue("sparrow");
        let res = result;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeSet.getLowerValue("sparrow");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_String_getLowerValue_0800: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeSet', 'getLowerValue',
          'getLowerValue(key: T): T;', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('TreeSetPerfTest_String_getHigherValue_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeSet: TreeSet<string> = new TreeSet();
        treeSet.add("squirrel");
        treeSet.add("sparrow");
        treeSet.add("gander");
        let result = treeSet.getHigherValue("sparrow");
        let res = result;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeSet.getHigherValue("sparrow");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_String_getHigherValue_0900: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeSet', 'getHigherValue',
          'getHigherValue(key: T): T;', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('TreeSetPerfTest_String_popFirst_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeSets: TreeSet<string>[] = [];
        for (let i = 0; i < BASE_COUNT; i++) {
          let item = new TreeSet<string>();
          item.add("squirrel");
          item.add("sparrow");
          treeSets.push(item);
        }
        let res = treeSets[0].getFirstValue();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeSets[i].popFirst();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info(
          'arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_String_popFirst_1000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeSet', 'popFirst',
          'popFirst(): T;', arkTsAveragedTime);
        expect(res == undefined).assertTrue();
        done();
      })

    it('TreeSetPerfTest_String_popLast_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeSets: TreeSet<string>[] = [];
        for (let i = 0; i < BASE_COUNT; i++) {
          let item = new TreeSet<string>();
          item.add("squirrel");
          item.add("sparrow");
          treeSets.push(item);
        }
        let res = treeSets[0].getLastValue();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeSets[i].popLast();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_String_popLast_1100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeSet', 'popLast',
          'popLast(): T;', arkTsAveragedTime);
        expect(res == undefined).assertTrue();
        done();
      })

    it('TreeSetPerfTest_void_clear_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeSets: TreeSet<string>[] = [];
        for (let i = 0; i < BASE_COUNT; i++) {
          let item = new TreeSet<string>();
          item.add("squirrel");
          item.add("sparrow");
          treeSets.push(item);
        }
        let res: void = treeSets[0].clear();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeSets[i].clear();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = treeSets[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_void_clear_1200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeSet', 'clear',
          'clear(): void;', arkTsAveragedTime);
        expect(treeSets[0].length === 0).assertTrue();
        done();
      })

    it('TreeSetPerfTest_IterableIterator<string>_values_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeSet: TreeSet<string> = new TreeSet<string>();
        treeSet.add("squirrel");
        treeSet.add("sparrow");
        let it = treeSet.values();
        let t: IteratorResult<string> = it.next();
        while(!t.done) {
          t = it.next();
        }
        let res = it;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeSet.values();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info(
          'arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_IterableIterator<string>_values_1300: ' +
            arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeSet', 'values',
          'values(): IterableIterator<T>;', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('TreeSetPerfTest_void_forEach_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeSet : TreeSet<string> = new TreeSet();
        treeSet.add("sparrow");
        treeSet.add("gull");
        let callback = (value ?: string, key ?: string): void => {};
        let res = treeSet.forEach(callback);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeSet.forEach(callback);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_void_forEach_1400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeSet', 'forEach',
          'forEach(callbackFn: (value?: T, key?: T, set?: TreeSet<T>) => void, thisArg?: String): void;',
          arkTsAveragedTime);
        expect(res == undefined).assertTrue();
        done();
      })

    it('TreeSetPerfTest_ IterableIterator<[String, String]>_entries_1500', TestType.FUNCTION | Size.MEDIUMTEST
      | Level.LEVEL1,
      (done: Function) => {
        let treeSet: TreeSet<string> = new TreeSet<string>();
        treeSet.add("squirrel");
        treeSet.add("sparrow");
        let it = treeSet.entries();
        let t: IteratorResult<String[]> = it.next();
        while(!t.done) {
          t = it.next();
        }
        let res = it;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeSet.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info(
          'arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_IterableIterator<[String, String]>_entries_1500: ' +
            arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeSet', 'entries',
          'entries(): IterableIterator<[T, T]>;', arkTsAveragedTime);
        expect(res != undefined).assertTrue();
        done();
      })

    it('TreeSetPerfTest_IterableIterator<String>_Symbol_iterator_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeSet: TreeSet<string> = new TreeSet<string>();
        treeSet.add("squirrel");
        treeSet.add("sparrow");
        let numbers = Array.from(treeSet.values());
        let iter = treeSet[Symbol.iterator]();
        let temp = iter.next().value;
        while(temp != undefined) {
          temp = iter.next().value;
        }
        let res = iter;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeSet[Symbol.iterator]();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_IterableIterator<String>_Symbol_iterator_1600: ' +
          arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeSet', 'Symbol.iterator',
          '[Symbol.iterator](): IterableIterator<T>;', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      })

    it('TreeSetPerfTest_number_length_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeSet: TreeSet<string> = new TreeSet<string>();
        treeSet.add("squirrel");
        let res = treeSet.length;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeSet.length;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_number_length_1700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeSet', 'length',
          'get length(): number;', arkTsAveragedTime);
        expect(res1 >= 0).assertTrue();
        done();
      })
  })
}