# 04 Names Declarations Scopes - Test Case Catalog

## 4.1 Names (16 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_01_001_PASS_SIMPLE_NAME | Simple name | PASS | `4.1_Names/compile-pass/NAM_04_01_001_PASS_SIMPLE_NAME.ets` |
| @NAM_04_01_002_PASS_QUALIFIED_NAME_MODULE | Qualified name — module | PASS | `4.1_Names/compile-pass/NAM_04_01_002_PASS_QUALIFIED_NAME_MODULE.ets` |
| @NAM_04_01_003_PASS_QUALIFIED_NAME_CLASS | Qualified name — class | PASS | `4.1_Names/compile-pass/NAM_04_01_003_PASS_QUALIFIED_NAME_CLASS.ets` |
| @NAM_04_01_004_PASS_QUALIFIED_NAME_INSTANCE | Qualified name — instance | PASS | `4.1_Names/compile-pass/NAM_04_01_004_PASS_QUALIFIED_NAME_INSTANCE.ets` |
| @NAM_04_01_005_PASS_IDENTIFIER_UNDERSCORE | Identifier with underscore | PASS | `4.1_Names/compile-pass/NAM_04_01_005_PASS_IDENTIFIER_UNDERSCORE.ets` |
| @NAM_04_01_006_PASS_IDENTIFIER_DOLLAR | Identifier with dollar | PASS | `4.1_Names/compile-pass/NAM_04_01_006_PASS_IDENTIFIER_DOLLAR.ets` |
| @NAM_04_01_007_PASS_MULTIPLE_DOTS | Multiple dot chaining | PASS | `4.1_Names/compile-pass/NAM_04_01_007_PASS_MULTIPLE_DOTS.ets` |
| @NAM_04_01_008_PASS_QUALIFIED_NAME_INTERFACE_INSTANCE | Qualified name — interface instance | PASS | `4.1_Names/compile-pass/NAM_04_01_008_PASS_QUALIFIED_NAME_INTERFACE_INSTANCE.ets` |
| @NAM_04_01_100_FAIL_EMPTY_NAME | Empty name | FAIL | `4.1_Names/compile-fail/NAM_04_01_100_FAIL_EMPTY_NAME.ets` |
| @NAM_04_01_101_FAIL_DIGIT_START | Digit start | FAIL | `4.1_Names/compile-fail/NAM_04_01_101_FAIL_DIGIT_START.ets` |
| @NAM_04_01_102_FAIL_KEYWORD_AS_NAME | Keyword as name | FAIL | `4.1_Names/compile-fail/NAM_04_01_102_FAIL_KEYWORD_AS_NAME.ets` |
| @NAM_04_01_103_FAIL_DOT_ONLY | Dot only | FAIL | `4.1_Names/compile-fail/NAM_04_01_103_FAIL_DOT_ONLY.ets` |
| @NAM_04_01_104_FAIL_SPECIAL_CHARS | Special characters | FAIL | `4.1_Names/compile-fail/NAM_04_01_104_FAIL_SPECIAL_CHARS.ets` |
| @NAM_04_01_105_FAIL_TYPE_KEYWORD | Type keyword clash | FAIL | `4.1_Names/compile-fail/NAM_04_01_105_FAIL_TYPE_KEYWORD.ets` |
| @NAM_04_01_200_RUNTIME_SIMPLE_REF | Simple ref | RUNTIME | `4.1_Names/runtime/NAM_04_01_200_RUNTIME_SIMPLE_REF.ets` |
| @NAM_04_01_201_RUNTIME_QUALIFIED_REF | Qualified ref | RUNTIME | `4.1_Names/runtime/NAM_04_01_201_RUNTIME_QUALIFIED_REF.ets` |

## 4.2 Declarations (13 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_02_001_PASS_DIFF_NAMES | Different names | PASS | `4.2_Declarations/compile-pass/NAM_04_02_001_PASS_DIFF_NAMES.ets` |
| @NAM_04_02_002_PASS_OVERLOAD_SIGNATURE | Overload signature | PASS | `4.2_Declarations/compile-pass/NAM_04_02_002_PASS_OVERLOAD_SIGNATURE.ets` |
| @NAM_04_02_003_PASS_CLASS_STATIC_INSTANCE | Class static vs instance | PASS | `4.2_Declarations/compile-pass/NAM_04_02_003_PASS_CLASS_STATIC_INSTANCE.ets` |
| @NAM_04_02_004_PASS_CLASS_FIELD_METHOD | Class field vs method | PASS | `4.2_Declarations/compile-pass/NAM_04_02_004_PASS_CLASS_FIELD_METHOD.ets` |
| @NAM_04_02_100_FAIL_SAME_NAME_CONST_FUNC | Same name const + func | FAIL | `4.2_Declarations/compile-fail/NAM_04_02_100_FAIL_SAME_NAME_CONST_FUNC.ets` |
| @NAM_04_02_101_FAIL_SAME_NAME_CLASS_VAR | Same name class + var | FAIL | `4.2_Declarations/compile-fail/NAM_04_02_101_FAIL_SAME_NAME_CLASS_VAR.ets` |
| @NAM_04_02_102_FAIL_CLASS_FIELD_METHOD_SAME | Field method same name | FAIL | `4.2_Declarations/compile-fail/NAM_04_02_102_FAIL_CLASS_FIELD_METHOD_SAME.ets` |
| @NAM_04_02_103_FAIL_PREDEFINED_TYPE_CLASH | Predefined type clash | FAIL | `4.2_Declarations/compile-fail/NAM_04_02_103_FAIL_PREDEFINED_TYPE_CLASH.ets` |
| @NAM_04_02_104_FAIL_OVERLOAD_EQUIVALENT | Overload equivalent | FAIL | `4.2_Declarations/compile-fail/NAM_04_02_104_FAIL_OVERLOAD_EQUIVALENT.ets` |
| @NAM_04_02_105_FAIL_OVERLOAD_TYPE_ERASURE | Overload type erasure | FAIL | `4.2_Declarations/compile-fail/NAM_04_02_105_FAIL_OVERLOAD_TYPE_ERASURE.ets` |
| @NAM_04_02_106_FAIL_AMBIGUOUS_IMPORT | Ambiguous import | FAIL | `4.2_Declarations/compile-fail/NAM_04_02_106_FAIL_AMBIGUOUS_IMPORT.ets` |
| @NAM_04_02_107_FAIL_IMPORT_DUPLICATE | Import duplicate | FAIL | `4.2_Declarations/compile-fail/NAM_04_02_107_FAIL_IMPORT_DUPLICATE.ets` |
| @NAM_04_02_200_RUNTIME_OVERLOAD_DISPATCH | Overload dispatch | RUNTIME | `4.2_Declarations/runtime/NAM_04_02_200_RUNTIME_OVERLOAD_DISPATCH.ets` |

