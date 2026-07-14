# 05 Generics - Test Case Catalog

## 5.1 Type Parameters (11 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_01_001_PASS_BASIC_GENERIC_CLASS | Basic generic class | PASS | `5.1_Type_Parameters/compile-pass/GEN_05_01_001_PASS_BASIC_GENERIC_CLASS.ets` |
| GEN_05_01_002_PASS_GENERIC_INTERFACE | Generic interface | PASS | `5.1_Type_Parameters/compile-pass/GEN_05_01_002_PASS_GENERIC_INTERFACE.ets` |
| GEN_05_01_003_PASS_GENERIC_FUNCTION | Generic function | PASS | `5.1_Type_Parameters/compile-pass/GEN_05_01_003_PASS_GENERIC_FUNCTION.ets` |
| GEN_05_01_004_PASS_GENERIC_TYPE_ALIAS | Generic type alias | PASS | `5.1_Type_Parameters/compile-pass/GEN_05_01_004_PASS_GENERIC_TYPE_ALIAS.ets` |
| GEN_05_01_005_PASS_MULTIPLE_PARAMS | Multiple type params | PASS | `5.1_Type_Parameters/compile-pass/GEN_05_01_005_PASS_MULTIPLE_PARAMS.ets` |
| GEN_05_01_100_FAIL_CIRCULAR_SELF | Circular self-reference | FAIL | `5.1_Type_Parameters/compile-fail/GEN_05_01_100_FAIL_CIRCULAR_SELF.ets` |
| GEN_05_01_101_FAIL_CIRCULAR_MUTUAL | Circular mutual | FAIL | `5.1_Type_Parameters/compile-fail/GEN_05_01_101_FAIL_CIRCULAR_MUTUAL.ets` |
| GEN_05_01_102_FAIL_CIRCULAR_MUTUAL_UNION | Circular mutual union | FAIL | `5.1_Type_Parameters/compile-fail/GEN_05_01_102_FAIL_CIRCULAR_MUTUAL_UNION.ets` |
| GEN_05_01_103_FAIL_CIRCULAR_WITH_DEFAULT | Circular with default | FAIL | `5.1_Type_Parameters/compile-fail/GEN_05_01_103_FAIL_CIRCULAR_WITH_DEFAULT.ets` |
| GEN_05_01_200_RUNTIME_GENERIC_CLASS | Generic class runtime | RUNTIME | `5.1_Type_Parameters/runtime/GEN_05_01_200_RUNTIME_GENERIC_CLASS.ets` |
| GEN_05_01_201_RUNTIME_GENERIC_FUNCTION | Generic function runtime | RUNTIME | `5.1_Type_Parameters/runtime/GEN_05_01_201_RUNTIME_GENERIC_FUNCTION.ets` |

