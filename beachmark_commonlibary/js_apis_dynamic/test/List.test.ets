import DecimalPerfTest from "./DecimalPerfTest.test"
import ArrayListPerfTest from "./ArrayListPerfTest.test"
import BufferPerfTest from "./BufferPerfTest.test"
import DequePerfTest from "./DequePerfTest.test"
import HashMapPerfTest from "./HashMapPerfTest.test"
import HashSetPerfTest from "./HashSetPerfTest.test"
import LightWeightMapPerfTest from "./LightWeightMapPerfTest.test"
import LightWeightSetPerfTest from "./LightWeightSetPerfTest.test"
import LinkedListPerfTest from "./LinkedListPerfTest.test"
import ListPerfTest from "./ListPerfTest.test"
import PlainArrayPerfTest from "./PlainArrayPerfTest.test"
import QueuePerfTest from "./QueuePerfTest.test"
import StackPerfTest from "./StackPerfTest.test"
import StreamPerfTest from "./StreamPerfTest.test"
import ArkTsUtilsPerfTest from "./ArkTsUtilsPerfTest.test"
import JsonPerfTest from "./JsonPerfTest.test"
import ConvertXmlPerfTest from "./ConvertXmlPerfTest.test"
import ProcessPerfTest from "./ProcessPerfTest.test"
import TaskPoolPerfTest from "./TaskPoolPerfTest.test"
import FastBufferPerfTest from "./FastBufferPerfTest.test"

import TreeMapPerfTest from './TreeMapPerfTest.test';
import TreeSetPerfTest from './TreeSetPerfTest.test';
import URLPerfTest from './URLPerfTest.test';
import UriPerfTest from './UriPerfTest.test';
import UtilPerfTest01 from './UtilPerfTest01.test';
import UtilPerfTest02 from './UtilPerfTest02.test';
import VectorPerfTest from './VectorPerfTest.test';
import XmlPerfTest from './XmlPerfTest.test';

export default function testsuite(): void {
  HashMapPerfTest();
  DecimalPerfTest();
  ArrayListPerfTest();
  BufferPerfTest();
  DequePerfTest();
  HashMapPerfTest();
  HashSetPerfTest();
  LightWeightMapPerfTest();
  LightWeightSetPerfTest();
  LinkedListPerfTest();
  ListPerfTest();
  PlainArrayPerfTest();
  QueuePerfTest();
  StackPerfTest();
  StreamPerfTest();
  ArkTsUtilsPerfTest();
  JsonPerfTest();
  ConvertXmlPerfTest();
  ProcessPerfTest();
  TaskPoolPerfTest();
  FastBufferPerfTest();

   TreeMapPerfTest()
   TreeSetPerfTest()
   UriPerfTest()
   URLPerfTest()
   UtilPerfTest01()
   UtilPerfTest02()
   VectorPerfTest()
   XmlPerfTest()
}