## 4.2.1 Declaration Distinguishable by Signatures (3 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_02_01_001_PASS_CLASS_METHOD_OVERLOAD | Class method overload | PASS | `4.2.1_Declaration_Distinguishable_by_Signatures/compile-pass/NAM_04_02_01_001_PASS_CLASS_METHOD_OVERLOAD.ets` |
| @NAM_04_02_01_100_FAIL_INDISTINGUISHABLE_SIGNATURE | Indistinguishable signature | FAIL | `4.2.1_Declaration_Distinguishable_by_Signatures/compile-fail/NAM_04_02_01_100_FAIL_INDISTINGUISHABLE_SIGNATURE.ets` |
| @NAM_04_02_01_200_RUNTIME_DISTINGUISHABLE_SIGNATURE | Distinguishable dispatch | RUNTIME | `4.2.1_Declaration_Distinguishable_by_Signatures/runtime/NAM_04_02_01_200_RUNTIME_DISTINGUISHABLE_SIGNATURE.ets` |

## 4.3 Scopes (19 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_03_001_PASS_MODULE_SCOPE | Module scope | PASS | `4.3_Scopes/compile-pass/NAM_04_03_001_PASS_MODULE_SCOPE.ets` |
| @NAM_04_03_002_PASS_CLASS_SCOPE_THIS | Class scope this | PASS | `4.3_Scopes/compile-pass/NAM_04_03_002_PASS_CLASS_SCOPE_THIS.ets` |
| @NAM_04_03_003_PASS_CLASS_SCOPE_STATIC | Class scope static | PASS | `4.3_Scopes/compile-pass/NAM_04_03_003_PASS_CLASS_SCOPE_STATIC.ets` |
| @NAM_04_03_004_PASS_BLOCK_SCOPE | Block scope | PASS | `4.3_Scopes/compile-pass/NAM_04_03_004_PASS_BLOCK_SCOPE.ets` |
| @NAM_04_03_005_PASS_SHADOWING | Shadowing | PASS | `4.3_Scopes/compile-pass/NAM_04_03_005_PASS_SHADOWING.ets` |
| @NAM_04_03_006_PASS_TYPE_PARAM_SCOPE | Type param scope | PASS | `4.3_Scopes/compile-pass/NAM_04_03_006_PASS_TYPE_PARAM_SCOPE.ets` |
| @NAM_04_03_007_PASS_NESTED_BLOCK | Nested block | PASS | `4.3_Scopes/compile-pass/NAM_04_03_007_PASS_NESTED_BLOCK.ets` |
| @NAM_04_03_008_PASS_FUNC_REF_LET_AFTER_DECL | Func ref let after decl | PASS | `4.3_Scopes/compile-pass/NAM_04_03_008_PASS_FUNC_REF_LET_AFTER_DECL.ets` |
| @NAM_04_03_009_PASS_INTERFACE_SCOPE | Interface scope | PASS | `4.3_Scopes/compile-pass/NAM_04_03_009_PASS_INTERFACE_SCOPE.ets` |
| @NAM_04_03_010_PASS_FUNC_TYPE_PARAM_SCOPE | Func type param scope | PASS | `4.3_Scopes/compile-pass/NAM_04_03_010_PASS_FUNC_TYPE_PARAM_SCOPE.ets` |
| @NAM_04_03_011_PASS_SUPER_ACCESS | Super access | PASS | `4.3_Scopes/compile-pass/NAM_04_03_011_PASS_SUPER_ACCESS.ets` |
| @NAM_04_03_012_PASS_NAMESPACE_SCOPE_EMBEDDED | Namespace scope embedded | PASS | `4.3_Scopes/compile-pass/NAM_04_03_012_PASS_NAMESPACE_SCOPE_EMBEDDED.ets` |
| @NAM_04_03_013_PASS_MODULE_SCOPE | Module scope | PASS | `4.3_Scopes/compile-pass/NAM_04_03_013_PASS_MODULE_SCOPE.ets` |
| @NAM_04_03_014_PASS_SHADOWING | Shadowing | PASS | `4.3_Scopes/compile-pass/NAM_04_03_014_PASS_SHADOWING.ets` |
| @NAM_04_03_100_FAIL_BEFORE_DECLARATION | Before declaration | FAIL | `4.3_Scopes/compile-fail/NAM_04_03_100_FAIL_BEFORE_DECLARATION.ets` |
| @NAM_04_03_101_FAIL_BLOCK_OUT_OF_SCOPE | Block out of scope | FAIL | `4.3_Scopes/compile-fail/NAM_04_03_101_FAIL_BLOCK_OUT_OF_SCOPE.ets` |
| @NAM_04_03_102_FAIL_INSTANCE_AS_STATIC | Instance as static | FAIL | `4.3_Scopes/compile-fail/NAM_04_03_102_FAIL_INSTANCE_AS_STATIC.ets` |
| @NAM_04_03_103_FAIL_AMBIGUOUS_SCOPE | Ambiguous scope | FAIL | `4.3_Scopes/compile-fail/NAM_04_03_103_FAIL_AMBIGUOUS_SCOPE.ets` |
| @NAM_04_03_104_FAIL_TYPE_PARAM_IN_STATIC | Type param in static | FAIL | `4.3_Scopes/compile-fail/NAM_04_03_104_FAIL_TYPE_PARAM_IN_STATIC.ets` |

