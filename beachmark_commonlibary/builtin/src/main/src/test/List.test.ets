import abilityTest from "./Ability.test";
// import syncPrimitivesPerfTest from "./SyncPrimitivesPerfTest.test";

import defaultConstructorTest from "./classes/constructordeclaration/DefaultConstructorTest.test"
import explicitConstructorCallTest from "./classes/constructordeclaration/ExplicitConstructorCallTest.test"
import constructorBodyTest from "./classes/constructordeclaration/ConstructorBodyTest.test"
import constructorDeclarationTest from "./classes/constructordeclaration/ConstructorDeclarationTest.test"
import staticAndInstanceFieldsTest from "./classes/fielddeclarations/StaticAndInstanceFieldsTest.test"

// import ObjectPerfTest from './ObjectPerfTest.test';
// import ProcessPerfTest from './ProcessPerfTest.test'
// import PromisePerfTest from './PromisePerfTest.test';
// import RegExpPerfTest from './RegExpPerfTest.test';
// import JsonxPerfTest from './JsonxPerfTest.test';
// import JsonPerfTest from './JsonPerfTest.test';
// import LongPerTest from './LongPerfTest.test';
// import MathPerfTest from './MathPerfTest.test';
// import TuplePerfTest from './TuplePerfTest.test';
// import TypePerfTest from './TypePerfTest.test';
// import ShortPerfTest from './ShortPerfTest.test';
// import ValuePerfTest from './ValuePerfTest.test';
// //
// import StackTracePerfTest from './StackTracePerfTest.test';
// import StringBuilderPerfTest from './StringBuilderPerfTest.test';
// import SystemPerfTest from './SystemPerfTest.test';
// import MethodPerfTest from './MethodPerfTest.test';
// import UnsafePerfTest from './UnsafePerfTest.test';
// import ReflectConstructorPerfTest from './ReflectConstructorPerfTest.test';
// import ReflectProxyPerfTest from './ReflectProxyPerfTest.test';
//
// import LinkerVerificationErrorPerfTest from './LinkerVerificationErrorPerfTest.test';
// import LinkerUnresolvedClassErrorPerfTest from './LinkerUnresolvedClassErrorPerfTest.test';
// import LinkerUnresolvedFieldErrorPerfTest from './LinkerUnresolvedFieldErrorPerfTest.test';
// import LinkerUnresolvedMethodErrorPerfTest from './LinkerUnresolvedMethodErrorPerfTest.test';
// import LinkerBadSupertypeErrorPerfTest from './LinkerBadSupertypeErrorPerfTest.test';
// import LinkerTypeCircularityErrorPerfTest from './LinkerTypeCircularityErrorPerfTest.test';
// import LinkerMethodConflictErrorPerfTest from './LinkerMethodConflictErrorPerfTest.test';
// import LinkerAbstractMethodErrorPerfTest from './LinkerAbstractMethodErrorPerfTest.test';
// import LinkerClassNotFoundErrorPerfTest from './LinkerClassNotFoundErrorPerfTest.test';
//
// import WeakRefPerfTest from './WeakRefPerfTest.test';
// import RuntimePerfTest from './RuntimePerfTest.test';
// import RejectedHandlerPerfTest from './RejectedHandlerPerfTest.test';
// import __narrowAnyPerfTest from './NarrowAnyPerfTest.test';
// import SetPerfTest from './SetPerfTest.test';
//
// import NullPerfTest from './NullPerfTest.test';
// import ReflectInternalsPerfTest from './ReflectInternalsPerfTest.test';
// import MapPerfTest from './MapPerfTest.test';
// import MemoryRuntimeLinkerPerfTest from './MemoryRuntimeLinkerPerfTest.test';
//
// import CompletableJobPerfTest from './CompletableJobPerfTest.test';
// import StringPerfTest from './StringPerfTest.test';
//
// // concurrency
// import AtomicsPerfTest from "./AtomicsPerfTest.test";
// import AsyncCondVarPerfTest from "./AsyncCondVarPerfTest.test";
// import AsyncLockPerfTest from "./AsyncLockPerfTest.test";
// import AsyncLockManagerPerfTest from "./AsyncLockManagerPerfTest.test";
// import AsyncMutexPerfTest from "./AsyncMutexPerfTest.test";
// import LaunchPerfTest from "./LaunchPerfTest.test";
// import MessageHandlerPerfTest from "./MessageHandlerPerfTest.test";
// import MessagePerfTest from "./MessagePerfTest.test";
// import TaskPoolPerfTest from "./TaskPoolPerfTest.test";
// import WorkerLocalPerfTest from "./WorkerLocalPerfTest.test";
//
// // debug
// import AtomicFlagPerfTest from './AtomicFlagPerfTest.test';
// import CoroutineExtrasPerfTest from './CoroutineExtrasPerfTest.test';
// import DebuggerAPIPerfTest from './DebuggerAPIPerfTest.test';
// import LoggerPerfTest from './LoggerPerfTest.test';
// import RuntimeDebugPerfTest from './RuntimeDebugPerfTest.test';
//
// // escompat
// import DeepCopyPerfTest from './DeepCopyPerfTest.test';
// import ErrorPerfTest from './ErrorPerfTest.test';
// import ErrorsPerfTest from './ErrorsPerfTest.test';
// import FunctionsPerfTest from './FunctionsPerfTest.test';
// import GlobalPerfTest from './GlobalPerfTest.test';
// import TypedArraysPerfTest from './TypedArraysPerfTest.test';
// import TypedUArraysPerfTest from './TypedUArraysPerfTest.test';