## 5.1.1 Type Parameter Constraint (12 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_01_01_001_PASS_CONSTRAINT_CLASS | Constraint — class | PASS | `5.1.1_Type_Parameter_Constraint/compile-pass/GEN_05_01_01_001_PASS_CONSTRAINT_CLASS.ets` |
| GEN_05_01_01_002_PASS_CONSTRAINT_UNION | Constraint — union | PASS | `5.1.1_Type_Parameter_Constraint/compile-pass/GEN_05_01_01_002_PASS_CONSTRAINT_UNION.ets` |
| GEN_05_01_01_003_PASS_CONSTRAINT_LITERAL_UNION | Constraint — literal union | PASS | `5.1.1_Type_Parameter_Constraint/compile-pass/GEN_05_01_01_003_PASS_CONSTRAINT_LITERAL_UNION.ets` |
| GEN_05_01_01_004_PASS_CONSTRAINT_KEYOF | Constraint — keyof | PASS | `5.1.1_Type_Parameter_Constraint/compile-pass/GEN_05_01_01_004_PASS_CONSTRAINT_KEYOF.ets` |
| GEN_05_01_01_005_PASS_DEPENDENT_PARAM | Dependent type param | PASS | `5.1.1_Type_Parameter_Constraint/compile-pass/GEN_05_01_01_005_PASS_DEPENDENT_PARAM.ets` |
| GEN_05_01_01_006_PASS_CONSTRAINT_DERIVED | Constraint — derived | PASS | `5.1.1_Type_Parameter_Constraint/compile-pass/GEN_05_01_01_006_PASS_CONSTRAINT_DERIVED.ets` |
| GEN_05_01_01_100_FAIL_CONSTRAINT_NOT_SATISFIED | Constraint not satisfied | FAIL | `5.1.1_Type_Parameter_Constraint/compile-fail/GEN_05_01_01_100_FAIL_CONSTRAINT_NOT_SATISFIED.ets` |
| GEN_05_01_01_101_FAIL_CONSTRAINT_UNION_NOT_SATISFIED | Constraint union not satisfied | FAIL | `5.1.1_Type_Parameter_Constraint/compile-fail/GEN_05_01_01_101_FAIL_CONSTRAINT_UNION_NOT_SATISFIED.ets` |
| GEN_05_01_01_102_FAIL_LITERAL_CONSTRAINT | Literal constraint violation | FAIL | `5.1.1_Type_Parameter_Constraint/compile-fail/GEN_05_01_01_102_FAIL_LITERAL_CONSTRAINT.ets` |
| GEN_05_01_01_103_FAIL_KEYOF_CONSTRAINT | keyof constraint violation | FAIL | `5.1.1_Type_Parameter_Constraint/compile-fail/GEN_05_01_01_103_FAIL_KEYOF_CONSTRAINT.ets` |
| GEN_05_01_01_104_FAIL_DEPENDENT_NOT_SATISFIED | Dependent not satisfied | FAIL | `5.1.1_Type_Parameter_Constraint/compile-fail/GEN_05_01_01_104_FAIL_DEPENDENT_NOT_SATISFIED.ets` |
| GEN_05_01_01_200_RUNTIME_CONSTRAINT_CLASS | Constraint at runtime | RUNTIME | `5.1.1_Type_Parameter_Constraint/runtime/GEN_05_01_01_200_RUNTIME_CONSTRAINT_CLASS.ets` |

## 5.1.2 Type Parameter Default (8 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_01_02_001_PASS_TYPE_PARAM_DEFAULT | Type param default | PASS | `5.1.2_Type_Parameter_Default/compile-pass/GEN_05_01_02_001_PASS_TYPE_PARAM_DEFAULT.ets` |
| GEN_05_01_02_002_PASS_MULTI_DEFAULT | Multi default | PASS | `5.1.2_Type_Parameter_Default/compile-pass/GEN_05_01_02_002_PASS_MULTI_DEFAULT.ets` |
| GEN_05_01_02_003_PASS_FUNC_DEFAULT | Func default | PASS | `5.1.2_Type_Parameter_Default/compile-pass/GEN_05_01_02_003_PASS_FUNC_DEFAULT.ets` |
| GEN_05_01_02_004_PASS_DEFAULT_EQUIV | Default equivalence | PASS | `5.1.2_Type_Parameter_Default/compile-pass/GEN_05_01_02_004_PASS_DEFAULT_EQUIV.ets` |
| GEN_05_01_02_100_FAIL_DEFAULT_AFTER_NO_DEFAULT | Default after no-default | FAIL | `5.1.2_Type_Parameter_Default/compile-fail/GEN_05_01_02_100_FAIL_DEFAULT_AFTER_NO_DEFAULT.ets` |
| GEN_05_01_02_101_FAIL_DEFAULT_REF_FORWARD | Default ref forward | FAIL | `5.1.2_Type_Parameter_Default/compile-fail/GEN_05_01_02_101_FAIL_DEFAULT_REF_FORWARD.ets` |
| GEN_05_01_02_200_RUNTIME_DEFAULT_TYPE_ARG | Default type arg | RUNTIME | `5.1.2_Type_Parameter_Default/runtime/GEN_05_01_02_200_RUNTIME_DEFAULT_TYPE_ARG.ets` |
| GEN_05_01_02_201_RUNTIME_FUNC_EXPLICIT_DEFAULT | Func explicit default | RUNTIME | `5.1.2_Type_Parameter_Default/runtime/GEN_05_01_02_201_RUNTIME_FUNC_EXPLICIT_DEFAULT.ets` |

