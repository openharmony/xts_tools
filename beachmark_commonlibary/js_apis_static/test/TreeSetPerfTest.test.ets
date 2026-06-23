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
import { TreeSet, TreeSetForEachCb } from '@kit.ArkTS';
import { TreeSetComparator } from '@kit.ArkTS'

export default function TreeSetPerfTest(): void {
  describe('TreeSetTest', () => {
    const BASE_COUNT = 50000;
    const BASE_COUNT_BIG = 500000;
    const UNIT_TIME = 1000000;

    beforeEach(() => {
      let ret = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret);
      let ret1 = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret1);
    })

    afterAll(() => {
      performance.save('apiTreeSet.txt');
    })

    it('TreeSetPerfTest_Constructor_Default_0100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      // 修复：统一使用 string 类型
      let res: TreeSet<string>;
      let Stime = new Date().getTime();
      res = new TreeSet<string>()
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new TreeSet<string>();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_Constructor_Default_0100: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'constructor',
        'constructor(comparator?: (firstValue: T, secondValue: T) => number)', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_TreeSet_Constructor_WithComparator_0200', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      // 修改：Comparator 应该返回 number 而不是 boolean
      let comparator = (firstValue: string, secondValue: string): number => {
        if (firstValue < secondValue) return -1;
        if (firstValue > secondValue) return 1;
        return 0;
      };
      let res: TreeSet<string> = new TreeSet<string>(comparator);
      let Stime = new Date().getTime();
      res = new TreeSet<string>()
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new TreeSet<string>(comparator);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_TreeSet_Constructor_WithComparator_0200: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'constructor',
        'constructor(comparator?: (firstValue: T, secondValue: T) => number)', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_Object_Constructor_0300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let res = new TreeSet<string>();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new TreeSet<string>();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_Object_Constructor_0300: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'constructor',
        'constructor(comparator?: TreeSetComparator<T>)', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_Object_ConstructorWithComparator_0400', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSetCb: TreeSetComparator<string> = (firstValue: string, secondValue: string): number => {
        return secondValue.localeCompare(firstValue);
      };
      let res = new TreeSet<string>(treeSetCb);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new TreeSet<string>(treeSetCb);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_Object_ConstructorWithComparator_0400: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'constructor',
        'constructor(comparator?: TreeSetComparator<T>)', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_Object_Add_0500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet = new TreeSet<string>();
      let res = treeSet.add("a");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.add("b");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_Object_Add_0500: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'add',
        'add(value: T): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_Object_Has_0600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet = new TreeSet<string>();
      treeSet.add("a");
      let res = treeSet.has("a");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.has("a");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_Object_Has_0600: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'has',
        'has(value: T): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_Object_Remove_0700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet = new TreeSet<string>();
      treeSet.add("a");
      let res = treeSet.remove("a");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.remove("a");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_Object_Remove_0700: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'remove',
        'remove(value: T): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_Object_Length_0800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet = new TreeSet<string>();
      treeSet.add("a");
      let res = treeSet.length;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.length;
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_Object_Length_0800: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'length',
        'length: int', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_Object_Values_0900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet = new TreeSet<string>();
      treeSet.add("a");
      treeSet.add("b");
      treeSet.add("c");
      let res = treeSet.values();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.values();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_Object_Values_0900: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'values',
        'values(): IterableIterator<T>', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_boolean_isEmpty_1000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.isEmpty();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_isEmpty_1000: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'isEmpty',
        'isEmpty(): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_boolean_isEmpty_OnNonEmptySet_1100', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("a");
      treeSet.add("b");
      treeSet.add("c");
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.isEmpty();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_isEmpty_OnNonEmptySet_1100: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'isEmpty',
        'isEmpty(): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_boolean_isEmpty_AfterClear_1200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("a");
      treeSet.add("b");
      treeSet.add("c");
      treeSet.clear();
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.isEmpty();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_isEmpty_AfterClear_1200: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'isEmpty',
        'isEmpty(): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_boolean_has_1300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      treeSet.add(123);
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.has(123);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_has_1300: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'has',
        'has(value: T): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_boolean_has_NonExistentElement_1400', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      treeSet.add(123);
      treeSet.add(456);
      treeSet.add(789);
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.has(999);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_has_NonExistentElement_1400: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'has',
        'has(value: T): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_boolean_has_OnStringSet_1500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("apple");
      treeSet.add("banana");
      treeSet.add("orange");
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.has("banana");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_has_OnStringSet_1500: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'has',
        'has(value: T): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_boolean_has_OnEmptySet_1600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.has(123);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_has_OnEmptySet_1600: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'has',
        'has(value: T): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getFirstValue_1700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      treeSet.add("sparrow");
      treeSet.add("apple");
      treeSet.add("zebra");
      let res: string | undefined = treeSet.getFirstValue();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getFirstValue();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getFirstValue_1700: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getFirstValue',
        'getFirstValue(): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getFirstValue_OnNumberSet_1800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      treeSet.add(100);
      treeSet.add(50);
      treeSet.add(200);
      treeSet.add(1);
      treeSet.add(150);
      let res: number | undefined = treeSet.getFirstValue();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getFirstValue();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getFirstValue_OnNumberSet_1800: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getFirstValue',
        'getFirstValue(): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getFirstValue_OnSingleElement_1900', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("onlyOne");
      let res: string | undefined = treeSet.getFirstValue();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getFirstValue();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getFirstValue_OnSingleElement_1900: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getFirstValue',
        'getFirstValue(): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getFirstValue_OnEmptySet_2000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      treeSet.add("squirrel");
      treeSet.add("squirrel");
      let res: string | undefined = treeSet.getFirstValue();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getFirstValue();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getFirstValue_OnEmptySet_2000: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getFirstValue',
        'getFirstValue(): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getLastValue_2100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      treeSet.add("sparrow");
      treeSet.add("apple");
      treeSet.add("zebra");
      let res: string | undefined = treeSet.getLastValue();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getLastValue();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getLastValue_2100: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getLastValue',
        'getLastValue(): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getLastValue_OnNumberSet_2200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      treeSet.add(100);
      treeSet.add(50);
      treeSet.add(200);
      treeSet.add(1);
      treeSet.add(150);
      let res: number | undefined = treeSet.getLastValue();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getLastValue();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getLastValue_OnNumberSet_2200: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getLastValue',
        'getLastValue(): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getLastValue_OnSingleElement_2300', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("onlyOne");
      let res: string | undefined = treeSet.getLastValue();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getLastValue();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getLastValue_OnSingleElement_2300: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getLastValue',
        'getLastValue(): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getLastValue_OnEmptySet_2400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      treeSet.add("squirrel");
      treeSet.add("squirrel");
      let res: string | undefined = treeSet.getLastValue();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getLastValue();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getLastValue_OnEmptySet_2400: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getLastValue',
        'getLastValue(): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_boolean_add_2500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.add("squirrel");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_add_2500: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'add',
        'add(value: T): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_boolean_add_DuplicateValue_2600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.add("squirrel");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_add_DuplicateValue_2600: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'add',
        'add(value: T): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_boolean_add_NumberValue_2700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.add(123);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_add_NumberValue_2700: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'add',
        'add(value: T): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_boolean_add_MultipleValues_2800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.add(i);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_add_MultipleValues_2800: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'add',
        'add(value: T): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_boolean_remove_2900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      treeSet.add("sparrow");
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.remove("sparrow");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_remove_2900: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'remove',
        'remove(value: T): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_boolean_remove_NonExistentElement_3000', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      treeSet.add("sparrow");
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.remove("eagle");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_remove_NonExistentElement_3000: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'remove',
        'remove(value: T): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_boolean_remove_NumberValue_3100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      treeSet.add(100);
      treeSet.add(200);
      treeSet.add(300);
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.remove(200);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_remove_NumberValue_3100: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'remove',
        'remove(value: T): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_boolean_remove_FromEmptySet_3200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.remove("anything");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_remove_FromEmptySet_3200: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'remove',
        'remove(value: T): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_boolean_remove_FirstElement_3300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      for (let j = 0; j < 100; j++) {
        treeSet.add(j);
      }
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.remove(0);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_remove_FirstElement_3300: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'remove',
        'remove(value: T): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_boolean_remove_LastElement_3400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      for (let j = 0; j < 100; j++) {
        treeSet.add(j);
      }
      let res: boolean = false;
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.remove(99);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_boolean_remove_LastElement_3400: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'remove',
        'remove(value: T): boolean', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getLowerValue_3500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      treeSet.add("sparrow");
      treeSet.add("gander");
      let res: string | undefined = treeSet.getLowerValue("sparrow");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getLowerValue("sparrow");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getLowerValue_3500: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getLowerValue',
        'getLowerValue(key: T): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getLowerValue_OnSmallestKey_3600', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      treeSet.add(10);
      treeSet.add(20);
      treeSet.add(30);
      treeSet.add(40);
      treeSet.add(50);
      let res: number | undefined = treeSet.getLowerValue(10);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getLowerValue(10);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getLowerValue_OnSmallestKey_3600: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getLowerValue',
        'getLowerValue(key: T): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getLowerValue_OnLargestKey_3700', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      treeSet.add(10);
      treeSet.add(20);
      treeSet.add(30);
      treeSet.add(40);
      treeSet.add(50);
      let res: number | undefined = treeSet.getLowerValue(50);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getLowerValue(50);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getLowerValue_OnLargestKey_3700: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getLowerValue',
        'getLowerValue(key: T): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getLowerValue_OnNonExistentKey_3800', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      treeSet.add(10);
      treeSet.add(20);
      treeSet.add(30);
      treeSet.add(40);
      treeSet.add(50);
      let res: number | undefined = treeSet.getLowerValue(25);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getLowerValue(25);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getLowerValue_OnNonExistentKey_3800: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getLowerValue',
        'getLowerValue(key: T): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getLowerValue_OnEmptySet_3900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      treeSet.add("sparrow");
      treeSet.add("anything");
      let res: string | undefined = treeSet.getLowerValue("anything");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getLowerValue("anything");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getLowerValue_OnEmptySet_3900: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getLowerValue',
        'getLowerValue(key: T): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_undefined_getLowerValue_4000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      treeSet.add("sparrow");
      treeSet.add("gander");
      let res: string | undefined = treeSet.getLowerValue("sparrow");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getLowerValue("sparrow");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_undefined_getLowerValue_4000: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getLowerValue',
        'getLowerValue(key: T): T | undefined', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_undefined_getLowerValue_OnSmallestKey_4100', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      treeSet.add(10);
      treeSet.add(20);
      treeSet.add(30);
      treeSet.add(40);
      treeSet.add(50);
      let res: number | undefined = treeSet.getLowerValue(10);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getLowerValue(10);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime ' +
        'TreeSetPerfTest_T_undefined_getLowerValue_OnSmallestKey_4100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getLowerValue',
        'getLowerValue(key: T): T | undefined', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_undefined_getLowerValue_OnLargestKey_4200', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      treeSet.add(10);
      treeSet.add(20);
      treeSet.add(30);
      treeSet.add(40);
      treeSet.add(50);
      let res: number | undefined = treeSet.getLowerValue(50);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getLowerValue(50);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime ' +
        'TreeSetPerfTest_T_undefined_getLowerValue_OnLargestKey_4200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getLowerValue',
        'getLowerValue(key: T): T | undefined', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_undefined_getLowerValue_OnNonExistentKey_4300', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      treeSet.add(10);
      treeSet.add(20);
      treeSet.add(30);
      treeSet.add(40);
      treeSet.add(50);
      let res: number | undefined = treeSet.getLowerValue(25);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getLowerValue(25);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime ' +
        'TreeSetPerfTest_T_undefined_getLowerValue_OnNonExistentKey_4300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getLowerValue',
        'getLowerValue(key: T): T | undefined', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_undefined_getLowerValue_OnEmptySet_4400', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      treeSet.add("sparrow");
      treeSet.add("anything");
      let res: string | undefined = treeSet.getLowerValue("anything");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getLowerValue("anything");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_undefined_getLowerValue_OnEmptySet_4400: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getLowerValue',
        'getLowerValue(key: T): T | undefined', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getHigherValue_4500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      treeSet.add("sparrow");
      treeSet.add("gander");
      let res: string | undefined = treeSet.getHigherValue("sparrow");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getHigherValue("sparrow");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getHigherValue_4500: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getHigherValue',
        'getHigherValue(key: T): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getHigherValue_OnSmallestKey_4600', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      treeSet.add(10);
      treeSet.add(20);
      treeSet.add(30);
      treeSet.add(40);
      treeSet.add(50);
      let res: number | undefined = treeSet.getHigherValue(10);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getHigherValue(10);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getHigherValue_OnSmallestKey_4600: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getHigherValue',
        'getHigherValue(key: T): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getHigherValue_OnLargestKey_4700', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      treeSet.add(10);
      treeSet.add(20);
      treeSet.add(30);
      treeSet.add(40);
      treeSet.add(50);
      let res: number | undefined = treeSet.getHigherValue(50);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getHigherValue(50);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getHigherValue_OnLargestKey_4700: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getHigherValue',
        'getHigherValue(key: T): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getHigherValue_OnNonExistentKey_4800', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      treeSet.add(10);
      treeSet.add(20);
      treeSet.add(30);
      treeSet.add(40);
      treeSet.add(50);
      let res: number | undefined = treeSet.getHigherValue(25);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getHigherValue(25);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getHigherValue_OnNonExistentKey_4800: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getHigherValue',
        'getHigherValue(key: T): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_getHigherValue_OnEmptySet_4900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      treeSet.add("sparrow");
      treeSet.add("gander");
      let res: string | undefined = treeSet.getHigherValue("anything");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getHigherValue("anything");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_getHigherValue_OnEmptySet_4900: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getHigherValue',
        'getHigherValue(key: T): T', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_undefined_getHigherValue_5000', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      treeSet.add("sparrow");
      treeSet.add("gander");
      let res: string | undefined = treeSet.getHigherValue("sparrow");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getHigherValue("sparrow");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_undefined_getHigherValue_5000: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getHigherValue',
        'getHigherValue(key: T): T | undefined', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_undefined_getHigherValue_OnSmallestKey_5100', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      treeSet.add(10);
      treeSet.add(20);
      treeSet.add(30);
      treeSet.add(40);
      treeSet.add(50);
      let res: number | undefined = treeSet.getHigherValue(10);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getHigherValue(10);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime ' +
        'TreeSetPerfTest_T_undefined_getHigherValue_OnSmallestKey_5100: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getHigherValue',
        'getHigherValue(key: T): T | undefined', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_undefined_getHigherValue_OnLargestKey_5200', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      treeSet.add(10);
      treeSet.add(20);
      treeSet.add(30);
      treeSet.add(40);
      treeSet.add(50);
      let res: number | undefined = treeSet.getHigherValue(50);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getHigherValue(50);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime ' +
        'TreeSetPerfTest_T_undefined_getHigherValue_OnLargestKey_5200: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getHigherValue',
        'getHigherValue(key: T): T | undefined', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_undefined_getHigherValue_OnNonExistentKey_5300', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<number> = new TreeSet<number>();
      treeSet.add(10);
      treeSet.add(20);
      treeSet.add(30);
      treeSet.add(40);
      treeSet.add(50);
      let res: number | undefined = treeSet.getHigherValue(25);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getHigherValue(25);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime ' +
        'TreeSetPerfTest_T_undefined_getHigherValue_OnNonExistentKey_5300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getHigherValue',
        'getHigherValue(key: T): T | undefined', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_T_undefined_getHigherValue_OnEmptySet_5400', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      treeSet.add("sparrow");
      treeSet.add("gander");
      let res: string | undefined = treeSet.getHigherValue("anything");
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.getHigherValue("anything");
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime ' +
        'TreeSetPerfTest_T_undefined_getHigherValue_OnEmptySet_5400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'getHigherValue',
        'getHigherValue(key: T): T | undefined', arkTsAveragedTime);
    })

    //it('TreeSetPerfTest_T_popFirst_5500', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //  let treeSet: TreeSet<number> = new TreeSet<number>();
    //  for (let i = 0; i < BASE_COUNT + 2; i++) {
    //    treeSet.add(i);
    //  }
    //  treeSet.add(BASE_COUNT + 2)
    //  let res: number | undefined = treeSet.popFirst();
    //  let Stime = new Date().getTime();
    //  for (let i = 0; i < BASE_COUNT; i++) {
    //    res = treeSet.popFirst();
    //  }
    //  let Dtime = new Date().getTime() - Stime;
    //  const res1 = res;
    //  let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //  console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_popFirst_5500: '
    //    + arkTsAveragedTime + 'ns');
    //  performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'popFirst',
    //    'popFirst(): T', arkTsAveragedTime);
    //})

    //it('TreeSetPerfTest_T_popLast_5600', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
    //  let treeSet: TreeSet<number> = new TreeSet<number>();
    //  for (let i = 0; i < BASE_COUNT; i++) {
    //    treeSet.add(i);
    //  }
    //  treeSet.add(BASE_COUNT)
    //  let res: number | undefined = treeSet.popLast();
    //  let Stime = new Date().getTime();
    //  for (let i = 0; i < BASE_COUNT; i++) {
    //    res = treeSet.popLast();
    //  }
    //  let Dtime = new Date().getTime() - Stime;
    //  const res1 = res;
    //  let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
    //  console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_T_popLast_5600: '
    //    + arkTsAveragedTime + 'ns');
    //  performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'popLast',
    //    'popLast(): T', arkTsAveragedTime);
    //})

    it('TreeSetPerfTest_void_clear_5700', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      treeSet.add("sparrow");
      let res = treeSet.clear()
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.clear();
      }
      let Dtime = new Date().getTime() - Stime;
      let res1 = res
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_void_clear_5700: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'clear',
        'clear(): void', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_IterableIterator_T_values_5800', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      treeSet.add("sparrow");
      let res: IterableIterator<string> = treeSet.values();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.values();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_IterableIterator_T_values_5800: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'values',
        'values(): IterableIterator<T>', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_void_forEach_5900', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("sparrow");
      treeSet.add("gull");
      let treeSetCb: TreeSetForEachCb<string> = (value: string, key: string, set: TreeSet<string>): void => {
      };
      let res = treeSet.forEach(treeSetCb)
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.forEach(treeSetCb);
      }
      let Dtime = new Date().getTime() - Stime;
      let res1 = res
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_void_forEach_5900: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'forEach',
        'forEach(callbackFn: TreeSetForEachCb<T>): void', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_IterableIterator_T_T_entries_6000', TestType.FUNCTION | Size.MEDIUMTEST |
    Level.LEVEL1, () => {
      let treeSet: TreeSet<string> = new TreeSet<string>();
      treeSet.add("squirrel");
      treeSet.add("sparrow");
      let res: IterableIterator<[string, string]> = treeSet.entries();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.entries();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_IterableIterator_T_T_entries_6000: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'entries',
        'entries(): IterableIterator<[T, T]>', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_Object_SymbolIterator_6100', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet = new TreeSet<string>();
      treeSet.add("a");
      treeSet.add("b");
      treeSet.add("c");
      let res = treeSet.values();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.values();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_Object_SymbolIterator_6100: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'values',
        'values(): IterableIterator<T>', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_Object_Iterator_6200', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet = new TreeSet<string>();
      treeSet.add("a");
      treeSet.add("b");
      treeSet.add("c");
      let res = treeSet.values();
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.values();
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_Object_Iterator_6200: '
        + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'values',
        'values(): IterableIterator<T>', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_Object_ForEach_6300', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSet = new TreeSet<string>();
      treeSet.add("a");
      treeSet.add("b");
      treeSet.add("c");
      let callback: TreeSetForEachCb<string> = (value: string, key: string, set: TreeSet<string>): void => {};
      let res = treeSet.forEach(callback)
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = treeSet.forEach(callback);
      }
      let Dtime = new Date().getTime() - Stime;
      let res1 = res
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_Object_ForEach_6300: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'forEach',
        'forEach(callback: TreeSetForEachCb<T>, thisArg?: Object): void', arkTsAveragedTime);
    })

    it('TreeSetPerfTest_Object_ConstructorWithComparator_6400', TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
      let treeSetCb: TreeSetComparator<string> = (firstValue: string, secondValue: string): number => {
        return secondValue.localeCompare(firstValue);
      };
      let res = new TreeSet<string>(treeSetCb);
      let Stime = new Date().getTime();
      for (let i = 0; i < BASE_COUNT; i++) {
        res = new TreeSet<string>(treeSetCb);
      }
      let Dtime = new Date().getTime() - Stime;
      const res1 = res;
      let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
      console.info('arkTsTreeSetPerfTest arkTsAveragedTime TreeSetPerfTest_Object_ConstructorWithComparator_6400: ' + arkTsAveragedTime + 'ns');
      performance.apiWithClassAndKeywordTxt('std.treeset', 'TreeSet', 'constructor',
        'constructor(comparator?: TreeSetComparator<T>)', arkTsAveragedTime);
    })
  })
}