export default function testsuite(): void {
  abilityTest();
  defaultConstructorTest();
  explicitConstructorCallTest();
  constructorBodyTest();
  constructorDeclarationTest();
  staticAndInstanceFieldsTest();

  // ObjectPerfTest(); // Object.ets
  // ProcessPerfTest(); // Process.ets
  // PromisePerfTest(); // Promise.ets
  // RegExpPerfTest();  // RegExpTest.ets
  // JsonxPerfTest(); // Jsonx.ets
  // JsonPerfTest();  // json.ets
  // LongPerTest();   // Long.ets
  // MathPerfTest();  // Math.etshdc shell aa test -b com.example.helloworld -m entry -s unittest /ets/testrunner/OpenHarmonyTestRunner -s timeout 15000
  // TuplePerfTest(); // Tuple.ets
  // TypePerfTest();  // Type.ets
  // ShortPerfTest(); // Short.ets
  // ValuePerfTest(); // Value.ets
  // StackTracePerfTest();  //StackTracePerfTest.test
  // StringBuilderPerfTest();  //StringBuilderPerfTest.test
  // SystemPerfTest();  //SystemPerfTest.test
  // MethodPerfTest();  //MeThodPerfTest.test
  // UnsafePerfTest();  //UnsafePerfTest
  // syncPrimitivesPerfTest();  //SyncPrimitivesPerfTest.test
  // ReflectConstructorPerfTest();  //ReflectConstructorPerfTest.test
  // ReflectProxyPerfTest();  //ReflectProxyPerfTest.test
  // LinkerVerificationErrorPerfTest();
  // LinkerUnresolvedClassErrorPerfTest();
  // LinkerUnresolvedFieldErrorPerfTest();
  // LinkerUnresolvedMethodErrorPerfTest();
  // LinkerBadSupertypeErrorPerfTest();
  // LinkerTypeCircularityErrorPerfTest();
  // LinkerMethodConflictErrorPerfTest();
  // LinkerAbstractMethodErrorPerfTest();
  // LinkerClassNotFoundErrorPerfTest();
  // //Set.ets
  // SetPerfTest();
  // //Null.ets
  // NullPerfTest();
  // // Reflectlnternals.ets
  // ReflectInternalsPerfTest();
  // //Map.ets
  // MapPerfTest();
  // //MemoryRuntimeLinkerPerfTest.ets
  // MemoryRuntimeLinkerPerfTest();
  // //WeakRef.ets
  // WeakRefPerfTest();
  // //Runtime.ets
  // RuntimePerfTest();
  // __narrowAnyPerfTest();
  // // RejectedHandler.ets
  // RejectedHandlerPerfTest();
  //
  // // Job.ets
  // CompletableJobPerfTest();
  //
  // // String.ets
  // StringPerfTest();
  //
  //
  // //concurrency
  //  AsyncCondVarPerfTest();
  //  AsyncLockManagerPerfTest();
  //  AsyncLockPerfTest()//用例（_0100、_0200、_0300）都是异步操作，500次await超时
  //
  // AsyncMutexPerfTest();
  // LaunchPerfTest();
  // AtomicsPerfTest();
  // MessageHandlerPerfTest();
  // MessagePerfTest();
  // TaskPoolPerfTest();
  // WorkerLocalPerfTest();
  //
  // //debug
  // AtomicFlagPerfTest();
  // CoroutineExtrasPerfTest();
  // DebuggerAPIPerfTest(); // 逻辑简单，但是运行会被卡住，已经写好模板了
  // LoggerPerfTest();
  // RuntimeDebugPerfTest();
  //
  // //escompat
  // DeepCopyPerfTest();
  // ErrorPerfTest();
  // ErrorsPerfTest();
  // FunctionsPerfTest();
  // GlobalPerfTest();
  // TypedArraysPerfTest();
  // TypedUArraysPerfTest();
}