## 4.4 Accessible (16 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_04_001_PASS_TYPE_ACCESSIBLE | Type accessible | PASS | `4.4_Accessible/compile-pass/NAM_04_04_001_PASS_TYPE_ACCESSIBLE.ets` |
| @NAM_04_04_002_PASS_FUNC_ACCESSIBLE | Func accessible | PASS | `4.4_Accessible/compile-pass/NAM_04_04_002_PASS_FUNC_ACCESSIBLE.ets` |
| @NAM_04_04_003_PASS_VAR_ACCESSIBLE | Var accessible | PASS | `4.4_Accessible/compile-pass/NAM_04_04_003_PASS_VAR_ACCESSIBLE.ets` |
| @NAM_04_04_004_PASS_MODULE_ACCESS | Module access | PASS | `4.4_Accessible/compile-pass/NAM_04_04_004_PASS_MODULE_ACCESS.ets` |
| @NAM_04_04_005_PASS_TYPE_NAME_FOR_FIELD | Type name for field | PASS | `4.4_Accessible/compile-pass/NAM_04_04_005_PASS_TYPE_NAME_FOR_FIELD.ets` |
| @NAM_04_04_006_PASS_METHOD_NAME_CALL | Method name call | PASS | `4.4_Accessible/compile-pass/NAM_04_04_006_PASS_METHOD_NAME_CALL.ets` |
| @NAM_04_04_007_PASS_NAMESPACE_EXPORT_QUALIFIED | Namespace export qualified | PASS | `4.4_Accessible/compile-pass/NAM_04_04_007_PASS_NAMESPACE_EXPORT_QUALIFIED.ets` |
| @NAM_04_04_100_FAIL_OUT_OF_BLOCK_SCOPE | Out of block scope | FAIL | `4.4_Accessible/compile-fail/NAM_04_04_100_FAIL_OUT_OF_BLOCK_SCOPE.ets` |
| @NAM_04_04_101_FAIL_OUT_OF_FUNC_SCOPE | Out of func scope | FAIL | `4.4_Accessible/compile-fail/NAM_04_04_101_FAIL_OUT_OF_FUNC_SCOPE.ets` |
| @NAM_04_04_102_FAIL_USE_BEFORE_DECLARE | Use before declare | FAIL | `4.4_Accessible/compile-fail/NAM_04_04_102_FAIL_USE_BEFORE_DECLARE.ets` |
| @NAM_04_04_103_FAIL_CROSS_FUNC_ACCESS | Cross func access | FAIL | `4.4_Accessible/compile-fail/NAM_04_04_103_FAIL_CROSS_FUNC_ACCESS.ets` |
| @NAM_04_04_104_FAIL_IF_BLOCK_LEAK | If block leak | FAIL | `4.4_Accessible/compile-fail/NAM_04_04_104_FAIL_IF_BLOCK_LEAK.ets` |
| @NAM_04_04_105_FAIL_LOOP_VAR_LEAK | Loop var leak | FAIL | `4.4_Accessible/compile-fail/NAM_04_04_105_FAIL_LOOP_VAR_LEAK.ets` |
| @NAM_04_04_106_FAIL_NAMESPACE_EXPORT_UNQUALIFIED | Namespace export unqualified | FAIL | `4.4_Accessible/compile-fail/NAM_04_04_106_FAIL_NAMESPACE_EXPORT_UNQUALIFIED.ets` |
| @NAM_04_04_200_RUNTIME_SCOPE_CHAIN | Scope chain | RUNTIME | `4.4_Accessible/runtime/NAM_04_04_200_RUNTIME_SCOPE_CHAIN.ets` |
| @NAM_04_04_201_RUNTIME_NESTED_SHADOW | Nested shadow | RUNTIME | `4.4_Accessible/runtime/NAM_04_04_201_RUNTIME_NESTED_SHADOW.ets` |

