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

import AbcFilePerfTest from './AbcFilePerfTest.test';
import ArrayPerfTest from './ArrayPerfTest.test';
import ArrayLikePerfTest from './ArrayLikePerfTest.test';
import BooleanPerfTest from './BooleanPerfTest.test';
import BoxPerfTest from './BoxPerfTest.test';
import BuiltinArrayPerfTest from './BuiltinArrayPerfTest.test';
import BuiltinArrayAlgorithmsPerfTest from './BuiltinArrayAlgorithmsPerfTest.test';
import BytePerfTest from './BytePertfTest.test'
import BuiltinArrayPerfTest1 from './BuiltinArrayPerfTest1.test';
import CharPerfTest from './CharPerfTest.test'
import ClassPerfTest from './ClassPerfTest.test';
import ComparablePerfTest from './ComparablePerfTest.test';
import ConcatArrayPerfTest from './ConcatArrayPerfTest.test';
import ConsolePerfTest from './ConsolePerfTest.test';
import ConsoleHelperPerfTest from './ConsoleHelperPerfTest.test';
import CoroutinePerfTest from './CoroutinePerfTest.test';
import DataViewPerfTest from './DataViewPerfTest.test';
import DatePerfTest from './DatePerfTest.test';
import DoublePerfTest from './DoublePerfTest.test';
import EAWorkerPerfTest from './EAWorkerPerfTest.test';
import ErrorHandlerPerfTest from './ErrorHandlerPerfTest.test';
import ErrorsPerfTest from './ErrorsPerfTest.test';
import ExceptionsPerfTest from './ExceptionsPerfTest.test';
import FloatPertTest from './FloatPertTest.test';
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


export default function testsuite() {
     ArrayPerfTest();
     ArrayLikePerfTest();
     BooleanPerfTest();
     BoxPerfTest();
     AbcFilePerfTest();
     BuiltinArrayPerfTest();
     BuiltinArrayAlgorithmsPerfTest();
     AbcRuntimeLinkerPerfTest()
     ArrayBufferPerfTest()
     BaseEnumPerfTest()
     BigIntPerfTest()
     BootRuntimeLinkerPerfTest()
     BytePerfTest();
     BuiltinArrayPerfTest1() 
     BuiltinArraySortPerfTest()
     CharPerfTest();
     ClassPerfTest();
     ComparablePerfTest();
     ConcatArrayPerfTest();
     ConsolePerfTest();
     ConsoleHelperPerfTest();
     CoroutinePerfTest();
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

}
