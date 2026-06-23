import {
  describe, it, TestType, Size, Level, beforeEach, afterAll, expect
} from "@ohos/hypium";
import performance from './Performance.util';
import { HashMap } from '@kit.ArkTS';
import { systemDateTime } from '@kit.BasicServicesKit';
import { util } from '@kit.ArkTS';
import { TreeMap } from '@kit.ArkTS';


declare class ArkTools {
  static forceFullGC(): void;
}

export default function TreeMapPerfTest(): void {
  describe('TreeMapPerfTest', () => {
    const BASE_COUNT = 1000;
    const UNIT_TIME = 1000000;

    beforeEach(() => {
      ArkTools.forceFullGC();
    })

    afterAll(() => {
      performance.save('apiPerformance.txt');
    })


    it('TreeMapPerfTest_boolean_constructor_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let res = new TreeMap<number, number>();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = new TreeMap<number, number>();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_boolean_constructor_0100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'constructor',
          'constructor(comparator?:(firstValue: K, secondValue: K) => boolean)', arkTsAveragedTime);
        expect(res1 !== null).assertTrue();
        done();
      }
    );

    it('TreeMapPerfTest_boolean_isEmpty_0200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMap : TreeMap<number, number>= new TreeMap<number, number>();
        let res = treeMap.isEmpty();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMap.isEmpty();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_boolean_isEmpty_0200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'isEmpty',
          'isEmpty(): boolean;', arkTsAveragedTime);
        expect(res1 === true).assertTrue();
        done();
      }
    );

    it('TreeMapPerfTest_boolean_hasKey_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMap : TreeMap<string, number> = new TreeMap<string, number>();
        treeMap.set("squirrel", 123);
        let res = treeMap.hasKey("squirrel");
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMap.hasKey("squirrel");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_boolean_hasKey_0300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'hasKey',
          'hasKey(key: K): boolean;', arkTsAveragedTime);
        expect(res1 === true).assertTrue();
        done();
      }
    );

    it('TreeMapPerfTest_boolean_hasValue_0400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMap : TreeMap<string, number> = new TreeMap<string, number>();
        treeMap.set("squirrel", 123);
        let res = treeMap.hasValue(123);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMap.hasValue(123);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_boolean_hasValue_0400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'hasValue',
          'hasValue(value: V): boolean;', arkTsAveragedTime);
        expect(res1 === true).assertTrue();
        done();
      }
    );

    it('TreeMapPerfTest_number_get_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMap : TreeMap<string, number> = new TreeMap<string, number>();
        treeMap.set("squirrel", 123);
        treeMap.set("sparrow", 356);
        let res = treeMap.get("sparrow");
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMap.get("sparrow");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_number_get_0500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'get',
          'get(key: K): V;', arkTsAveragedTime);
        expect(res1 === 356).assertTrue();
        done();
      }
    );

    it('TreeMapPerfTest_string_getFirstKey_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMap : TreeMap<string, number> = new TreeMap<string, number>();
        treeMap.set("squirrel", 123);
        treeMap.set("sparrow", 356);
        let res = treeMap.getFirstKey();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMap.getFirstKey();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_string_getFirstKey_0600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'getFirstKey',
          'getFirstKey(): K;', arkTsAveragedTime);
        expect(res1 === "sparrow").assertTrue();
        done();
      }
    );

    it('TreeMapPerfTest_string_getLastKey_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMap : TreeMap<string, number> = new TreeMap<string, number>();
        treeMap.set("squirrel", 123);
        treeMap.set("sparrow", 356);
        let res = treeMap.getLastKey();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMap.getLastKey();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_string_getLastKey_0700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'getLastKey',
          'getLastKey(): K;', arkTsAveragedTime);
        expect(res1 === "squirrel").assertTrue();
        done();
      }
    );

    it('TreeMapPerfTest_void_setAll_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMap : TreeMap<string, number> = new TreeMap<string, number>();
        treeMap.set("squirrel", 123);
        treeMap.set("sparrow", 356);
        let target : TreeMap<string, number> = new TreeMap<string, number>();
        let res: void = target.setAll(treeMap);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = target.setAll(treeMap);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_void_setAll_0800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'setAll',
          'setAll(map: TreeMap<K, V>): void;', arkTsAveragedTime);
        expect(target.get("squirrel") === 123).assertTrue();
        expect(target.get("sparrow") === 356).assertTrue();
        done();
      }
    );

    it('TreeMapPerfTest_Object_set_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMap : TreeMap<string, number> = new TreeMap<string, number>();
        let res = treeMap.set("squirrel", 123);;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMap.set("squirrel", 123);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_Object_set_0900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'set',
          'set(key: K, value: V): Object;', arkTsAveragedTime);
        expect(res1 !== null).assertTrue();
        done();
      }
    );

    it('TreeMapPerfTest_number_remove_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMaps: TreeMap<string, number>[] = [];
        for (let i = 0; i < BASE_COUNT; i++) {
          let item = new TreeMap<string, number>();
          item.set("squirrel", 123);
          item.set("sparrow", 356);
          treeMaps.push(item);
        }
        let res = treeMaps[0].get("sparrow");
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMaps[i].remove("sparrow");
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_number_remove_1000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'remove',
          'remove(key: K): V;', arkTsAveragedTime);
        expect(res1 == undefined).assertTrue();
        done();
      }
    );

    it('TreeMapPerfTest_number_getLowerKey_1100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMap : TreeMap<number, string> = new TreeMap();
        treeMap.set(1, 'one');
        treeMap.set(2, 'two');
        treeMap.set(3, 'three');
        treeMap.set(4, 'four');
        let res = treeMap.getLowerKey(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMap.getLowerKey(3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_number_getLowerKey_1100: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'getLowerKey',
          'getLowerKey(key: K): K;', arkTsAveragedTime);
        expect(res1 === 2).assertTrue();
        done();
      }
    );

    it('TreeMapPerfTest_number_getHigherKey_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMap : TreeMap<number, string> = new TreeMap();
        treeMap.set(1, 'one');
        treeMap.set(2, 'two');
        treeMap.set(3, 'three');
        treeMap.set(4, 'four');
        let res = treeMap.getHigherKey(3);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMap.getHigherKey(3);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_number_getHigherKey_1200: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'getHigherKey',
          'getHigherKey(key: K): K;', arkTsAveragedTime);
        expect(res1).assertEqual(4);
        done();
      }
    );

    it('TreeMapPerfTest_boolean_replace_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMap : TreeMap<string, number> = new TreeMap<string, number>();
        treeMap.set("sparrow", 123);
        let res = treeMap.replace("sparrow", 357);
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMap.replace("sparrow", 357);
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_boolean_replace_1300: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'replace',
          'replace(key: K, newValue: V): boolean;', arkTsAveragedTime);
        expect(res1 === true).assertTrue();
        expect(treeMap.get("sparrow") === 357).assertTrue();
        done();
      }
    );

    it('TreeMapPerfTest_void_clear_1400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMaps: TreeMap<string, number>[] = [];
        for (let i = 0; i < BASE_COUNT; i++) {
          let item = new TreeMap<string, number>();
          item.set("squirrel", 123);
          item.set("sparrow", 356);
          treeMaps.push(item);
        }
        let res: void = treeMaps[0].clear();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMaps[i].clear();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = treeMaps[0];
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_void_clear_1400: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'clear',
          'clear(): void;', arkTsAveragedTime);
        expect(treeMaps[0].length === 0).assertTrue();
        done();
      }
    );

    it('TreeMapPerfTest_IterableIterator_keys_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMap : TreeMap<string, number> = new TreeMap<string, number>();
        treeMap.set("squirrel", 123);
        treeMap.set("sparrow", 356);
        let res = treeMap.keys();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMap.keys();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_IterableIterator_keys_1500: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'keys',
          'keys(): IterableIterator<K>;', arkTsAveragedTime);
        expect(res !== undefined).assertTrue();
        done();
      }
    );

    it('TreeMapPerfTest_IterableIterator_values_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMap = new TreeMap<string, number>();
        treeMap.set("squirrel", 123);
        treeMap.set("sparrow", 356);
        let res = treeMap.values();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMap.values();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_IterableIterator_values_1600: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'values',
          'values(): IterableIterator<V>;', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      }
    );

    it('TreeMapPerfTest_void_forEach_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMap : TreeMap<string, number> = new TreeMap();
        treeMap.set("sparrow", 123);
        treeMap.set("gull", 357);
        let res = treeMap.forEach((value ?: number, key ?: string) : void => {});
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMap.forEach((value ?: number, key ?: string) : void => {});
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_void_forEach_1700: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'forEach',
          'forEach(callbackFn: (value?: V, key?: K, map?: TreeMap<K, V>) => void, thisArg?: Object): void;', arkTsAveragedTime);
        done();
      }
    );

    it('TreeMapPerfTest_IterableIterator_entries_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMap : TreeMap<string, number> = new TreeMap();
        treeMap.set("squirrel", 123);
        treeMap.set("sparrow", 356);
        let res = treeMap.entries();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMap.entries();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_IterableIterator_entries_1800: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'entries',
          'entries(): IterableIterator<[K, V]>;', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      }
    );

    it('TreeMapPerfTest_number_length_1900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMap: TreeMap<string, number> = new TreeMap<string, number>();
        treeMap.set("squirrel", 123);
        let res = treeMap.length;
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMap.length;
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_number_length_1900: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'length',
          'get length(): number;', arkTsAveragedTime);
        expect(res1 >= 0).assertTrue();
        done();
      }
    );

    it('TreeMapPerfTest_IterableIterator_symbolIterator_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1,
      (done: Function) => {
        let treeMap: TreeMap<string, number> = new TreeMap<string, number>();
        treeMap.set("squirrel", 123);
        let res = treeMap[Symbol.iterator]();
        let Stime = systemDateTime.getTime(true);
        for (let i = 0; i < BASE_COUNT; i++) {
          res = treeMap[Symbol.iterator]();
        }
        let Dtime = systemDateTime.getTime(true) - Stime;
        let res1 = res;
        let arkTsAveragedTime = Dtime / BASE_COUNT;
        console.info('arkTsTreeMapPerfTest arkTsAveragedTime TreeMapPerfTest_IterableIterator_symbolIterator_2000: ' + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('ohos.util', 'TreeMap', 'Symbol.iterator',
          '[Symbol.iterator](): IterableIterator<[K, V]>;', arkTsAveragedTime);
        expect(res1 !== undefined).assertTrue();
        done();
      }
    );
  })
}