## 5.1.3 Type Parameter Variance (17 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_01_03_001_PASS_RETURN | Covariant out — return | PASS | `5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_001_PASS_RETURN.ets` |
| GEN_05_01_03_002_PASS_VARIANCE | Type alias variance | PASS | `5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_002_PASS_VARIANCE.ets` |
| GEN_05_01_03_003_PASS_READONLY | Covariant out — readonly | PASS | `5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_003_PASS_READONLY.ets` |
| GEN_05_01_03_004_PASS_PARAM | Contravariant in — param | PASS | `5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_004_PASS_PARAM.ets` |
| GEN_05_01_03_005_PASS_POS | Invariant — any position | PASS | `5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_005_PASS_POS.ets` |
| GEN_05_01_03_006_PASS_INTERLEAVE | Variance interleave | PASS | `5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_006_PASS_INTERLEAVE.ets` |
| GEN_05_01_03_007_PASS_CONSTRUCTOR | out in constructor | PASS | `5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_007_PASS_CONSTRUCTOR.ets` |
| GEN_05_01_03_008_PASS_COVARIANT_OUT | Covariant out runtime | PASS | `5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_008_PASS_COVARIANT_OUT.ets` |
| GEN_05_01_03_009_PASS_CALLBACK_PARAM_INTERLEAVING | Callback param interleaving | PASS | `5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_009_PASS_CALLBACK_PARAM_INTERLEAVING.ets` |
| GEN_05_01_03_010_PASS_CALLBACK_RETURN_INTERLEAVING | Callback return interleaving | PASS | `5.1.3_Type_Parameter_Variance/compile-pass/GEN_05_01_03_010_PASS_CALLBACK_RETURN_INTERLEAVING.ets` |
| GEN_05_01_03_100_FAIL_VARIANCE | Generic method variance | FAIL | `5.1.3_Type_Parameter_Variance/compile-fail/GEN_05_01_03_100_FAIL_VARIANCE.ets` |
| GEN_05_01_03_101_FAIL_POSITION | out in in-position | FAIL | `5.1.3_Type_Parameter_Variance/compile-fail/GEN_05_01_03_101_FAIL_POSITION.ets` |
| GEN_05_01_03_102_FAIL_FIELD | out in field | FAIL | `5.1.3_Type_Parameter_Variance/compile-fail/GEN_05_01_03_102_FAIL_FIELD.ets` |
| GEN_05_01_03_103_FAIL_RETURN | in in out-position return | FAIL | `5.1.3_Type_Parameter_Variance/compile-fail/GEN_05_01_03_103_FAIL_RETURN.ets` |
| GEN_05_01_03_104_FAIL_FIELD | in in invariant field | FAIL | `5.1.3_Type_Parameter_Variance/compile-fail/GEN_05_01_03_104_FAIL_FIELD.ets` |
| GEN_05_01_03_106_FAIL_PARAM | out in method param return | FAIL | `5.1.3_Type_Parameter_Variance/compile-fail/GEN_05_01_03_106_FAIL_PARAM.ets` |
| GEN_05_01_03_200_RUNTIME_COVARIANT_OUT | Covariant out runtime | RUNTIME | `5.1.3_Type_Parameter_Variance/runtime/GEN_05_01_03_200_RUNTIME_COVARIANT_OUT.ets` |

