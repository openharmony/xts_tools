
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

import TransferPerfTest from "./TransferPerfTest.test"
import TreeMapPerfTest from "./TreeMapPerfTest.test"
import TreeSetPerfTest from "./TreeSetPerfTest.test"
import UriPerfTest from "./UriPerfTest.test"
import URLPerfTest from "./URLPerfTest.test"
import UtilPerfTest01 from "./UtilPerfTest01.test"
import UtilPerfTest02 from "./UtilPerfTest02.test"
import XmlPerfTest from "./XmlPerfTest.test"


export default function testsuite(): void {

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

  TransferPerfTest()
  TreeMapPerfTest()
  TreeSetPerfTest()
  UriPerfTest()
  URLPerfTest()
  UtilPerfTest01()
  UtilPerfTest02()
  XmlPerfTest()


}