## 4.5 Type Declarations (24 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_05_001_PASS_RECURSIVE_ARRAY_ELEMENT | Recursive array element | PASS | `4.5_Type_Declarations/compile-pass/NAM_04_05_001_PASS_RECURSIVE_ARRAY_ELEMENT.ets` |
| @NAM_04_05_002_PASS_RECURSIVE_TYPE_ARG | Recursive type arg | PASS | `4.5_Type_Declarations/compile-pass/NAM_04_05_002_PASS_RECURSIVE_TYPE_ARG.ets` |
| @NAM_04_05_003_PASS_GENERIC_ALIAS | Generic alias | PASS | `4.5_Type_Declarations/compile-pass/NAM_04_05_003_PASS_GENERIC_ALIAS.ets` |
| @NAM_04_05_004_PASS_TYPE_PARAM_DEPEND | Type param depend | PASS | `4.5_Type_Declarations/compile-pass/NAM_04_05_004_PASS_TYPE_PARAM_DEPEND.ets` |
| @NAM_04_05_005_PASS_GENERIC_RECURSIVE_OK | Generic recursive OK | PASS | `4.5_Type_Declarations/compile-pass/NAM_04_05_005_PASS_GENERIC_RECURSIVE_OK.ets` |
| @NAM_04_05_006_PASS_GENERIC_UNION_RECURSIVE | Generic union recursive | PASS | `4.5_Type_Declarations/compile-pass/NAM_04_05_006_PASS_GENERIC_UNION_RECURSIVE.ets` |
| @NAM_04_05_007_PASS_TYPE_ALIAS_SIMPLE | Type alias simple | PASS | `4.5_Type_Declarations/compile-pass/NAM_04_05_007_PASS_TYPE_ALIAS_SIMPLE.ets` |
| @NAM_04_05_008_PASS_TYPE_DECL_CLASS | Type declaration class | PASS | `4.5_Type_Declarations/compile-pass/NAM_04_05_008_PASS_TYPE_DECL_CLASS.ets` |
| @NAM_04_05_009_PASS_TYPE_DECL_INTERFACE | Type declaration interface | PASS | `4.5_Type_Declarations/compile-pass/NAM_04_05_009_PASS_TYPE_DECL_INTERFACE.ets` |
| @NAM_04_05_010_PASS_TYPE_DECL_ENUM | Type declaration enum | PASS | `4.5_Type_Declarations/compile-pass/NAM_04_05_010_PASS_TYPE_DECL_ENUM.ets` |
| @NAM_04_05_100_FAIL_DIRECT_SELF_REF | Direct self ref | FAIL | `4.5_Type_Declarations/compile-fail/NAM_04_05_100_FAIL_DIRECT_SELF_REF.ets` |
| @NAM_04_05_101_FAIL_UNION_SELF_REF | Union self ref | FAIL | `4.5_Type_Declarations/compile-fail/NAM_04_05_101_FAIL_UNION_SELF_REF.ets` |
| @NAM_04_05_102_FAIL_CIRCULAR_TYPE_ARG | Circular type arg | FAIL | `4.5_Type_Declarations/compile-fail/NAM_04_05_102_FAIL_CIRCULAR_TYPE_ARG.ets` |
| @NAM_04_05_103_FAIL_PARAM_SELF_DEPEND | Param self depend | FAIL | `4.5_Type_Declarations/compile-fail/NAM_04_05_103_FAIL_PARAM_SELF_DEPEND.ets` |
| @NAM_04_05_104_FAIL_PARAM_CIRCULAR_DEPEND | Param circular depend | FAIL | `4.5_Type_Declarations/compile-fail/NAM_04_05_104_FAIL_PARAM_CIRCULAR_DEPEND.ets` |
| @NAM_04_05_105_FAIL_GENERIC_WO_ARG | Generic without arg | FAIL | `4.5_Type_Declarations/compile-fail/NAM_04_05_105_FAIL_GENERIC_WO_ARG.ets` |
| @NAM_04_05_106_FAIL_INDIRECT_CIRCULAR | Indirect circular | FAIL | `4.5_Type_Declarations/compile-fail/NAM_04_05_106_FAIL_INDIRECT_CIRCULAR.ets` |
| @NAM_04_05_107_FAIL_GENERIC_SELF_REF | Generic self ref | FAIL | `4.5_Type_Declarations/compile-fail/NAM_04_05_107_FAIL_GENERIC_SELF_REF.ets` |
| @NAM_04_05_108_FAIL_INDIRECT_CIRCULAR_ALIAS | Indirect circular alias | FAIL | `4.5_Type_Declarations/compile-fail/NAM_04_05_108_FAIL_INDIRECT_CIRCULAR_ALIAS.ets` |
| @NAM_04_05_109_FAIL_UNION_GENERIC_SELF_REF | Union generic self ref | FAIL | `4.5_Type_Declarations/compile-fail/NAM_04_05_109_FAIL_UNION_GENERIC_SELF_REF.ets` |
| @NAM_04_05_110_FAIL_GENERIC_WO_ARG_DEF | Generic wo arg def | FAIL | `4.5_Type_Declarations/compile-fail/NAM_04_05_110_FAIL_GENERIC_WO_ARG_DEF.ets` |
| @NAM_04_05_111_FAIL_PARAM_CIRCULAR_UNION_DEPEND | Param circular union depend | FAIL | `4.5_Type_Declarations/compile-fail/NAM_04_05_111_FAIL_PARAM_CIRCULAR_UNION_DEPEND.ets` |
| @NAM_04_05_112_FAIL_TYPE_DECL_CONST_ENUM_UNSUPPORTED | Const enum unsupported | FAIL | `4.5_Type_Declarations/compile-fail/NAM_04_05_112_FAIL_TYPE_DECL_CONST_ENUM_UNSUPPORTED.ets` |
| @NAM_04_05_200_RUNTIME_TYPE_ALIAS_USE | Type alias use | RUNTIME | `4.5_Type_Declarations/runtime/NAM_04_05_200_RUNTIME_TYPE_ALIAS_USE.ets` |

## 4.5.1 Type Alias Declaration (11 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_05_01_001_PASS_TYPE_ALIAS_ARRAY | Type alias array | PASS | `4.5.1_Type_Alias_Declaration/compile-pass/NAM_04_05_01_001_PASS_TYPE_ALIAS_ARRAY.ets` |
| @NAM_04_05_01_002_PASS_TYPE_ALIAS_FUNC | Type alias func | PASS | `4.5.1_Type_Alias_Declaration/compile-pass/NAM_04_05_01_002_PASS_TYPE_ALIAS_FUNC.ets` |
| @NAM_04_05_01_003_PASS_TYPE_ALIAS_UNION | Type alias union | PASS | `4.5.1_Type_Alias_Declaration/compile-pass/NAM_04_05_01_003_PASS_TYPE_ALIAS_UNION.ets` |
| @NAM_04_05_01_004_PASS_TYPE_ALIAS_SHORT_NAME | Type alias short name | PASS | `4.5.1_Type_Alias_Declaration/compile-pass/NAM_04_05_01_004_PASS_TYPE_ALIAS_SHORT_NAME.ets` |
| @NAM_04_05_01_005_PASS_GENERIC_FUNC_ALIAS | Generic func alias | PASS | `4.5.1_Type_Alias_Declaration/compile-pass/NAM_04_05_01_005_PASS_GENERIC_FUNC_ALIAS.ets` |
| @NAM_04_05_01_006_PASS_UNION_RECURSIVE | Union recursive | PASS | `4.5.1_Type_Alias_Declaration/compile-pass/NAM_04_05_01_006_PASS_UNION_RECURSIVE.ets` |
| @NAM_04_05_01_007_PASS_RECURSIVE_NESTED | Recursive nested | PASS | `4.5.1_Type_Alias_Declaration/compile-pass/NAM_04_05_01_007_PASS_RECURSIVE_NESTED.ets` |
| @NAM_04_05_01_008_PASS_ALIAS_FUNC_TYPE | Alias func type | PASS | `4.5.1_Type_Alias_Declaration/compile-pass/NAM_04_05_01_008_PASS_ALIAS_FUNC_TYPE.ets` |
| @NAM_04_05_01_100_FAIL_EMPTY_ALIAS | Empty alias | FAIL | `4.5.1_Type_Alias_Declaration/compile-fail/NAM_04_05_01_100_FAIL_EMPTY_ALIAS.ets` |
| @NAM_04_05_01_200_RUNTIME_TYPE_ALIAS_USE | Type alias use | RUNTIME | `4.5.1_Type_Alias_Declaration/runtime/NAM_04_05_01_200_RUNTIME_TYPE_ALIAS_USE.ets` |
| @NAM_04_05_01_202_RUNTIME_VECTOR_EXAMPLE | Vector example | RUNTIME | `4.5.1_Type_Alias_Declaration/runtime/NAM_04_05_01_202_RUNTIME_VECTOR_EXAMPLE.ets` |