## 5.1.4 Wildcard Type (11 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_01_04_001_PASS_WILDCARD_DECL | Wildcard declaration | PASS | `5.1.4_Wildcard_Type/compile-pass/GEN_05_01_04_001_PASS_WILDCARD_DECL.ets` |
| GEN_05_01_04_002_PASS_INSTANCEOF_WILDCARD | instanceof wildcard | PASS | `5.1.4_Wildcard_Type/compile-pass/GEN_05_01_04_002_PASS_INSTANCEOF_WILDCARD.ets` |
| GEN_05_01_04_100_FAIL_ANY | Wildcard not subtype any | FAIL | `5.1.4_Wildcard_Type/compile-fail/GEN_05_01_04_100_FAIL_ANY.ets` |
| GEN_05_01_04_101_FAIL_CONSTRAINT | Wildcard not subtype constraint | FAIL | `5.1.4_Wildcard_Type/compile-fail/GEN_05_01_04_101_FAIL_CONSTRAINT.ets` |
| GEN_05_01_04_102_FAIL_POS | Wildcard write in-pos | FAIL | `5.1.4_Wildcard_Type/compile-fail/GEN_05_01_04_102_FAIL_POS.ets` |
| GEN_05_01_04_103_FAIL_INVARIANT | Wildcard write invariant | FAIL | `5.1.4_Wildcard_Type/compile-fail/GEN_05_01_04_103_FAIL_INVARIANT.ets` |
| GEN_05_01_04_104_FAIL_NEVER | out wildcard not subtype never | FAIL | `5.1.4_Wildcard_Type/compile-fail/GEN_05_01_04_104_FAIL_NEVER.ets` |
| GEN_05_01_04_105_FAIL_C | in wildcard not subtype C | FAIL | `5.1.4_Wildcard_Type/compile-fail/GEN_05_01_04_105_FAIL_C.ets` |
| GEN_05_01_04_106_FAIL_WRITE | in wildcard write | FAIL | `5.1.4_Wildcard_Type/compile-fail/GEN_05_01_04_106_FAIL_WRITE.ets` |
| GEN_05_01_04_107_FAIL_ASSIGN | Wildcard invariant assign | FAIL | `5.1.4_Wildcard_Type/compile-fail/GEN_05_01_04_107_FAIL_ASSIGN.ets` |
| GEN_05_01_04_200_RUNTIME_WILDCARD | Wildcard runtime | RUNTIME | `5.1.4_Wildcard_Type/runtime/GEN_05_01_04_200_RUNTIME_WILDCARD.ets` |

## 5.2.1 Type Arguments (7 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_02_01_001_PASS_TYPE_ARG_NUMBER | Type arg — number | PASS | `5.2_Generics_Instantiations/5.2.1_Type_Arguments/compile-pass/GEN_05_02_01_001_PASS_TYPE_ARG_NUMBER.ets` |
| GEN_05_02_01_002_PASS_TYPE_ARG_UNION | Type arg — union | PASS | `5.2_Generics_Instantiations/5.2.1_Type_Arguments/compile-pass/GEN_05_02_01_002_PASS_TYPE_ARG_UNION.ets` |
| GEN_05_02_01_003_PASS_TYPE_ARG_ARRAY | Type arg — array | PASS | `5.2_Generics_Instantiations/5.2.1_Type_Arguments/compile-pass/GEN_05_02_01_003_PASS_TYPE_ARG_ARRAY.ets` |
| GEN_05_02_01_004_PASS_TYPE_ARG_TUPLE | Type arg — tuple | PASS | `5.2_Generics_Instantiations/5.2.1_Type_Arguments/compile-pass/GEN_05_02_01_004_PASS_TYPE_ARG_TUPLE.ets` |
| GEN_05_02_01_005_PASS_TYPE_ARG_FUNC_TYPE | Type arg — func type | PASS | `5.2_Generics_Instantiations/5.2.1_Type_Arguments/compile-pass/GEN_05_02_01_005_PASS_TYPE_ARG_FUNC_TYPE.ets` |
| GEN_05_02_01_100_FAIL_INVALID_TYPE_ARG | Invalid type arg | FAIL | `5.2_Generics_Instantiations/5.2.1_Type_Arguments/compile-fail/GEN_05_02_01_100_FAIL_INVALID_TYPE_ARG.ets` |
| GEN_05_02_01_200_RUNTIME_TYPE_ARG | Type arg runtime | RUNTIME | `5.2_Generics_Instantiations/5.2.1_Type_Arguments/runtime/GEN_05_02_01_200_RUNTIME_TYPE_ARG.ets` |

