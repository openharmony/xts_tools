/*
 * Copyright (C) 2025-2026 Huawei Device Co., Ltd.
 * Licensed under the Apache License, Version 2.0 (the 'License')
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
//------------------------------------core----------------------------------------------------
import AbcFilePerfTest from './AbcFilePerfTest.test';
import ArrayPerfTest from './ArrayPerfTest.test';
import ArrayLikePerfTest from './ArrayLikePerfTest.test';
import BooleanPerfTest from './BooleanPerfTest.test';
import BoxPerfTest from './BoxPerfTest.test';
import BuiltinArrayPerfTest00 from './BuiltinArrayPerfTest00.test';
import BuiltinArrayPerfTest01 from './BuiltinArrayPerfTest01.test';
import BuiltinArrayPerfTest02 from './BuiltinArrayPerfTest02.test';
import BuiltinArrayPerfTest03 from './BuiltinArrayPerfTest03.test';
import BuiltinArrayAlgorithmsPerfTest from './BuiltinArrayAlgorithmsPerfTest.test';
import BytePerfTest from './BytePerfTest.test'
import CharPerfTest from './CharPerfTest.test'
import ClassPerfTest from './ClassPerfTest.test';
import ComparablePerfTest from './ComparablePerfTest.test';
import ConcatArrayPerfTest from './ConcatArrayPerfTest.test';
import ConsolePerfTest from './ConsolePerfTest.test';
import ConsoleHelperPerfTest from './ConsoleHelperPerfTest.test';
import DataViewPerfTest from './DataViewPerfTest.test';
import DatePerfTest from './DatePerfTest.test';
import DoublePerfTest from './DoublePerfTest.test';
import EAWorkerPerfTest from './EAWorkerPerfTest.test';
import ErrorHandlerPerfTest from './ErrorHandlerPerfTest.test';
import ErrorsPerfTest from './ErrorsPerfTest.test';
import ExceptionsPerfTest from './ExceptionsPerfTest.test';
import FloatPertTest from './FloatPerfTest.test';
import FunctionPerfTest from './FunctionPerfTest.test';
import GCPerfTest from './GCPerfTest.test';
import IntlPerfTest from './IntlPerfTest.test';
import IntPerfTest from './IntPerfTest.test';
import IteratorPerfTest from './IteratorPerfTest.test';

import BuiltinArraySortPerfTest from './BuiltinArraySortPerfTest.test';
import EnumConstantPerfTest from './EnumConstantPerfTest.test';
import FieldPerfTest from './FieldPerfTest.test';
import FinalizationRegistryPerfTest from './FinalizationRegistryPerfTest.test';

import AbcRuntimeLinkerPerfTest from './AbcRuntimeLinkerPerfTest.test';
import ArrayBufferPerfTest from './ArrayBufferPerfTest.test';
import BaseEnumPerfTest from './BaseEnumPerfTest.test';
import BigIntPerfTest from './BigIntPerfTest.test';
import BootRuntimeLinkerPerfTest from './BootRuntimeLinkerPerfTest.test';


//------------------------------------containers----------------------------------------------------
import ArrayAsListIntPerfTest from './ArrayAsListIntPerfTest.test';
import ArrayAsListStringPerfTest from './ArrayAsListStringPerfTest.test';
import ArrayBlockingQueuePerfTest from './ArrayBlockingQueuePerfTest.test';
import BlockingQueuePerfTest from './BlockingQueuePerfTest.test';
import ConcurrentHashMapPerfTest from './ConcurrentHashMapPerfTest.test';
import ConcurrentSetPerfTest from './ConcurrentSetPerfTest.test';
import LinkedBlockingQueuePerfTest from './LinkedBlockingQueuePerfTest.test';
import ListIntPerfTest from './ListIntPerfTest.test';
import ListObjectPerfTest from './ListObjectPerfTest.test';
import ListStringPerfTest from './ListStringPerfTest.test';
import UndefinableObjectArrayPerfTest from './UndefinableObjectArrayPerfTest.test';
import UndefinableStringArrayPerfTest from './UndefinableStringArrayPerfTest.test';
import WeakMapPerfTest from './WeakMapPerfTest.test';
import WeakSetPerfTest from './WeakSetPerfTest.test';


//-------------------------------------interop---------------------------------------------------------
import ESErrorPerfTest from './ESErrorPerfTest.test';
import ESObjectPerfTest from './ESObjectPerfTest.test';
import InteropTransferHelperPerfTest from './InteropTransferHelperPerfTest.test';
import JSRuntimePerfTest from './JSRuntimePerfTest.test';
import JSValuePerfTest from './JSValuePerfTest.test';
import NoContextInteropErrorPerfTest from './NoContextInteropErrorPerfTest.test';

import ESValuePerfTest from './ESValuePerfTest.test';
import InteropContextPerfTest from './InteropContextPerfTest.test';
import InteropSerializeHelperPerfTest from './InteropSerializeHelperPerfTest.test';




//-------------------------------------testing---------------------------------------------
import ArktestPerfTest from './ArktestPerfTest.test';

//--------------------------------------math---------------------------------------------------
import MathPerfTest from './MathPerfTest.test';
import ConstsPerfTest from './ConstsPerfTest.test';

//--------------------------------------time-----------------------------------------------------------
import ChronoPerfTest from './ChronoPerfTest.test';


export default function testsuite() {
//------------------------------------core----------------------------------------------------
  ArrayBufferPerfTest()
  ArrayPerfTest();
  ArrayLikePerfTest();
  BooleanPerfTest();
  BoxPerfTest();
  AbcFilePerfTest();
  BuiltinArrayPerfTest00();
  BuiltinArrayPerfTest01();
  BuiltinArrayPerfTest02();
  BuiltinArrayPerfTest03();
  BuiltinArrayAlgorithmsPerfTest();
  BytePerfTest();
  AbcRuntimeLinkerPerfTest()
  BaseEnumPerfTest()
  BigIntPerfTest()
  BootRuntimeLinkerPerfTest()
  BuiltinArraySortPerfTest()
  CharPerfTest();
  ClassPerfTest();
  ComparablePerfTest();
  ConcatArrayPerfTest();
  ConsolePerfTest();
  ConsoleHelperPerfTest();
  DataViewPerfTest();
  DatePerfTest();
  DoublePerfTest();
  EAWorkerPerfTest();
  ErrorHandlerPerfTest();
  ErrorsPerfTest();
  ExceptionsPerfTest();
  EnumConstantPerfTest()
  FieldPerfTest()
  FinalizationRegistryPerfTest()
  FloatPertTest();
  FunctionPerfTest();
  GCPerfTest();
  IntlPerfTest();
  IntPerfTest()
  IteratorPerfTest();
//==========================containers===========================
  ArrayAsListIntPerfTest();
  ArrayAsListStringPerfTest();
  ArrayBlockingQueuePerfTest();
  BlockingQueuePerfTest();
  ConcurrentHashMapPerfTest();
  ConcurrentSetPerfTest();
  LinkedBlockingQueuePerfTest();
  ListIntPerfTest();
  ListObjectPerfTest();
  ListStringPerfTest();
  UndefinableObjectArrayPerfTest();
  UndefinableStringArrayPerfTest();
  WeakMapPerfTest();
  WeakSetPerfTest();


//=============================testing============================
  ArktestPerfTest();

//============================interop===============================
  ESErrorPerfTest();
  ESObjectPerfTest();
  InteropTransferHelperPerfTest();
  JSRuntimePerfTest();
  JSValuePerfTest();
  NoContextInteropErrorPerfTest();

  ESValuePerfTest();
  InteropContextPerfTest();
  InteropSerializeHelperPerfTest();

//==============================math==============================
  MathPerfTest();

  ConstsPerfTest();

//==============================time==============================
  ChronoPerfTest();
}