## 4.6.1 Variable Declarations (9 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_06_01_001_PASS_VAR_WITH_TYPE | Var with type | PASS | `4.6.1_Variable_Declarations/compile-pass/NAM_04_06_01_001_PASS_VAR_WITH_TYPE.ets` |
| @NAM_04_06_01_002_PASS_VAR_TYPE_INFERRED | Var type inferred | PASS | `4.6.1_Variable_Declarations/compile-pass/NAM_04_06_01_002_PASS_VAR_TYPE_INFERRED.ets` |
| @NAM_04_06_01_003_PASS_VAR_MULTI_DECLARE | Var multi declare | PASS | `4.6.1_Variable_Declarations/compile-pass/NAM_04_06_01_003_PASS_VAR_MULTI_DECLARE.ets` |
| @NAM_04_06_01_004_PASS_VAR_LAMBDA_INFER | Var lambda infer | PASS | `4.6.1_Variable_Declarations/compile-pass/NAM_04_06_01_004_PASS_VAR_LAMBDA_INFER.ets` |
| @NAM_04_06_01_005_PASS_NULL_UNDEF_INFER | Null/undef infer | PASS | `4.6.1_Variable_Declarations/compile-pass/NAM_04_06_01_005_PASS_NULL_UNDEF_INFER.ets` |
| @NAM_04_06_01_100_FAIL_VAR_NO_TYPE_NO_INIT | Var no type no init | FAIL | `4.6.1_Variable_Declarations/compile-fail/NAM_04_06_01_100_FAIL_VAR_NO_TYPE_NO_INIT.ets` |
| @NAM_04_06_01_101_FAIL_AMBIGUOUS_VAR_WITH_INIT | Ambiguous var with init | FAIL | `4.6.1_Variable_Declarations/compile-fail/NAM_04_06_01_101_FAIL_AMBIGUOUS_VAR_WITH_INIT.ets` |
| @NAM_04_06_01_102_FAIL_AMBIGUOUS_VAR_NO_TYPE | Ambiguous var no type | FAIL | `4.6.1_Variable_Declarations/compile-fail/NAM_04_06_01_102_FAIL_AMBIGUOUS_VAR_NO_TYPE.ets` |
| @NAM_04_06_01_200_RUNTIME_VAR_OPS | Var ops runtime | RUNTIME | `4.6.1_Variable_Declarations/runtime/NAM_04_06_01_200_RUNTIME_VAR_OPS.ets` |

## 4.6.2 Constant Declarations (7 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_06_02_001_PASS_CONST_WITH_TYPE | Const with type | PASS | `4.6.2_Constant_Declarations/compile-pass/NAM_04_06_02_001_PASS_CONST_WITH_TYPE.ets` |
| @NAM_04_06_02_002_PASS_CONST_INFERRED | Const inferred | PASS | `4.6.2_Constant_Declarations/compile-pass/NAM_04_06_02_002_PASS_CONST_INFERRED.ets` |
| @NAM_04_06_02_003_PASS_CONST_MULTI | Const multi | PASS | `4.6.2_Constant_Declarations/compile-pass/NAM_04_06_02_003_PASS_CONST_MULTI.ets` |
| @NAM_04_06_02_100_FAIL_CONST_NO_INIT | Const no init | FAIL | `4.6.2_Constant_Declarations/compile-fail/NAM_04_06_02_100_FAIL_CONST_NO_INIT.ets` |
| @NAM_04_06_02_101_FAIL_CONST_AMBIGUOUS_NO_INIT | Const ambiguous no init | FAIL | `4.6.2_Constant_Declarations/compile-fail/NAM_04_06_02_101_FAIL_CONST_AMBIGUOUS_NO_INIT.ets` |
| @NAM_04_06_02_102_FAIL_CONST_NO_TYPE_NO_INIT | Const no type no init | FAIL | `4.6.2_Constant_Declarations/compile-fail/NAM_04_06_02_102_FAIL_CONST_NO_TYPE_NO_INIT.ets` |
| @NAM_04_06_02_200_RUNTIME_CONST_OPS | Const ops runtime | RUNTIME | `4.6.2_Constant_Declarations/runtime/NAM_04_06_02_200_RUNTIME_CONST_OPS.ets` |

## 4.6.3 Validity of Initializer (4 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_06_03_001_PASS_INIT_REF_PREVIOUS | Init ref previous | PASS | `4.6.3_Validity_of_Initializer/compile-pass/NAM_04_06_03_001_PASS_INIT_REF_PREVIOUS.ets` |
| @NAM_04_06_03_100_FAIL_INIT_REF_FORWARD | Init ref forward | FAIL | `4.6.3_Validity_of_Initializer/compile-fail/NAM_04_06_03_100_FAIL_INIT_REF_FORWARD.ets` |
| @NAM_04_06_03_101_FAIL_VAR_INIT_REF_FORWARD_CONST | Var init ref forward const | FAIL | `4.6.3_Validity_of_Initializer/compile-fail/NAM_04_06_03_101_FAIL_VAR_INIT_REF_FORWARD_CONST.ets` |
| @NAM_04_06_03_200_RUNTIME_INIT_REF_PREVIOUS | Init ref previous runtime | RUNTIME | `4.6.3_Validity_of_Initializer/runtime/NAM_04_06_03_200_RUNTIME_INIT_REF_PREVIOUS.ets` |

