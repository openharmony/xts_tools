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

function toLongValue(value: int): long {
  return value.toLong();
}

function createSampleArrayValues(): Array<jsonx.JsonElement> {
  let arr = Array<jsonx.JsonElement>();
  arr.push(jsonx.JsonElement.createString("arkts"));
  arr.push(jsonx.JsonElement.createInteger(1));
  return arr;
}

function createSampleArrayElement(): jsonx.JsonElement {
  return jsonx.JsonElement.createArray(createSampleArrayValues());
}

function createSampleObjectMap(): Map<string, jsonx.JsonElement> {
  let map = new Map<string, jsonx.JsonElement>();
  let longValue: long = toLongValue(123);
  let bigIntValue: bigint = 123n;

  map.set("array", createSampleArrayElement());
  map.set("double", jsonx.JsonElement.createDouble(3.14));
  map.set("integer", jsonx.JsonElement.createInteger(123));
  map.set("long", jsonx.JsonElement.createLong(longValue));
  map.set("bigint", jsonx.JsonElement.createBigInt(bigIntValue));
  map.set("string", jsonx.JsonElement.createString("arkts"));
  map.set("boolean", jsonx.JsonElement.createBoolean(true));
  map.set("null", jsonx.JsonElement.createNull());

  return map;
}

function createSampleObjectElement(): jsonx.JsonElement {
  return jsonx.JsonElement.createObject(createSampleObjectMap());
}

function createSampleRecord(): Record<string, jsonx.JsonElement> {
  return {
    "name": jsonx.JsonElement.createString("arkts"),
    "version": jsonx.JsonElement.createInteger(1)
  };
}

function createRemovableElement(value: jsonx.JsonElement): jsonx.JsonElement {
  let elem = new jsonx.JsonElement();
  elem.setElement("temp", value);
  return elem;
}