## 5.2.2 Explicit Generic Instantiations (9 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_02_02_001_PASS_EXPLICIT_CLASS_INST | Explicit class instantiation | PASS | `5.2.2_Explicit_Generic_Instantiations/compile-pass/GEN_05_02_02_001_PASS_EXPLICIT_CLASS_INST.ets` |
| GEN_05_02_02_002_PASS_EXPLICIT_METHOD_INST | Explicit method instantiation | PASS | `5.2.2_Explicit_Generic_Instantiations/compile-pass/GEN_05_02_02_002_PASS_EXPLICIT_METHOD_INST.ets` |
| GEN_05_02_02_003_PASS_EXPLICIT_FUNC_INST | Explicit func instantiation | PASS | `5.2.2_Explicit_Generic_Instantiations/compile-pass/GEN_05_02_02_003_PASS_EXPLICIT_FUNC_INST.ets` |
| GEN_05_02_02_004_PASS_EXPLICIT_TYPE_ALIAS | Explicit type alias | PASS | `5.2.2_Explicit_Generic_Instantiations/compile-pass/GEN_05_02_02_004_PASS_EXPLICIT_TYPE_ALIAS.ets` |
| GEN_05_02_02_005_PASS_PARTIAL_INST_GENERIC | Partial instantiation | PASS | `5.2.2_Explicit_Generic_Instantiations/compile-pass/GEN_05_02_02_005_PASS_PARTIAL_INST_GENERIC.ets` |
| GEN_05_02_02_100_FAIL_NON_GENERIC_WITH_ARGS | Non-generic with args | FAIL | `5.2.2_Explicit_Generic_Instantiations/compile-fail/GEN_05_02_02_100_FAIL_NON_GENERIC_WITH_ARGS.ets` |
| GEN_05_02_02_101_FAIL_ARG_COUNT_MISMATCH | Arg count mismatch | FAIL | `5.2.2_Explicit_Generic_Instantiations/compile-fail/GEN_05_02_02_101_FAIL_ARG_COUNT_MISMATCH.ets` |
| GEN_05_02_02_102_FAIL_CONSTRAINT_VIOLATION | Constraint violation | FAIL | `5.2.2_Explicit_Generic_Instantiations/compile-fail/GEN_05_02_02_102_FAIL_CONSTRAINT_VIOLATION.ets` |
| GEN_05_02_02_200_RUNTIME_EXPLICIT_INST | Explicit instantiation | RUNTIME | `5.2.2_Explicit_Generic_Instantiations/runtime/GEN_05_02_02_200_RUNTIME_EXPLICIT_INST.ets` |

## 5.2.3 Implicit Generic Instantiations (7 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| GEN_05_02_03_001_PASS_IMPLICIT_FUNC_INFER | Implicit func infer | PASS | `5.2.3_Implicit_Generic_Instantiations/compile-pass/GEN_05_02_03_001_PASS_IMPLICIT_FUNC_INFER.ets` |
| GEN_05_02_03_002_PASS_IMPLICIT_MULTI_INFER | Implicit multi infer | PASS | `5.2.3_Implicit_Generic_Instantiations/compile-pass/GEN_05_02_03_002_PASS_IMPLICIT_MULTI_INFER.ets` |
| GEN_05_02_03_003_PASS_METHOD_DEFAULT_FROM_CLASS | Method default from class | PASS | `5.2.3_Implicit_Generic_Instantiations/compile-pass/GEN_05_02_03_003_PASS_METHOD_DEFAULT_FROM_CLASS.ets` |
| GEN_05_02_03_100_FAIL_CANNOT_INFER | Cannot infer | FAIL | `5.2.3_Implicit_Generic_Instantiations/compile-fail/GEN_05_02_03_100_FAIL_CANNOT_INFER.ets` |
| GEN_05_02_03_101_FAIL_INFER_NO_CONTEXT | Infer no context | FAIL | `5.2.3_Implicit_Generic_Instantiations/compile-fail/GEN_05_02_03_101_FAIL_INFER_NO_CONTEXT.ets` |
| GEN_05_02_03_102_FAIL_DEFAULT_ORDER_IMPLICIT | Default order implicit | FAIL | `5.2.3_Implicit_Generic_Instantiations/compile-fail/GEN_05_02_03_102_FAIL_DEFAULT_ORDER_IMPLICIT.ets` |
| GEN_05_02_03_200_RUNTIME_IMPLICIT_INST | Implicit instantiation | RUNTIME | `5.2.3_Implicit_Generic_Instantiations/runtime/GEN_05_02_03_200_RUNTIME_IMPLICIT_INST.ets` |