## 4.6.4 Assignability with Initializer (3 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_06_04_001_PASS_ASSIGNABLE_INIT | Assignable init | PASS | `4.6.4_Assignability_with_Initializer/compile-pass/NAM_04_06_04_001_PASS_ASSIGNABLE_INIT.ets` |
| @NAM_04_06_04_100_FAIL_INIT_NOT_ASSIGNABLE | Init not assignable | FAIL | `4.6.4_Assignability_with_Initializer/compile-fail/NAM_04_06_04_100_FAIL_INIT_NOT_ASSIGNABLE.ets` |
| @NAM_04_06_04_200_RUNTIME_ASSIGNABLE_INIT | Assignable init runtime | RUNTIME | `4.6.4_Assignability_with_Initializer/runtime/NAM_04_06_04_200_RUNTIME_ASSIGNABLE_INIT.ets` |

## 4.6.5 Type Inference from Initializer (9 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_06_05_001_PASS_LET_LITERAL_PROMOTION | Let literal promotion | PASS | `4.6.5_Type_Inference_from_Initializer/compile-pass/NAM_04_06_05_001_PASS_LET_LITERAL_PROMOTION.ets` |
| @NAM_04_06_05_002_PASS_CONST_LITERAL_RETAIN | Const literal retain | PASS | `4.6.5_Type_Inference_from_Initializer/compile-pass/NAM_04_06_05_002_PASS_CONST_LITERAL_RETAIN.ets` |
| @NAM_04_06_05_003_PASS_TERNARY_INFER_LET | Ternary infer let | PASS | `4.6.5_Type_Inference_from_Initializer/compile-pass/NAM_04_06_05_003_PASS_TERNARY_INFER_LET.ets` |
| @NAM_04_06_05_004_PASS_TERNARY_INFER_CONST | Ternary infer const | PASS | `4.6.5_Type_Inference_from_Initializer/compile-pass/NAM_04_06_05_004_PASS_TERNARY_INFER_CONST.ets` |
| @NAM_04_06_05_005_PASS_TERNARY_INFERENCE | Ternary inference | PASS | `4.6.5_Type_Inference_from_Initializer/compile-pass/NAM_04_06_05_005_PASS_TERNARY_INFERENCE.ets` |
| @NAM_04_06_05_100_FAIL_OBJECT_LITERAL_INFER | Object literal infer | FAIL | `4.6.5_Type_Inference_from_Initializer/compile-fail/NAM_04_06_05_100_FAIL_OBJECT_LITERAL_INFER.ets` |
| @NAM_04_06_05_101_FAIL_CONST_OBJECT_LITERAL_INFER | Const object literal infer | FAIL | `4.6.5_Type_Inference_from_Initializer/compile-fail/NAM_04_06_05_101_FAIL_CONST_OBJECT_LITERAL_INFER.ets` |
| @NAM_04_06_05_200_RUNTIME_TYPE_INFERENCE | Type inference runtime | RUNTIME | `4.6.5_Type_Inference_from_Initializer/runtime/NAM_04_06_05_200_RUNTIME_TYPE_INFERENCE.ets` |
| @NAM_04_06_05_201_RUNTIME_TERNARY_INFERENCE | Ternary inference runtime | RUNTIME | `4.6.5_Type_Inference_from_Initializer/runtime/NAM_04_06_05_201_RUNTIME_TERNARY_INFERENCE.ets` |

## 4.7 Function Declarations (5 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_07_001_PASS_FUNC_DECLARATION | Func declaration | PASS | `4.7_Function_Declarations/compile-pass/NAM_04_07_001_PASS_FUNC_DECLARATION.ets` |
| @NAM_04_07_002_PASS_NATIVE_FUNC | Native func | PASS | `4.7_Function_Declarations/compile-pass/NAM_04_07_002_PASS_NATIVE_FUNC.ets` |
| @NAM_04_07_100_FAIL_NATIVE_WITH_BODY | Native with body | FAIL | `4.7_Function_Declarations/compile-fail/NAM_04_07_100_FAIL_NATIVE_WITH_BODY.ets` |
| @NAM_04_07_101_FAIL_FUNC_NOT_TOP_LEVEL | Func not top level | FAIL | `4.7_Function_Declarations/compile-fail/NAM_04_07_101_FAIL_FUNC_NOT_TOP_LEVEL.ets` |
| @NAM_04_07_200_RUNTIME_FUNC_CALL | Func call runtime | RUNTIME | `4.7_Function_Declarations/runtime/NAM_04_07_200_RUNTIME_FUNC_CALL.ets` |

## 4.7.1 Signatures (5 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_07_01_001_PASS_GENERIC_FUNC | Generic func | PASS | `4.7.1_Signatures/compile-pass/NAM_04_07_01_001_PASS_GENERIC_FUNC.ets` |
| @NAM_04_07_01_002_PASS_FUNC_SIGNATURE | Func signature | PASS | `4.7.1_Signatures/compile-pass/NAM_04_07_01_002_PASS_FUNC_SIGNATURE.ets` |
| @NAM_04_07_01_003_PASS_FUNC_NO_PARAMS | Func no params | PASS | `4.7.1_Signatures/compile-pass/NAM_04_07_01_003_PASS_FUNC_NO_PARAMS.ets` |
| @NAM_04_07_01_100_FAIL_RETURN_TYPE_MISMATCH | Return type mismatch | FAIL | `4.7.1_Signatures/compile-fail/NAM_04_07_01_100_FAIL_RETURN_TYPE_MISMATCH.ets` |
| @NAM_04_07_01_200_RUNTIME_FUNC_SIGNATURE | Func signature runtime | RUNTIME | `4.7.1_Signatures/runtime/NAM_04_07_01_200_RUNTIME_FUNC_SIGNATURE.ets` |