export default function JsonxPerfTest(): void {
  describe('JsonxPerfTest', () => {
    beforeEach(() => {
      let ret = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret);
      let ret1 = GC.startGC(GC.Cause.FULL, true);
      GC.waitForFinishGC(ret1);
    });

    afterAll(() => {
      performance.save('apiPerformance.txt');
    });

    it('PerformanceTest_JsonError_constructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let msg: string = "json error";
        let result: jsonx.JsonError = new jsonx.JsonError(msg);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = new jsonx.JsonError(msg);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonError_constructor_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonError', 'constructor',
          'constructor(msg: string)', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonTypeError_constructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let msg: string = "json type error";
        let result: jsonx.JsonTypeError = new jsonx.JsonTypeError(msg);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = new jsonx.JsonTypeError(msg);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonTypeError_constructor_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonTypeError', 'constructor',
          'constructor(msg: string)', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_constructor_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let result: jsonx.JsonElement = new jsonx.JsonElement();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = new jsonx.JsonElement();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_constructor_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'constructor',
          'constructor()', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_constructor_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let other: jsonx.JsonElement = createSampleObjectElement();
        let result: jsonx.JsonElement = new jsonx.JsonElement(other);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = new jsonx.JsonElement(other);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_constructor_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'constructor',
          'constructor(other: JsonElement)', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_constructor_0300',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elements: Record<string, jsonx.JsonElement> = createSampleRecord();
        let result: jsonx.JsonElement = new jsonx.JsonElement(elements);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = new jsonx.JsonElement(elements);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_constructor_0300: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'constructor',
          'constructor(elements: Record<string, JsonElement>)', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_jsonType_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = jsonx.JsonElement.createString("arkts");
        let result: jsonx.JsonType = elem.jsonType;
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.jsonType;
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_jsonType_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'jsonType',
          'get jsonType(): JsonType', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_jsonKey_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = new jsonx.JsonElement();
        let result: string = elem.jsonKey;
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.jsonKey;
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_jsonKey_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'jsonKey',
          'get jsonKey(): string', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_$_get_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleArrayElement();
        let result: jsonx.JsonElement = elem.$_get(0);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.$_get(0);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_$_get_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', '$_get',
          '$_get(index: int): JsonElement', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_$_get_0200',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: jsonx.JsonElement = elem.$_get("string");
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.$_get("string");
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_$_get_0200: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', '$_get',
          '$_get(key: string): JsonElement', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_createString_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: string = "arkts";
        let result: jsonx.JsonElement = jsonx.JsonElement.createString(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = jsonx.JsonElement.createString(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_createString_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'createString',
          'static createString(value: string): JsonElement', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_createDouble_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: double = 3.14;
        let result: jsonx.JsonElement = jsonx.JsonElement.createDouble(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = jsonx.JsonElement.createDouble(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_createDouble_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'createDouble',
          'static createDouble(value: double): JsonElement', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_createInteger_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: int = 123;
        let result: jsonx.JsonElement = jsonx.JsonElement.createInteger(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = jsonx.JsonElement.createInteger(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_createInteger_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'createInteger',
          'static createInteger(value: int): JsonElement', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_createLong_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: long = toLongValue(123);
        let result: jsonx.JsonElement = jsonx.JsonElement.createLong(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = jsonx.JsonElement.createLong(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_createLong_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'createLong',
          'static createLong(value: long): JsonElement', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_createBigInt_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: bigint = 123n;
        let result: jsonx.JsonElement = jsonx.JsonElement.createBigInt(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = jsonx.JsonElement.createBigInt(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_createBigInt_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'createBigInt',
          'static createBigInt(value: bigint): JsonElement', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_createBoolean_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: boolean = true;
        let result: jsonx.JsonElement = jsonx.JsonElement.createBoolean(value);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = jsonx.JsonElement.createBoolean(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_createBoolean_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'createBoolean',
          'static createBoolean(value: boolean): JsonElement', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_createNull_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let result: jsonx.JsonElement = jsonx.JsonElement.createNull();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = jsonx.JsonElement.createNull();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_createNull_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'createNull',
          'static createNull(): JsonElement', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_createUndefined_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let result: jsonx.JsonElement = jsonx.JsonElement.createUndefined();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = jsonx.JsonElement.createUndefined();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_createUndefined_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'createUndefined',
          'static createUndefined(): JsonElement', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_createArray_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elements: Array<jsonx.JsonElement> = createSampleArrayValues();
        let result: jsonx.JsonElement = jsonx.JsonElement.createArray(elements);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = jsonx.JsonElement.createArray(elements);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_createArray_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'createArray',
          'static createArray(elements: Array<JsonElement>): JsonElement', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_createObject_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let map: Map<string, jsonx.JsonElement> = createSampleObjectMap();
        let result: jsonx.JsonElement = jsonx.JsonElement.createObject(map);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = jsonx.JsonElement.createObject(map);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_createObject_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'createObject',
          'static createObject(map: Map<string, JsonElement>): JsonElement', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_getElement_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: jsonx.JsonElement = elem.getElement("string");
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.getElement("string");
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_getElement_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'getElement',
          'getElement(key: string): JsonElement', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_tryGetElement_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: jsonx.JsonElement | undefined = elem.tryGetElement("string");
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.tryGetElement("string");
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_tryGetElement_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'tryGetElement',
          'tryGetElement(key: string): JsonElement | undefined', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_$_iterator_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: IterableIterator<[string, jsonx.JsonElement]> = elem.$_iterator();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.$_iterator();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_$_iterator_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', '$_iterator',
          '$_iterator(): IterableIterator<[string, JsonElement]>', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_getArray_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: Array<jsonx.JsonElement> = elem.getArray("array");
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.getArray("array");
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_getArray_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'getArray',
          'getArray(key: string): Array<JsonElement>', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_tryGetArray_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: Array<jsonx.JsonElement> = elem.tryGetArray("array");
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.tryGetArray("array");
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_tryGetArray_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'tryGetArray',
          'tryGetArray(key: string): Array<JsonElement>', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_removeElement_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: jsonx.JsonElement = jsonx.JsonElement.createString("arkts");
        let warmupElem: jsonx.JsonElement = createRemovableElement(value);
        let result: boolean = warmupElem.removeElement("temp");
        let elems = Array<jsonx.JsonElement>();

        for (let i = 0; i < BASE_COUNT; i++) {
          elems.push(createRemovableElement(value));
        }

        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elems[i].removeElement("temp");
        }

        let Dtime = new Date().getTime() - Stime;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
		let res1 = result;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_removeElement_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'removeElement',
          'removeElement(key: string): boolean', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_setElement_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = new jsonx.JsonElement();
        let value: jsonx.JsonElement = jsonx.JsonElement.createString("arkts");
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          elem.setElement("name", value);
        }
        let Dtime = new Date().getTime() - Stime;
        let res1 = elem;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_setElement_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'setElement',
          'setElement(key: string, value: JsonElement)', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_getDouble_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: double = elem.getDouble("double");
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.getDouble("double");
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_getDouble_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'getDouble',
          'getDouble(key: string): double', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_tryGetDouble_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: double | undefined = elem.tryGetDouble("double", 0.0);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.tryGetDouble("double", 0.0);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_tryGetDouble_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'tryGetDouble',
          'tryGetDouble(key: string, fallback?: double): double | undefined', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_getInteger_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: int = elem.getInteger("integer");
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.getInteger("integer");
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_getInteger_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'getInteger',
          'getInteger(key: string): int', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_tryGetInteger_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: int = elem.tryGetInteger("integer", 0);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.tryGetInteger("integer", 0);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_tryGetInteger_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'tryGetInteger',
          'tryGetInteger(key: string, fallback: int = 0): int', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_getLong_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: long = elem.getLong("long");
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.getLong("long");
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_getLong_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'getLong',
          'getLong(key: string): long', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_tryGetLong_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fallback: long = toLongValue(0);
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: long = elem.tryGetLong("long", fallback);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.tryGetLong("long", fallback);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_tryGetLong_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'tryGetLong',
          'tryGetLong(key: string, fallback: long = 0): long', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_getBigInt_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: bigint = elem.getBigInt("bigint");
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.getBigInt("bigint");
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_getBigInt_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'getBigInt',
          'getBigInt(key: string): bigint', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_tryGetBigInt_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let fallback: bigint = 0n;
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: bigint = elem.tryGetBigInt("bigint", fallback);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.tryGetBigInt("bigint", fallback);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_tryGetBigInt_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'tryGetBigInt',
          'tryGetBigInt(key: string, fallback: bigint = 0n): bigint', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_getString_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: string = elem.getString("string");
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.getString("string");
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_getString_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'getString',
          'getString(key: string): string', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_tryGetString_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: string = elem.tryGetString("string", "");
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.tryGetString("string", "");
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_tryGetString_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'tryGetString',
          'tryGetString(key: string, fallback: string = ""): string', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_getBoolean_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: boolean = elem.getBoolean("boolean");
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.getBoolean("boolean");
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_getBoolean_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'getBoolean',
          'getBoolean(key: string): boolean', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_tryGetBoolean_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: boolean = elem.tryGetBoolean("boolean", false);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.tryGetBoolean("boolean", false);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_tryGetBoolean_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'tryGetBoolean',
          'tryGetBoolean(key: string, fallback: boolean = false): boolean', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_getNull_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: null = elem.getNull("null");
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.getNull("null");
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_getNull_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'getNull',
          'getNull(key: string): null', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_tryGetNull_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let result: null | undefined = elem.tryGetNull("null");
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.tryGetNull("null");
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_tryGetNull_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'tryGetNull',
          'tryGetNull(key: string): null | undefined', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_asDouble_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = jsonx.JsonElement.createDouble(3.14);
        let result: double = elem.asDouble();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.asDouble();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_asDouble_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'asDouble',
          'asDouble(): double', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_tryAsDouble_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = jsonx.JsonElement.createDouble(3.14);
        let result: double | undefined = elem.tryAsDouble();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.tryAsDouble();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_tryAsDouble_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'tryAsDouble',
          'tryAsDouble(): double | undefined', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_asInteger_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = jsonx.JsonElement.createInteger(123);
        let result: int = elem.asInteger();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.asInteger();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_asInteger_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'asInteger',
          'asInteger(): int', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_tryAsInteger_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = jsonx.JsonElement.createInteger(123);
        let result: int | undefined = elem.tryAsInteger();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.tryAsInteger();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_tryAsInteger_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'tryAsInteger',
          'tryAsInteger(): int | undefined', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_asLong_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: long = toLongValue(123);
        let elem: jsonx.JsonElement = jsonx.JsonElement.createLong(value);
        let result: long = elem.asLong();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.asLong();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_asLong_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'asLong',
          'asLong(): long', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_tryAsLong_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: long = toLongValue(123);
        let elem: jsonx.JsonElement = jsonx.JsonElement.createLong(value);
        let result: long | undefined = elem.tryAsLong();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.tryAsLong();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_tryAsLong_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'tryAsLong',
          'tryAsLong(): long | undefined', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_asBigInt_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: bigint = 123n;
        let elem: jsonx.JsonElement = jsonx.JsonElement.createBigInt(value);
        let result: bigint = elem.asBigInt();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.asBigInt();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_asBigInt_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'asBigInt',
          'asBigInt(): bigint', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_tryAsBigInt_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let value: bigint = 123n;
        let elem: jsonx.JsonElement = jsonx.JsonElement.createBigInt(value);
        let result: bigint | undefined = elem.tryAsBigInt();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.tryAsBigInt();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_tryAsBigInt_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'tryAsBigInt',
          'tryAsBigInt(): bigint | undefined', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_asString_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = jsonx.JsonElement.createString("arkts");
        let result: string = elem.asString();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.asString();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_asString_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'asString',
          'asString(): string', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_tryAsString_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = jsonx.JsonElement.createString("arkts");
        let result: string | undefined = elem.tryAsString();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.tryAsString();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_tryAsString_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'tryAsString',
          'tryAsString(): string | undefined', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_asBoolean_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = jsonx.JsonElement.createBoolean(true);
        let result: boolean = elem.asBoolean();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.asBoolean();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_asBoolean_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'asBoolean',
          'asBoolean(): boolean', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_tryAsBoolean_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = jsonx.JsonElement.createBoolean(true);
        let result: boolean | undefined = elem.tryAsBoolean();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.tryAsBoolean();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_tryAsBoolean_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'tryAsBoolean',
          'tryAsBoolean(): boolean | undefined', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_asArray_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleArrayElement();
        let result: Array<jsonx.JsonElement> = elem.asArray();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.asArray();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_asArray_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'asArray',
          'asArray(): Array<JsonElement>', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_tryAsArray_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleArrayElement();
        let result: Array<jsonx.JsonElement> | undefined = elem.tryAsArray();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.tryAsArray();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_tryAsArray_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'tryAsArray',
          'tryAsArray(): Array<JsonElement> | undefined', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_asNull_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = jsonx.JsonElement.createNull();
        let result: null = elem.asNull();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.asNull();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_asNull_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'asNull',
          'asNull(): null', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_tryAsNull_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = jsonx.JsonElement.createNull();
        let result: null | undefined = elem.tryAsNull();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          result = elem.tryAsNull();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = result;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_tryAsNull_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'tryAsNull',
          'tryAsNull(): null | undefined', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_setDouble_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = new jsonx.JsonElement();
        let value: double = 3.14;
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          elem.setDouble(value);
        }
        let Dtime = new Date().getTime() - Stime;
        let res1 = elem;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_setDouble_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'setDouble',
          'setDouble(value: double): void', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_setInteger_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = new jsonx.JsonElement();
        let value: int = 123;
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          elem.setInteger(value);
        }
        let Dtime = new Date().getTime() - Stime;
        let res1 = elem;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_setInteger_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'setInteger',
          'setInteger(value: int): void', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_setLong_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = new jsonx.JsonElement();
        let value: long = toLongValue(123);
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          elem.setLong(value);
        }
        let Dtime = new Date().getTime() - Stime;
        let res1 = elem;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_setLong_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'setLong',
          'setLong(value: long): void', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_setString_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = new jsonx.JsonElement();
        let value: string = "arkts";
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          elem.setString(value);
        }
        let Dtime = new Date().getTime() - Stime;
        let res1 = elem;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_setString_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'setString',
          'setString(value: string): void', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_setBoolean_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = new jsonx.JsonElement();
        let value: boolean = true;
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          elem.setBoolean(value);
        }
        let Dtime = new Date().getTime() - Stime;
        let res1 = elem;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_setBoolean_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'setBoolean',
          'setBoolean(value: boolean): void', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_setArray_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = new jsonx.JsonElement();
        let value: Array<jsonx.JsonElement> = createSampleArrayValues();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          elem.setArray(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = elem;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_setArray_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'setArray',
          'setArray(value: Array<JsonElement>): void', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_setNull_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = new jsonx.JsonElement();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          elem.setNull();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = elem;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_setNull_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'setNull',
          'setNull(): void', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_setBigInt_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = new jsonx.JsonElement();
        let value: bigint = 123n;
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          elem.setBigInt(value);
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = elem;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_setBigInt_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'setBigInt',
          'setBigInt(value: bigint): void', arkTsAveragedTime);
      });

    it('PerformanceTest_JsonElement_setUndefined_0100',
      TestType.FUNCTION | Size.MEDIUMTEST | Level.LEVEL1, () => {
        let elem: jsonx.JsonElement = createSampleObjectElement();
        let Stime = new Date().getTime();

        for (let i = 0; i < BASE_COUNT; i++) {
          elem.setUndefined();
        }

        let Dtime = new Date().getTime() - Stime;
        let res1 = elem;
        let arkTsAveragedTime = Dtime.toDouble() * UNIT_TIME / BASE_COUNT;
        console.info('arkTsPerformanceTest arkTsAveragedTime PerformanceTest_JsonElement_setUndefined_0100: '
          + arkTsAveragedTime + 'ns');
        performance.apiWithClassAndKeywordTxt('std.core', 'JsonElement', 'setUndefined',
          'setUndefined(): void', arkTsAveragedTime);
      });
  });
}