## 4.7.2 Parameter List (3 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_07_02_001_PASS_REQUIRED_PARAMS | Required params | PASS | `4.7.2_Parameter_List/compile-pass/NAM_04_07_02_001_PASS_REQUIRED_PARAMS.ets` |
| @NAM_04_07_02_100_FAIL_OPTIONAL_BEFORE_REQUIRED | Optional before required | FAIL | `4.7.2_Parameter_List/compile-fail/NAM_04_07_02_100_FAIL_OPTIONAL_BEFORE_REQUIRED.ets` |
| @NAM_04_07_02_200_RUNTIME_REQUIRED_PARAMS | Required params runtime | RUNTIME | `4.7.2_Parameter_List/runtime/NAM_04_07_02_200_RUNTIME_REQUIRED_PARAMS.ets` |

## 4.7.3 Readonly Parameters (5 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_07_03_001_PASS_READONLY_PARAM_READ | Readonly param read | PASS | `4.7.3_Readonly_Parameters/compile-pass/NAM_04_07_03_001_PASS_READONLY_PARAM_READ.ets` |
| @NAM_04_07_03_100_FAIL_READONLY_ASSIGN | Readonly param assign | FAIL | `4.7.3_Readonly_Parameters/compile-fail/NAM_04_07_03_100_FAIL_READONLY_ASSIGN.ets` |
| @NAM_04_07_03_101_FAIL_READONLY_TUPLE_ASSIGN | Readonly tuple assign | FAIL | `4.7.3_Readonly_Parameters/compile-fail/NAM_04_07_03_101_FAIL_READONLY_TUPLE_ASSIGN.ets` |
| @NAM_04_07_03_200_RUNTIME_READONLY_PARAM | Readonly param runtime | RUNTIME | `4.7.3_Readonly_Parameters/runtime/NAM_04_07_03_200_RUNTIME_READONLY_PARAM.ets` |
| @NAM_04_07_03_201_RUNTIME_READONLY_ARRAY_TUPLE | Readonly array tuple runtime | RUNTIME | `4.7.3_Readonly_Parameters/runtime/NAM_04_07_03_201_RUNTIME_READONLY_ARRAY_TUPLE.ets` |

## 4.7.4 Optional Parameters (5 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_07_04_001_PASS_OPTIONAL_DEFAULT | Optional default | PASS | `4.7.4_Optional_Parameters/compile-pass/NAM_04_07_04_001_PASS_OPTIONAL_DEFAULT.ets` |
| @NAM_04_07_04_002_PASS_OPTIONAL_QMARK | Optional qmark | PASS | `4.7.4_Optional_Parameters/compile-pass/NAM_04_07_04_002_PASS_OPTIONAL_QMARK.ets` |
| @NAM_04_07_04_100_FAIL_OPTIONAL_BEFORE_REQUIRED | Optional before required | FAIL | `4.7.4_Optional_Parameters/compile-fail/NAM_04_07_04_100_FAIL_OPTIONAL_BEFORE_REQUIRED.ets` |
| @NAM_04_07_04_200_RUNTIME_OPTIONAL_DEFAULT | Optional default runtime | RUNTIME | `4.7.4_Optional_Parameters/runtime/NAM_04_07_04_200_RUNTIME_OPTIONAL_DEFAULT.ets` |
| @NAM_04_07_04_201_RUNTIME_QMARK_COMPARISON | Qmark comparison runtime | RUNTIME | `4.7.4_Optional_Parameters/runtime/NAM_04_07_04_201_RUNTIME_QMARK_COMPARISON.ets` |

## 4.7.5 Rest Parameter (15 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_07_05_001_PASS_REST_ARRAY | Rest array | PASS | `4.7.5_Rest_Parameter/compile-pass/NAM_04_07_05_001_PASS_REST_ARRAY.ets` |
| @NAM_04_07_05_002_PASS_REST_TUPLE | Rest tuple | PASS | `4.7.5_Rest_Parameter/compile-pass/NAM_04_07_05_002_PASS_REST_TUPLE.ets` |
| @NAM_04_07_05_003_PASS_REST_GENERIC | Rest generic | PASS | `4.7.5_Rest_Parameter/compile-pass/NAM_04_07_05_003_PASS_REST_GENERIC.ets` |
| @NAM_04_07_05_004_PASS_OPT_TUPLE_REST_OK | Opt tuple rest ok | PASS | `4.7.5_Rest_Parameter/compile-pass/NAM_04_07_05_004_PASS_OPT_TUPLE_REST_OK.ets` |
| @NAM_04_07_05_005_PASS_TUPLE_REST_OK | Tuple rest ok | PASS | `4.7.5_Rest_Parameter/compile-pass/NAM_04_07_05_005_PASS_TUPLE_REST_OK.ets` |
| @NAM_04_07_05_100_FAIL_REST_FOLLOWED_BY_PARAM | Rest followed by param | FAIL | `4.7.5_Rest_Parameter/compile-fail/NAM_04_07_05_100_FAIL_REST_FOLLOWED_BY_PARAM.ets` |
| @NAM_04_07_05_101_FAIL_REST_NOT_ARRAY | Rest not array | FAIL | `4.7.5_Rest_Parameter/compile-fail/NAM_04_07_05_101_FAIL_REST_NOT_ARRAY.ets` |
| @NAM_04_07_05_102_FAIL_REST_TUPLE_WRONG_COUNT | Rest tuple wrong count | FAIL | `4.7.5_Rest_Parameter/compile-fail/NAM_04_07_05_102_FAIL_REST_TUPLE_WRONG_COUNT.ets` |
| @NAM_04_07_05_103_FAIL_OPT_TUPLE_REST_MISSING | Opt tuple rest missing | FAIL | `4.7.5_Rest_Parameter/compile-fail/NAM_04_07_05_103_FAIL_OPT_TUPLE_REST_MISSING.ets` |
| @NAM_04_07_05_104_FAIL_TUPLE_REST_WRONG_COUNT_1 | Tuple rest wrong count 1 | FAIL | `4.7.5_Rest_Parameter/compile-fail/NAM_04_07_05_104_FAIL_TUPLE_REST_WRONG_COUNT_1.ets` |
| @NAM_04_07_05_105_FAIL_TUPLE_REST_WRONG_TYPE | Tuple rest wrong type | FAIL | `4.7.5_Rest_Parameter/compile-fail/NAM_04_07_05_105_FAIL_TUPLE_REST_WRONG_TYPE.ets` |
| @NAM_04_07_05_200_RUNTIME_SPREAD_CALL | Spread call runtime | RUNTIME | `4.7.5_Rest_Parameter/runtime/NAM_04_07_05_200_RUNTIME_SPREAD_CALL.ets` |
| @NAM_04_07_05_201_RUNTIME_REST_ARRAY | Rest array runtime | RUNTIME | `4.7.5_Rest_Parameter/runtime/NAM_04_07_05_201_RUNTIME_REST_ARRAY.ets` |
| @NAM_04_07_05_202_RUNTIME_REST_NEW_ARRAY | Rest new array runtime | RUNTIME | `4.7.5_Rest_Parameter/runtime/NAM_04_07_05_202_RUNTIME_REST_NEW_ARRAY.ets` |
| @NAM_04_07_05_204_RUNTIME_SPREAD_TUPLE | Spread tuple runtime | RUNTIME | `4.7.5_Rest_Parameter/runtime/NAM_04_07_05_204_RUNTIME_SPREAD_TUPLE.ets` |

## 4.7.6 Shadowing by Parameter (5 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_07_06_001_PASS_PARAM_SHADOWING | Param shadowing | PASS | `4.7.6_Shadowing_by_Parameter/compile-pass/NAM_04_07_06_001_PASS_PARAM_SHADOWING.ets` |
| @NAM_04_07_06_002_PASS_CLASS_METHOD_SHADOW | Class method shadow | PASS | `4.7.6_Shadowing_by_Parameter/compile-pass/NAM_04_07_06_002_PASS_CLASS_METHOD_SHADOW.ets` |
| @NAM_04_07_06_100_FAIL_LOCAL_SHADOWS_PARAM | Local shadows param | FAIL | `4.7.6_Shadowing_by_Parameter/compile-fail/NAM_04_07_06_100_FAIL_LOCAL_SHADOWS_PARAM.ets` |
| @NAM_04_07_06_200_RUNTIME_PARAM_SHADOWING | Param shadowing runtime | RUNTIME | `4.7.6_Shadowing_by_Parameter/runtime/NAM_04_07_06_200_RUNTIME_PARAM_SHADOWING.ets` |
| @NAM_04_07_06_201_RUNTIME_SHADOW_GLOBAL | Shadow global runtime | RUNTIME | `4.7.6_Shadowing_by_Parameter/runtime/NAM_04_07_06_201_RUNTIME_SHADOW_GLOBAL.ets` |

## 4.7.7 Return Type (14 cases)

| ID | 子主题 | 类型 | 文件 |
|---|--------|:--:|------|
| @NAM_04_07_07_001_PASS_RETURN_INFERRED_BODY | Return inferred body | PASS | `4.7.7_Return_Type/compile-pass/NAM_04_07_07_001_PASS_RETURN_INFERRED_BODY.ets` |
| @NAM_04_07_07_002_PASS_RETURN_UNION_VOID | Return union void | PASS | `4.7.7_Return_Type/compile-pass/NAM_04_07_07_002_PASS_RETURN_UNION_VOID.ets` |
| @NAM_04_07_07_003_PASS_RETURN_VOID | Return void | PASS | `4.7.7_Return_Type/compile-pass/NAM_04_07_07_003_PASS_RETURN_VOID.ets` |
| @NAM_04_07_07_004_PASS_RETURN_UNDEFINED | Return undefined | PASS | `4.7.7_Return_Type/compile-pass/NAM_04_07_07_004_PASS_RETURN_UNDEFINED.ets` |
| @NAM_04_07_07_005_PASS_RETURN_INFERRED | Return inferred | PASS | `4.7.7_Return_Type/compile-pass/NAM_04_07_07_005_PASS_RETURN_INFERRED.ets` |
| @NAM_04_07_07_006_PASS_ARROW_RETURN_UNDEFINED | Arrow return undefined | PASS | `4.7.7_Return_Type/compile-pass/NAM_04_07_07_006_PASS_ARROW_RETURN_UNDEFINED.ets` |
| @NAM_04_07_07_007_PASS_ARROW_RETURN_VOID | Arrow return void | PASS | `4.7.7_Return_Type/compile-pass/NAM_04_07_07_007_PASS_ARROW_RETURN_VOID.ets` |
| @NAM_04_07_07_008_PASS_ARROW_RETURN_INFERRED | Arrow return inferred | PASS | `4.7.7_Return_Type/compile-pass/NAM_04_07_07_008_PASS_ARROW_RETURN_INFERRED.ets` |
| @NAM_04_07_07_100_FAIL_RETURN_MISSING | Return missing | FAIL | `4.7.7_Return_Type/compile-fail/NAM_04_07_07_100_FAIL_RETURN_MISSING.ets` |
| @NAM_04_07_07_101_FAIL_RETURN_NEVER_MISSING | Return never missing | FAIL | `4.7.7_Return_Type/compile-fail/NAM_04_07_07_101_FAIL_RETURN_NEVER_MISSING.ets` |
| @NAM_04_07_07_102_FAIL_RETURN_IMPLICIT_UNDEFINED | Return implicit undefined | FAIL | `4.7.7_Return_Type/compile-fail/NAM_04_07_07_102_FAIL_RETURN_IMPLICIT_UNDEFINED.ets` |
| @NAM_04_07_07_103_FAIL_ARROW_RETURN_MISSING | Arrow return missing | FAIL | `4.7.7_Return_Type/compile-fail/NAM_04_07_07_103_FAIL_ARROW_RETURN_MISSING.ets` |
| @NAM_04_07_07_104_FAIL_ARROW_RETURN_NEVER | Arrow return never | FAIL | `4.7.7_Return_Type/compile-fail/NAM_04_07_07_104_FAIL_ARROW_RETURN_NEVER.ets` |
| @NAM_04_07_07_200_RUNTIME_FUNC_RETURN | Func return runtime | RUNTIME | `4.7.7_Return_Type/runtime/NAM_04_07_07_200_RUNTIME_FUNC_RETURN.ets` |
