# 15 Semantic Rules — 测试用例目录

**生成日期：** 2026-06-26
**共计：** 873 个测试用例

> 此章节按规则类别组织，用例文件名前缀 `SEM_`，存放于各规则子章节的 `compile-pass/` / `compile-fail/` / `runtime/` 目录。


## 15.1.1 Type of Standalone Expression（6）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_01_01_001_PASS_INT_LITERAL_TYPE | compile-pass | 验证独立整数字面量推断为 int 类型 |
|   2 | SEM_15_01_01_002_PASS_FLOAT_LITERAL_TYPE | compile-pass | 验证独立浮点字面量推断为 double 类型 |
|   3 | SEM_15_01_01_003_PASS_CONST_EXPR_TYPE | compile-pass | 验证常量表达式的类型从操作数和操作推断 |
|   4 | SEM_15_01_01_004_PASS_ARRAY_LITERAL_TYPE | compile-pass | 验证数组字面量类型从元素推断 |
|   5 | SEM_15_01_01_100_FAIL_OBJECT_LITERAL_STANDALONE | compile-fail | 验证对象字面量作为独立表达式应产生编译错误 ESE0127 |
|   6 | SEM_15_01_01_200_RUNTIME_STANDALONE | runtime | 验证独立表达式运行时类型行为：整数字面量作为独立表达式推断正确 |

## 15.1.2 Specifics of Assignment like Contexts（7）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_01_02_001_PASS_KNOWN_RHS_ASSIGN | compile-pass | 验证赋值上下文中 RHS 类型已知时的可赋值性检查 |
|   2 | SEM_15_01_02_002_PASS_UNKNOWN_RHS_INFER | compile-pass | 验证赋值上下文中 RHS 类型未知时从 LHS 类型推断 |
|   3 | SEM_15_01_02_003_PASS_WIDENING_ASSIGN | compile-pass | 验证赋值上下文中数值拓宽：int → double 可赋值 |
|   4 | SEM_15_01_02_004_PASS_SUBTYPE_ASSIGN | compile-pass | 验证赋值上下文中子类型赋值：Dog → Animal 可赋值 |
|   5 | SEM_15_01_02_100_FAIL_TYPE_MISMATCH | compile-fail | 验证赋值上下文中类型不匹配拒绝：string 不可赋值给 int |
|   6 | SEM_15_01_02_101_FAIL_UNRELATED_ASSIGN | compile-fail | 验证赋值上下文中不相关类拒绝：Dog 不可赋值给 Cat |
|   7 | SEM_15_01_02_200_RUNTIME_ASSIGN_SEMANTICS | runtime | 验证赋值上下文运行时行为：赋值后变量值正确 |

## 15.1.3 Specifics of Variable Initialization Context（8）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_01_03_001_PASS_EXPLICIT_TYPE_INIT | compile-pass | 验证有显式类型注解的变量初始化与赋值上下文规则一致 |
|   2 | SEM_15_01_03_002_PASS_INFER_FROM_INITIALIZER | compile-pass | 验证无显式类型注解时从初始化器推断类型 |
|   3 | SEM_15_01_03_003_PASS_CONST_INIT | compile-pass | 验证 const 声明初始化类型推断 |
|   4 | SEM_15_01_03_004_PASS_EXPR_INIT | compile-pass | 验证初始化器中表达式推断：复杂表达式作为初始化器 |
|   5 | SEM_15_01_03_005_PASS_infer_from_param | compile-pass | 规范示例：从已知类型的表达式推断变量类型 |
|   6 | SEM_15_01_03_006_PASS_infer_array_from_literal | compile-pass | 规范示例：数组字面量作为独立表达式推断变量类型 |
|   7 | SEM_15_01_03_100_FAIL_INIT_TYPE_MISMATCH | compile-fail | 验证初始化器类型不匹配拒绝：显式类型与初始化器类型冲突 |
|   8 | SEM_15_01_03_200_RUNTIME_INIT | runtime | 验证变量初始化运行时行为 |

## 15.1.4 Specifics of Numeric Operator Contexts（5）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_01_04_001_PASS_NUMERIC_OPERATOR_WIDEN | compile-pass | 验证数值运算符操作数拓宽到更大类型（最低 int） |
|   2 | SEM_15_01_04_002_PASS_BYTE_SHORT_INC | compile-pass | 验证 byte/short 自增不自宽 |
|   3 | SEM_15_01_04_003_PASS_MIXED_NUMERIC | compile-pass | 验证混合数值类型运算拓宽：int + long → long |
|   4 | SEM_15_01_04_100_FAIL_BOOL_NUMERIC | compile-fail | 验证非数值运算符不可用于数值：boolean + int 无效 |
|   5 | SEM_15_01_04_200_RUNTIME_NUMERIC_OPS | runtime | 验证数值运算符运行时行为 |

## 15.1.5 Specifics of String Operator Contexts（5）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_01_05_001_PASS_STRING_OPERATOR_CONVERSION | compile-pass | 验证二元 '+' 运算符在一侧为 string 时进行字符串转换 |
|   2 | SEM_15_01_05_002_PASS_STRING_BOOL | compile-pass | 验证字符串与布尔值拼接：string + boolean → string |
|   3 | SEM_15_01_05_003_PASS_STRING_DOUBLE | compile-pass | 验证字符串与 double 拼接：string + double → string |
|   4 | SEM_15_01_05_100_FAIL_STRING_SUB | compile-fail | 验证二进制运算符 '-' 不可用于字符串：string - string 无效 |
|   5 | SEM_15_01_05_200_RUNTIME_STRING_CONCAT | runtime | 验证字符串拼接运行时行为 |

## 15.1.6 Other Contexts（8）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_01_06_001_PASS_string_standalone | compile-pass | 其余上下文：独立字符串表达式推断 |
|   2 | SEM_15_01_06_002_PASS_BOOL_CONTEXT | compile-pass | 其余上下文：独立布尔表达式推断 |
|   3 | SEM_15_01_06_003_PASS_ARRAY_CONTEXT | compile-pass | 其余上下文：数组字面量作为独立表达式 |
|   4 | SEM_15_01_06_004_PASS_FUNC_RETURN_CONTEXT | compile-pass | 其余上下文：未分类表达式中的类型注解变量声明 |
|   5 | SEM_15_01_06_005_PASS_PROPERTY_ACCESS | compile-pass | 其余上下文：属性访问表达式推断 |
|   6 | SEM_15_01_06_006_PASS_bool_string_concat | compile-pass | 其余上下文布尔拼接 - 编译器自动转换 |
|   7 | SEM_15_01_06_100_FAIL_MISMATCH | compile-fail | 其余上下文类型不匹配拒绝 |
|   8 | SEM_15_01_06_200_RUNTIME_other_contexts | runtime | 其余上下文运行时行为 |

## 15.1.7 Specifics of Type Parameters（5）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_01_07_001_PASS_TYPE_PARAM_RETURN | compile-pass | 验证类型参数作为返回值类型：泛型函数返回类型参数类型 |
|   2 | SEM_15_01_07_002_PASS_TYPE_PARAM_CONSTRAINT | compile-pass | 验证类型参数约束：extends 约束的类型参数可调用约束方法 |
|   3 | SEM_15_01_07_100_FAIL_TYPE_PARAM_LHS_INFERENCE | compile-fail | 验证类型参数作为 LHS 时不提供推断信息 |
|   4 | SEM_15_01_07_101_FAIL_type_param_ctor_inference | compile-fail | 规范示例：类型参数作为构造函数参数目标类型时按独立表达式推断 |
|   5 | SEM_15_01_07_200_RUNTIME_TYPE_PARAM | runtime | 验证类型参数运行时行为：泛型函数运行时派发正确 |

## 15.1.8 Semantic Essentials Summary（3）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_01_08_001_PASS_comprehensive_expr | compile-pass | 语义基础总结：综合表达式验证 |
|   2 | SEM_15_01_08_100_FAIL_invalid_operation | compile-fail | 语义总结无效操作拒绝 |
|   3 | SEM_15_01_08_200_RUNTIME_summary | runtime | 语义总结运行时行为 |

## 15.10.1 Implicit Function Overloading（10）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_10_01_001_PASS_FUNCTION_OVERLOAD | compile-pass | 验证函数重载：同名函数不同参数类型可共存 |
|   2 | SEM_15_10_01_002_PASS_PARAM_COUNT_OVERLOAD | compile-pass | 验证多参数重载：不同参数数量的函数重载 |
|   3 | SEM_15_10_01_003_PASS_UNION_OVERLOAD | compile-pass | 验证联合类型参数重载：参数类型为联合类型时的重载解析 |
|   4 | SEM_15_10_01_004_PASS_UNAMBIGUOUS_OVERLOAD | compile-pass | 验证重载解析 — 编译器在可确定良好匹配时允许重载 |
|   5 | SEM_15_10_01_005_PASS_function_overload_by_type | compile-pass | Function overload by parameter type resolves correctly |
|   6 | SEM_15_10_01_006_PASS_generic_plain_equiv_first | compile-pass | Generic before plain: instantiation with T=number, textually first used |
|   7 | SEM_15_10_01_007_PASS_plain_generic_equiv_first | compile-pass | Plain before generic: plain bar() called |
|   8 | SEM_15_10_01_100_FAIL_ERASURE_AMBIGUOUS | compile-fail | 验证重载解析 — 类型擦除后签名不可区分时报错 |
|   9 | SEM_15_10_01_101_FAIL_overload_equivalent_non_generic | compile-fail | Overload-equivalent non-generic functions cause compile-time error |
|  10 | SEM_15_10_01_200_RUNTIME_FUNCTION_OVERLOAD | runtime | 函数重载运行时解析 |

## 15.10.2 Implicit Method Overloading（7）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_10_02_001_PASS_METHOD_OVERLOAD_2 | compile-pass | 方法重载可区分 - 编译器选择良好匹配 |
|   2 | SEM_15_10_02_002_PASS_METHOD_OVERLOAD | compile-pass | 验证类方法重载：同名方法不同参数可共存 |
|   3 | SEM_15_10_02_003_PASS_inherited_method_overload | compile-pass | Inherited method overload from superclass |
|   4 | SEM_15_10_02_004_PASS_class_method_overload | compile-pass | Class method overload by parameter type |
|   5 | SEM_15_10_02_005_PASS_generic_class_equiv_first | compile-pass | Generic instantiation leads to overload-equivalent methods, textually first called |
|   6 | SEM_15_10_02_100_FAIL_EQUIVALENT_METHOD | compile-fail | 方法重载不可区分拒绝 |
|   7 | SEM_15_10_02_200_RUNTIME_method_overload | runtime | 方法重载运行时 |

## 15.10.3 Implicit Constructor Overloading（4）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_10_03_001_PASS_CTOR_OVERLOAD | compile-pass | 验证构造函数重载：不同参数列表的构造函数 |
|   2 | SEM_15_10_03_002_PASS_constructor_overload | compile-pass | Implicit constructor overloading by parameter type |
|   3 | SEM_15_10_03_100_FAIL_CTOR_OVERLOAD | compile-fail | 构造函数重载非法参数 |
|   4 | SEM_15_10_03_200_RUNTIME_ctor_overload | runtime | 构造函数重载运行时 |

## 15.10.4 Overload Equivalent Signatures（4）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_10_04_001_PASS_distinguishable_overload | compile-pass | 可区分重载通过：不同类型的参数可区分重载 |
|   2 | SEM_15_10_04_100_FAIL_EQUIVALENT_SIG | compile-fail | 验证等价签名拒绝：仅返回值不同的重载应报错 |
|   3 | SEM_15_10_04_101_FAIL_overload_equivalent_sig | compile-fail | Overload-equivalent signatures (Array<string> vs Array<number> erased to Array<>) cause compile-time error |
|   4 | SEM_15_10_04_200_RUNTIME_equivalent_sig | runtime | 等价签名运行时 |

## 15.10 Overloading（49）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_10_00_001_PASS_implicit_function | compile-pass | 同名函数参数类型不同。 |
|   2 | SEM_15_10_00_002_PASS_implicit_method | compile-pass | 同名实例方法重载。 |
|   3 | SEM_15_10_00_003_PASS_implicit_constructor | compile-pass | 多个构造器重载。 |
|   4 | SEM_15_10_00_004_PASS_generic_and_nongeneric_equivalent | compile-pass | 规范允许的泛型与非泛型等价场景。 |
|   5 | SEM_15_10_00_005_PASS_static_method_overload | compile-pass | 静态方法重载。 |
|   6 | SEM_15_10_00_006_PASS_function_overload_by_param | compile-pass | (cross-language comparison) |
|   7 | SEM_15_10_00_007_PASS_static_and_instance_overloads | compile-pass | (cross-language comparison) |
|   8 | SEM_15_10_00_008_PASS_constructor_overload | compile-pass | (cross-language comparison) |
|   9 | SEM_15_10_00_009_PASS_single_main | compile-pass | (cross-language comparison) |
|  10 | SEM_15_10_00_010_PASS_SMART_FUNC_instanceof_narrowing | compile-pass | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
|  11 | SEM_15_10_00_011_PASS_ARCHIVE_implicit_function_by_type | compile-pass | 归档吸纳：implicit function by type。来源 `Overloading\compile-pass\OVERLOAD_PASS_001_implicit_function_by_type.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  12 | SEM_15_10_00_012_PASS_ARCHIVE_implicit_function_by_arity | compile-pass | 归档吸纳：implicit function by arity。来源 `Overloading\compile-pass\OVERLOAD_PASS_002_implicit_function_by_arity.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  13 | SEM_15_10_00_013_PASS_ARCHIVE_explicit_function_order | compile-pass | 归档吸纳：explicit function order。来源 `Overloading\compile-pass\OVERLOAD_PASS_003_explicit_function_order.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  14 | SEM_15_10_00_014_PASS_ARCHIVE_explicit_function_rest | compile-pass | 归档吸纳：explicit function rest。来源 `Overloading\compile-pass\OVERLOAD_PASS_004_explicit_function_rest.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  15 | SEM_15_10_00_015_PASS_ARCHIVE_generic_explicit_type_arguments | compile-pass | 归档吸纳：generic explicit type arguments。来源 `Overloading\compile-pass\OVERLOAD_PASS_005_generic_explicit_type_arguments.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  16 | SEM_15_10_00_016_PASS_ARCHIVE_class_explicit_method | compile-pass | 归档吸纳：class explicit method。来源 `Overloading\compile-pass\OVERLOAD_PASS_006_class_explicit_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  17 | SEM_15_10_00_017_PASS_ARCHIVE_class_static_method | compile-pass | 归档吸纳：class static method。来源 `Overloading\compile-pass\OVERLOAD_PASS_007_class_static_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  18 | SEM_15_10_00_018_PASS_ARCHIVE_interface_overload_inherited_by_class | compile-pass | 归档吸纳：interface overload inherited by class。来源 `Overloading\compile-pass\OVERLOAD_PASS_008_interface_overload_inherited_by_class.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  19 | SEM_15_10_00_019_PASS_ARCHIVE_constructor_overload | compile-pass | 归档吸纳：constructor overload。来源 `Overloading\compile-pass\OVERLOAD_PASS_010_constructor_overload.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  20 | SEM_15_10_00_020_PASS_ARCHIVE_ambient_overload_combined | compile-pass | Archive import: ambient overload declarations are accepted and form callable overload sets in ambient type checking. |
|  21 | SEM_15_10_00_021_PASS_ARCHIVE_explicit_overload_list_order_over_text_order | compile-pass | 归档吸纳：explicit overload list order over text order。来源 `Overloading\compile-pass\OVERLOAD_PASS_018_explicit_overload_list_order_over_text_order.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  22 | SEM_15_10_00_022_PASS_function_overload | compile-pass | 规范 15.10：函数重载允许同名函数不同参数 |
|  23 | SEM_15_10_00_100_FAIL_nongeneric_equivalent | compile-fail | 两个非泛型重载等价签名。 |
|  24 | SEM_15_10_00_101_FAIL_overload_main | compile-fail | 模块级 `main` 重载。 |
|  25 | SEM_15_10_00_102_FAIL_return_only_difference | compile-fail | 只靠返回类型区分重载。 |
|  26 | SEM_15_10_00_103_FAIL_erasure_equivalent_conflict | compile-fail | 擦除或有效签名后等价冲突。 |
|  27 | SEM_15_10_00_104_FAIL_static_method_not_inherited_by_subclass_name | compile-fail | static 方法不应作为继承成员参与子类名访问；Derived.select(26) 不应解析到 Base.select(int)。 |
|  28 | SEM_15_10_00_105_FAIL_SMART_GLOBAL_global_base_member_without_narrow | compile-fail | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
|  29 | SEM_15_10_00_106_FAIL_ARCHIVE_explicit_overload_missing_identifier | compile-fail | 归档吸纳：explicit overload missing identifier。来源 `Overloading\compile-fail\OVERLOAD_FAIL_004_explicit_overload_missing_identifier.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  30 | SEM_15_10_00_107_FAIL_ARCHIVE_explicit_overload_non_function | compile-fail | 归档吸纳：explicit overload non function。来源 `Overloading\compile-fail\OVERLOAD_FAIL_005_explicit_overload_non_function.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  31 | SEM_15_10_00_108_FAIL_ARCHIVE_explicit_overload_implicit_name | compile-fail | 归档吸纳：explicit overload implicit name。来源 `Overloading\compile-fail\OVERLOAD_FAIL_006_explicit_overload_implicit_name.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  32 | SEM_15_10_00_109_FAIL_ARCHIVE_overload_name_same_as_function_not_listed | compile-fail | 归档吸纳：overload name same as function not listed。来源 `Overloading\compile-fail\OVERLOAD_FAIL_007_overload_name_same_as_function_not_listed.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  33 | SEM_15_10_00_110_FAIL_ARCHIVE_export_overload_contains_unexported | compile-fail | 归档吸纳：export overload contains unexported。来源 `Overloading\compile-fail\OVERLOAD_FAIL_008_export_overload_contains_unexported.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  34 | SEM_15_10_00_111_FAIL_ARCHIVE_public_overload_contains_protected | compile-fail | 归档吸纳：public overload contains protected。来源 `Overloading\compile-fail\OVERLOAD_FAIL_009_public_overload_contains_protected.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  35 | SEM_15_10_00_112_FAIL_ARCHIVE_static_overload_non_static_method | compile-fail | 归档吸纳：static overload non static method。来源 `Overloading\compile-fail\OVERLOAD_FAIL_010_static_overload_non_static_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  36 | SEM_15_10_00_113_FAIL_ARCHIVE_non_static_overload_static_method | compile-fail | 归档吸纳：non static overload static method。来源 `Overloading\compile-fail\OVERLOAD_FAIL_011_non_static_overload_static_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  37 | SEM_15_10_00_114_FAIL_ARCHIVE_class_overload_missing_method | compile-fail | 归档吸纳：class overload missing method。来源 `Overloading\compile-fail\OVERLOAD_FAIL_012_class_overload_missing_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  38 | SEM_15_10_00_115_FAIL_ARCHIVE_class_overload_implicit_method_name | compile-fail | 归档吸纳：class overload implicit method name。来源 `Overloading\compile-fail\OVERLOAD_FAIL_013_class_overload_implicit_method_name.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  39 | SEM_15_10_00_116_FAIL_ARCHIVE_class_overload_same_name_method_not_listed | compile-fail | 归档吸纳：class overload same name method not listed。来源 `Overloading\compile-fail\OVERLOAD_FAIL_014_class_overload_same_name_method_not_listed.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  40 | SEM_15_10_00_117_FAIL_ARCHIVE_ambient_missing_overload_target | compile-fail | 归档吸纳：ambient missing overload target。来源 `Overloading\compile-fail\OVERLOAD_FAIL_016_ambient_missing_overload_target.d.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  41 | SEM_15_10_00_118_FAIL_ARCHIVE_main_overload_prohibited | compile-fail | 归档吸纳：main overload prohibited。来源 `Overloading\compile-fail\OVERLOAD_FAIL_025_main_overload_prohibited.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  42 | SEM_15_10_00_119_FAIL_overload_arg_type_mismatch | compile-fail | 规范 15.10：重载函数调用参数类型不匹配时拒绝 |
|  43 | SEM_15_10_00_120_FAIL_OVERLOAD_equivalent_signatures | compile-fail | 规范 15.10.4：如果两个隐式重载函数的签名是重载等价的，则发生编译时错误 |
|  44 | SEM_15_10_00_121_FAIL_overload_main_prohibited | compile-fail | Overloading for module scope name main is prohibited |
|  45 | SEM_15_10_00_200_RUNTIME_function_overload_value | runtime | 选中的函数输出指定标记。 |
|  46 | SEM_15_10_00_201_RUNTIME_method_overload_value | runtime | 选中的方法输出指定标记。 |
|  47 | SEM_15_10_00_202_RUNTIME_constructor_overload_value | runtime | 选中的构造器初始化指定值。 |
|  48 | SEM_15_10_00_203_RUNTIME_SMART_GLOBAL_overload_declared_base_top_level | runtime | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
|  49 | SEM_15_10_00_204_RUNTIME_overloading | runtime | 重载运行时行为 |

## 15.11.10 Dynamic Resolution of Method Calls（5）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_11_10_001_PASS_polymorphic_dispatch | compile-pass | 方法调用动态解析：多态派发 |
|   2 | SEM_15_11_10_002_PASS_runtime_type_selects_overload | compile-pass | 运行时类型决定重载 |
|   3 | SEM_15_11_10_100_FAIL_param_type_mismatch | compile-fail | 参数类型不匹配 |
|   4 | SEM_15_11_10_101_FAIL_dynamic_arg_mismatch | compile-fail | 动态解析拒绝：参数类型不匹配 |
|   5 | SEM_15_11_10_200_RUNTIME_dynamic_resolution | runtime | 动态解析运行时 |

## 15.11.1 Forming an Overload Set（5）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_11_01_001_PASS_same_name_overload | compile-pass | 形成重载集：同名函数构成重载集 |
|   2 | SEM_15_11_01_002_PASS_union_param_overload | compile-pass | 联合类型参数形成重载 |
|   3 | SEM_15_11_01_100_FAIL_type_mismatch | compile-fail | 重载集类型不匹配：实参类型无可匹配重载 |
|   4 | SEM_15_11_01_101_FAIL_return_type_only_diff | compile-fail | 仅返回类型不同不构成重载 |
|   5 | SEM_15_11_01_200_RUNTIME_overload_set | runtime | 重载集运行时 |

## 15.11.2 Overload Set for Functions（6）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_11_02_001_PASS_OVERLOAD_RESOLUTION | compile-pass | 验证重载解析：按参数类型选择最匹配的重载 |
|   2 | SEM_15_11_02_002_PASS_generic_func_overload | compile-pass | 泛型函数重载 |
|   3 | SEM_15_11_02_100_FAIL_no_matching_overload | compile-fail | 函数重载集拒绝：无匹配重载 |
|   4 | SEM_15_11_02_101_FAIL_param_type_not_assignable | compile-fail | 参数类型不可赋值 |
|   5 | SEM_15_11_02_102_FAIL_overload_set_functions | compile-fail | Overload set formation and resolution for functions with explicit overload |
|   6 | SEM_15_11_02_200_RUNTIME_func_overload | runtime | 函数重载集运行时 |

## 15.11.3 Overload Set for Interface Methods（10）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_11_03_001_PASS_interface_overload_set | compile-pass | 接口方法重载集：接口可声明重载方法 |
|   2 | SEM_15_11_03_002_PASS_interface_method_overloads | compile-pass | 接口方法重载集 |
|   3 | SEM_15_11_03_003_PASS_interface_no_super | compile-pass | Interface without superinterface overload set |
|   4 | SEM_15_11_03_004_PASS_interface_extends_order | compile-pass | Interface extends multiple superinterfaces, overload set order follows extends list |
|   5 | SEM_15_11_03_005_PASS_interface_override_dedup | compile-pass | Overridden methods occur only once in overload set (deduplication) |
|   6 | SEM_15_11_03_006_PASS_interface_implicit_explicit_combine | compile-pass | Combining implicit and explicit overloads with superinterface inheritance |
|   7 | SEM_15_11_03_100_FAIL_no_matching_overload | compile-fail | 接口方法重载类型拒绝：无匹配重载 |
|   8 | SEM_15_11_03_101_FAIL_call_no_matching_overload | compile-fail | 调用参数无匹配重载 |
|   9 | SEM_15_11_03_102_FAIL_interface_with_overload | compile-fail | Interface with explicit overload declaration |
|  10 | SEM_15_11_03_200_RUNTIME_interface_overload | runtime | 接口方法重载运行时 |

## 15.11.4 Overload Set for Class Static Methods（5）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_11_04_001_PASS_static_method_overload | compile-pass | 类静态方法重载集 |
|   2 | SEM_15_11_04_002_PASS_static_method_multi_overload | compile-pass | 类静态方法多个重载 |
|   3 | SEM_15_11_04_100_FAIL_static_arg_mismatch | compile-fail | 静态方法重载拒绝：参数不匹配 |
|   4 | SEM_15_11_04_101_FAIL_conflicting_signatures | compile-fail | 冲突签名 |
|   5 | SEM_15_11_04_200_RUNTIME_static_overload | runtime | 静态方法重载运行时 |

## 15.11.5 Overload Set for Class Instance Methods（9）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_11_05_001_PASS_instance_overload_set | compile-pass | 类实例方法重载集 |
|   2 | SEM_15_11_05_002_PASS_instance_method_multi_params | compile-pass | 实例方法多参数组合 |
|   3 | SEM_15_11_05_003_PASS_class_no_super | compile-pass | Class without superclass or superinterface overload set |
|   4 | SEM_15_11_05_004_PASS_class_superclass_superinterface | compile-pass | Class with superclass and superinterface, overload set and dedup |
|   5 | SEM_15_11_05_100_FAIL_instance_arg_mismatch | compile-fail | 实例方法重载拒绝：参数不匹配 |
|   6 | SEM_15_11_05_101_FAIL_call_no_matching_overload | compile-fail | 调用参数无匹配重载 |
|   7 | SEM_15_11_05_102_FAIL_class_with_overload | compile-fail | Class with explicit overload declaration |
|   8 | SEM_15_11_05_103_FAIL_class_inheritance_chain | compile-fail | Class inheritance chain with direct supertypes only considered |
|   9 | SEM_15_11_05_200_RUNTIME_instance_overload | runtime | 实例方法重载运行时 |

## 15.11.6 Overload Set for Constructors（6）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_11_06_001_PASS_CTOR_RESOLUTION | compile-pass | 验证构造函数重载解析 |
|   2 | SEM_15_11_06_002_PASS_constructor_multi_params | compile-pass | 构造函数多参数 |
|   3 | SEM_15_11_06_003_PASS_constructor_overload_set | compile-pass | Constructor overload set formation with explicit overload declaration |
|   4 | SEM_15_11_06_100_FAIL_ctor_arg_mismatch | compile-fail | 构造函数重载拒绝：参数不匹配 |
|   5 | SEM_15_11_06_101_FAIL_call_no_matching_ctor | compile-fail | 调用参数无匹配构造器 |
|   6 | SEM_15_11_06_200_RUNTIME_ctor_overload | runtime | 构造函数重载运行时 |

## 15.11.7 Overload Set Warning（6）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_11_07_001_PASS_OVERLOAD_WARNING | compile-pass | 验证重载集警告 — 编译器对不可达重载发出警告 |
|   2 | SEM_15_11_07_002_PASS_distinguishable_no_warning | compile-pass | 可区分重载无警告：不同类型参数可区分 |
|   3 | SEM_15_11_07_003_PASS_wide_hides_narrow | compile-pass | 宽类型隐藏窄类型 |
|   4 | SEM_15_11_07_004_PASS_overload_warning_unreachable | compile-pass | Overload set warning when an entity can never be selected (f3 never called) |
|   5 | SEM_15_11_07_100_FAIL_unreachable_overload | compile-fail | 不可达重载 |
|   6 | SEM_15_11_07_200_RUNTIME_warning | runtime | 重载警告运行时 |

## 15.11.8 Overload Set at Method Call（6）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_11_08_001_PASS_arg_based_resolution | compile-pass | 调用时重载集：按实参解析 |
|   2 | SEM_15_11_08_002_PASS_subtype_param_selects_overload | compile-pass | 子类型参数选择合适重载 |
|   3 | SEM_15_11_08_003_PASS_function_with_receiver | compile-pass | Functions with receiver considered for method call syntax, ordinary functions not |
|   4 | SEM_15_11_08_100_FAIL_no_matching_overload | compile-fail | 调用时重载拒绝：无匹配重载 |
|   5 | SEM_15_11_08_101_FAIL_no_matching_overload | compile-fail | 无匹配重载 |
|   6 | SEM_15_11_08_200_RUNTIME_call_overload | runtime | 调用时重载运行时 |

## 15.11.9 Overloading and Overriding（7）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_11_09_001_PASS_overload_override_interact | compile-pass | 重载与覆写交互：子类同时重载和覆写 |
|   2 | SEM_15_11_09_002_PASS_subclass_overrides_partial | compile-pass | 子类重写部分重载 |
|   3 | SEM_15_11_09_003_PASS_overload_override_interact | compile-pass | Overload resolution at compile time, overriding dispatch at runtime |
|   4 | SEM_15_11_09_004_PASS_single_override_both | compile-pass | Single method in subclass overrides several methods of superclass |
|   5 | SEM_15_11_09_100_FAIL_override_param_mismatch | compile-fail | 重载覆写交互拒绝：参数类型不兼容 |
|   6 | SEM_15_11_09_101_FAIL_derived_call_no_match | compile-fail | 派生类调用无匹配 |
|   7 | SEM_15_11_09_200_RUNTIME_overload_override | runtime | 重载覆写交互运行时 |

## 15.11 Overload Resolution（86）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_11_00_001_PASS_FUNCTION_overload_resolution | compile-pass | 规范 15.11：重载解析选择第一个匹配的重载实体 |
|   2 | SEM_15_11_00_002_PASS_METHOD_overload_resolution | compile-pass | 规范 15.11.5：类实例方法的重载集包含类定义的方法和继承的方法 |
|   3 | SEM_15_11_00_003_PASS_CONSTRUCTOR_overload | compile-pass | 规范 15.11.6：类的构造函数重载集包含隐式重载的构造函数 |
|   4 | SEM_15_11_00_004_PASS_EXPLICIT_overload | compile-pass | 规范 15.11.1：显式重载声明允许开发者显式指定重载实体集 |
|   5 | SEM_15_11_00_005_PASS_INTERFACE_method_overload | compile-pass | 规范 15.11.3：接口方法的重载集包含接口定义的方法和继承的方法 |
|   6 | SEM_15_11_00_006_PASS_STATIC_method_overload | compile-pass | 规范 15.11.4：类静态方法的重载集包含类中定义的静态方法 |
|   7 | SEM_15_11_00_007_PASS_OVERLOAD_warning | compile-pass | 规范 15.11.7：如果重载集中的某个重载实体始终不会被调用，则发出编译时警告 |
|   8 | SEM_15_11_00_008_PASS_unreachable_entity | compile-pass | 后面的重载始终不可达。 |
|   9 | SEM_15_11_00_009_PASS_broad_hides_narrow | compile-pass | 宽泛重载排在前导致窄重载不可达。 |
|  10 | SEM_15_11_00_010_PASS_broad_hides_narrow | compile-pass | (cross-language comparison) |
|  11 | SEM_15_11_00_011_PASS_SMART_FUNC_instanceof_narrowing | compile-pass | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
|  12 | SEM_15_11_00_012_PASS_ARCHIVE_null_selects_inherited_generic_method | compile-pass | 归档吸纳：null selects inherited generic method。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_001_null_selects_inherited_generic_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  13 | SEM_15_11_00_013_PASS_ARCHIVE_undefined_selects_inherited_generic_method | compile-pass | 归档吸纳：undefined selects inherited generic method。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_002_undefined_selects_inherited_generic_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  14 | SEM_15_11_00_014_PASS_ARCHIVE_explicit_null_generic_selects_parent | compile-pass | 归档吸纳：explicit null generic selects parent。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_003_explicit_null_generic_selects_parent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  15 | SEM_15_11_00_015_PASS_ARCHIVE_object_selects_child_overload | compile-pass | 归档吸纳：object selects child overload。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_004_object_selects_child_overload.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  16 | SEM_15_11_00_016_PASS_ARCHIVE_parent_static_type_keeps_parent_generic | compile-pass | 归档吸纳：parent static type keeps parent generic。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_005_parent_static_type_keeps_parent_generic.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  17 | SEM_15_11_00_017_PASS_ARCHIVE_parent_static_type_null_keeps_parent_generic | compile-pass | 归档吸纳：parent static type null keeps parent generic。来源 `NullishOverloadResolution\compile-pass\SEM_PASS_006_parent_static_type_null_keeps_parent_generic.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  18 | SEM_15_11_00_018_PASS_ARCHIVE_subclass_reorders_explicit_overload | compile-pass | 归档吸纳：subclass reorders explicit overload。来源 `Overloading\compile-pass\OVERLOAD_PASS_009_subclass_reorders_explicit_overload.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  19 | SEM_15_11_00_019_PASS_ARCHIVE_receiver_function_overload_as_function | compile-pass | 归档吸纳：receiver function overload as function。来源 `Overloading\compile-pass\OVERLOAD_PASS_012_receiver_function_overload_as_function.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  20 | SEM_15_11_00_020_PASS_ARCHIVE_overload_set_warning_unreachable | compile-pass | 归档吸纳：overload set warning unreachable。来源 `Overloading\compile-pass\OVERLOAD_PASS_017_overload_set_warning_unreachable.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  21 | SEM_15_11_00_021_PASS_ARCHIVE_interface_extends_order | compile-pass | 归档吸纳：interface extends order。来源 `Overloading\compile-pass\OVERLOAD_PASS_019_interface_extends_order.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  22 | SEM_15_11_00_022_PASS_ARCHIVE_interface_override_dedup | compile-pass | 归档吸纳：interface override dedup。来源 `Overloading\compile-pass\OVERLOAD_PASS_020_interface_override_dedup.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  23 | SEM_15_11_00_023_PASS_ARCHIVE_class_parent_before_interface | compile-pass | 归档吸纳：class parent before interface。来源 `Overloading\compile-pass\OVERLOAD_PASS_021_class_parent_before_interface.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  24 | SEM_15_11_00_024_PASS_ARCHIVE_receiver_instance_method_priority_combined | compile-pass | Archive import: instance method lookup has priority for method-call syntax, while receiver function remains callable as a function. |
|  25 | SEM_15_11_00_025_PASS_ARCHIVE_overload_resolution_then_override_dispatch | compile-pass | 归档吸纳：overload resolution then override dispatch。来源 `Overloading\compile-pass\OVERLOAD_PASS_023_overload_resolution_then_override_dispatch.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  26 | SEM_15_11_00_026_PASS_ARCHIVE_super_static_no_override_dispatch | compile-pass | 归档吸纳：super static no override dispatch。来源 `Overloading\compile-pass\OVERLOAD_PASS_024_super_static_no_override_dispatch.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  27 | SEM_15_11_00_027_PASS_ARCHIVE_direct_supertypes_only | compile-pass | 归档吸纳：direct supertypes only。来源 `Overloading\compile-pass\OVERLOAD_PASS_025_direct_supertypes_only.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  28 | SEM_15_11_00_028_PASS_ARCHIVE_declared_receiver_type_top_level | compile-pass | 归档吸纳：declared receiver type top level。来源 `Overloading\compile-pass\OVERLOAD_PASS_026_declared_receiver_type_top_level.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  29 | SEM_15_11_00_029_PASS_ARCHIVE_declared_receiver_type_function_body | compile-pass | 归档吸纳：declared receiver type function body。来源 `Overloading\compile-pass\OVERLOAD_PASS_027_declared_receiver_type_function_body.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  30 | SEM_15_11_00_030_PASS_overload_resolution | compile-pass | 规范 15.11：重载解析按参数类型选择良好匹配 |
|  31 | SEM_15_11_00_100_FAIL_no_valid_overload | compile-fail | 没有任何重载接受当前实参。 |
|  32 | SEM_15_11_00_101_FAIL_missing_required_all | compile-fail | 所有重载都缺少必选参数。 |
|  33 | SEM_15_11_00_102_FAIL_excess_arg_all | compile-fail | 多余参数导致所有重载无效。 |
|  34 | SEM_15_11_00_103_FAIL_not_assignable_all | compile-fail | 实参不可赋给任何重载形参。 |
|  35 | SEM_15_11_00_104_FAIL_global_not_narrowed_for_overload | compile-fail | 全局变量缩窄不应稳定影响重载选择。 |
|  36 | SEM_15_11_00_105_FAIL_SMART_GLOBAL_global_base_member_without_narrow | compile-fail | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
|  37 | SEM_15_11_00_106_FAIL_ARCHIVE_object_method_reject_null | compile-fail | 归档吸纳：object method reject null。来源 `NullishOverloadResolution\compile-fail\SEM_FAIL_001_object_method_reject_null.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  38 | SEM_15_11_00_107_FAIL_ARCHIVE_object_method_reject_undefined | compile-fail | 归档吸纳：object method reject undefined。来源 `NullishOverloadResolution\compile-fail\SEM_FAIL_002_object_method_reject_undefined.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  39 | SEM_15_11_00_108_FAIL_ARCHIVE_no_matching_function | compile-fail | 归档吸纳：no matching function。来源 `Overloading\compile-fail\OVERLOAD_FAIL_001_no_matching_function.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  40 | SEM_15_11_00_109_FAIL_ARCHIVE_return_type_not_used_for_resolution | compile-fail | 归档吸纳：return type not used for resolution。来源 `Overloading\compile-fail\OVERLOAD_FAIL_003_return_type_not_used_for_resolution.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  41 | SEM_15_11_00_110_FAIL_ARCHIVE_constructor_no_matching | compile-fail | 归档吸纳：constructor no matching。来源 `Overloading\compile-fail\OVERLOAD_FAIL_015_constructor_no_matching.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  42 | SEM_15_11_00_111_FAIL_ARCHIVE_union_common_member_overloaded | compile-fail | 归档吸纳：union common member overloaded。来源 `Overloading\compile-fail\OVERLOAD_FAIL_017_union_common_member_overloaded.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  43 | SEM_15_11_00_112_FAIL_ARCHIVE_receiver_overload_method_call | compile-fail | 归档吸纳：receiver overload method call。来源 `Overloading\compile-fail\OVERLOAD_FAIL_018_receiver_overload_method_call.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  44 | SEM_15_11_00_113_FAIL_ARCHIVE_static_method_not_inherited_for_overload | compile-fail | 归档吸纳：static method not inherited for overload。来源 `Overloading\compile-fail\OVERLOAD_FAIL_026_static_method_not_inherited_for_overload.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  45 | SEM_15_11_00_114_FAIL_ARCHIVE_receiver_same_name_instance_method | compile-fail | 归档吸纳：receiver same name instance method。来源 `Overloading\compile-fail\OVERLOAD_FAIL_027_receiver_same_name_instance_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  46 | SEM_15_11_00_115_FAIL_overload_no_match | compile-fail | 规范 15.11：无重载匹配时拒绝调用 |
|  47 | SEM_15_11_00_116_FAIL_return_type_ignored | compile-fail | Return types are not considered by overload resolution, selected entity can lead to compile-time error |
|  48 | SEM_15_11_00_200_RUNTIME_broad_before_narrow | runtime | 宽泛重载写在窄重载前。 |
|  49 | SEM_15_11_00_201_RUNTIME_narrow_before_broad | runtime | 窄重载写在宽泛重载前。 |
|  50 | SEM_15_11_00_202_RUNTIME_generic_before_nongeneric | runtime | 泛型重载在非泛型重载前。 |
|  51 | SEM_15_11_00_203_RUNTIME_nongeneric_before_generic | runtime | 非泛型重载在泛型重载前。 |
|  52 | SEM_15_11_00_204_RUNTIME_interface_super_order | runtime | 接口重载集包含父接口方法顺序。 |
|  53 | SEM_15_11_00_205_RUNTIME_class_instance_order | runtime | 类实例重载集按类、父类、父接口顺序。 |
|  54 | SEM_15_11_00_206_RUNTIME_static_method_order | runtime | 静态方法重载集顺序。 |
|  55 | SEM_15_11_00_207_RUNTIME_OVERLOAD_OVERRIDE_interaction | runtime | 规范 15.11.9：重载解析选择编译时类型的方法，但运行时可能调用重写的方法 |
|  56 | SEM_15_11_00_208_RUNTIME_constructor_order | runtime | 构造器重载集顺序。 |
|  57 | SEM_15_11_00_209_RUNTIME_DYNAMIC_dispatch | runtime | 规范 15.11.10：实例方法调用的实际方法在运行时根据对象的实际类型确定 |
|  58 | SEM_15_11_00_210_RUNTIME_receiver_vs_method | runtime | receiver 函数和方法同时存在时的方法重载集。 |
|  59 | SEM_15_11_00_211_RUNTIME_overload_override_dynamic | runtime | 静态重载选择加动态重写分派。 |
|  60 | SEM_15_11_00_212_RUNTIME_function_smart_selects_subtype | runtime | 函数局部智能类型选择子类型重载。 |
|  61 | SEM_15_11_00_213_RUNTIME_declared_type_selects_base | runtime | 没有智能缩窄时按声明类型选择父类型重载。 |
|  62 | SEM_15_11_00_214_RUNTIME_reassignment_changes_selection | runtime | 重新赋值后不应使用旧智能类型选择重载。 |
|  63 | SEM_15_11_00_215_RUNTIME_class_instance_order | runtime | (cross-language comparison) |
|  64 | SEM_15_11_00_216_RUNTIME_broad_before_narrow_selects_broad | runtime | (cross-language comparison) |
|  65 | SEM_15_11_00_217_RUNTIME_static_select_dynamic_dispatch | runtime | (cross-language comparison) |
|  66 | SEM_15_11_00_218_RUNTIME_receiver_declared_base_function_scope | runtime | 函数体内：子类对象赋给父类声明变量后调用 overload，应按 receiver 声明静态类型 Base 的 overload set 解析。 |
|  67 | SEM_15_11_00_219_RUNTIME_receiver_declared_base_top_level | runtime | 顶层语句：子类对象赋给父类声明变量后调用 overload，应按 receiver 声明静态类型 Base 的 overload set 解析。 |
|  68 | SEM_15_11_00_220_RUNTIME_receiver_declared_base_direct_new_function | runtime | 函数体内 let b: Base = new Derived() 后调用 overload，应选择 Base overload set。 |
|  69 | SEM_15_11_00_221_RUNTIME_receiver_declared_base_parameter_function | runtime | 函数参数 b: Base 接收 Derived 实参后调用 overload，应选择 Base overload set。 |
|  70 | SEM_15_11_00_222_RUNTIME_receiver_declared_base_from_return_function | runtime | 函数返回 Derived 但赋给 Base 后调用 overload，应选择 Base overload set。 |
|  71 | SEM_15_11_00_223_RUNTIME_receiver_declared_base_field_access | runtime | 字段声明为 Base 且保存 Derived 后调用 overload，应选择 Base overload set。 |
|  72 | SEM_15_11_00_224_RUNTIME_receiver_declared_base_local_copy_global | runtime | 全局 Derived 复制到函数局部 Base 后调用 overload，应选择 Base overload set。 |
|  73 | SEM_15_11_00_225_RUNTIME_receiver_declared_base_after_reassignment | runtime | Base 局部变量先保存 Derived 再重新赋值为 Base，调用 overload 应选择 Base overload set。 |
|  74 | SEM_15_11_00_226_RUNTIME_receiver_declared_base_after_side_effect_call | runtime | Base 局部变量由 Derived 初始化后经历普通函数调用，调用 overload 仍应基于声明类型。 |
|  75 | SEM_15_11_00_227_RUNTIME_receiver_declared_base_explicit_cast | runtime | Derived 显式 cast 为 Base 后调用 overload，应选择 Base overload set。 |
|  76 | SEM_15_11_00_228_RUNTIME_receiver_declared_derived_still_derived | runtime | receiver 声明类型为 Derived 时调用 overload，应选择 Derived overload set。 |
|  77 | SEM_15_11_00_229_RUNTIME_receiver_smart_instanceof_selects_derived | runtime | Base receiver 经过 instanceof Derived 显式缩窄后调用 overload，可选择 Derived overload set。 |
|  78 | SEM_15_11_00_230_RUNTIME_SMART_GLOBAL_overload_declared_base_top_level | runtime | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
|  79 | SEM_15_11_00_231_RUNTIME_SMART_FUNC_overload_declared_base_function | runtime | 函数体内 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
|  80 | SEM_15_11_00_232_RUNTIME_ARCHIVE_null_selects_inherited_generic_method | runtime | 归档吸纳：null selects inherited generic method。来源 `NullishOverloadResolution\runtime\SEM_RT_001_null_selects_inherited_generic_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  81 | SEM_15_11_00_233_RUNTIME_ARCHIVE_undefined_selects_inherited_generic_method | runtime | 归档吸纳：undefined selects inherited generic method。来源 `NullishOverloadResolution\runtime\SEM_RT_002_undefined_selects_inherited_generic_method.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  82 | SEM_15_11_00_234_RUNTIME_ARCHIVE_explicit_null_generic_selects_parent | runtime | 归档吸纳：explicit null generic selects parent。来源 `NullishOverloadResolution\runtime\SEM_RT_003_explicit_null_generic_selects_parent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  83 | SEM_15_11_00_235_RUNTIME_ARCHIVE_object_selects_child_overload | runtime | 归档吸纳：object selects child overload。来源 `NullishOverloadResolution\runtime\SEM_RT_004_object_selects_child_overload.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  84 | SEM_15_11_00_236_RUNTIME_ARCHIVE_parent_static_type_keeps_parent_generic | runtime | 归档吸纳：parent static type keeps parent generic。来源 `NullishOverloadResolution\runtime\SEM_RT_005_parent_static_type_keeps_parent_generic.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  85 | SEM_15_11_00_237_RUNTIME_ARCHIVE_parent_static_type_null_keeps_parent_generic | runtime | 归档吸纳：parent static type null keeps parent generic。来源 `NullishOverloadResolution\runtime\SEM_RT_006_parent_static_type_null_keeps_parent_generic.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  86 | SEM_15_11_00_238_RUNTIME_overload_resolution | runtime | 重载解析运行时 |

## 15.12 Type Erasure（38）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_12_00_001_PASS_GENERIC_erasure | compile-pass | 规范 15.12：泛型类型擦除规则 |
|   2 | SEM_15_12_00_002_PASS_TYPE_ERASURE | compile-pass | 验证泛型类型擦除：泛型函数调用正确 |
|   3 | SEM_15_12_00_003_PASS_string_literal_effective_string | compile-pass | 字符串字面量有效类型为 `string`。 |
|   4 | SEM_15_12_00_004_PASS_EFFECTIVE_type_mapping | compile-pass | 规范 15.12：有效类型映射规则 |
|   5 | SEM_15_12_00_005_PASS_type_parameter_constraint | compile-pass | 类型参数有效类型为其约束。 |
|   6 | SEM_15_12_00_006_PASS_union_effective | compile-pass | 联合类型有效类型由成员有效类型组成。 |
|   7 | SEM_15_12_00_007_PASS_array_effective_array | compile-pass | `T[]` 映射为 `Array<T>`。 |
|   8 | SEM_15_12_00_008_PASS_fixed_array_preserved | compile-pass | 定长数组有效类型保持定长数组语义。 |
|   9 | SEM_15_12_00_009_PASS_nonnullish_effective | compile-pass | `NonNullish<T>` 移除 nullish。 |
|  10 | SEM_15_12_00_010_PASS_literal_effective_string | compile-pass | (cross-language comparison) |
|  11 | SEM_15_12_00_011_PASS_non_conflicting_effective_signatures | compile-pass | (cross-language comparison) |
|  12 | SEM_15_12_00_012_PASS_SMART_FUNC_instanceof_narrowing | compile-pass | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
|  13 | SEM_15_12_00_013_PASS_ARCHIVE_different_arity_not_equivalent | compile-pass | 归档吸纳：different arity not equivalent。来源 `Overloading\compile-pass\OVERLOAD_PASS_013_different_arity_not_equivalent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  14 | SEM_15_12_00_014_PASS_ARCHIVE_explicit_equivalent_signatures_allowed | compile-pass | 归档吸纳：explicit equivalent signatures allowed。来源 `Overloading\compile-pass\OVERLOAD_PASS_014_explicit_equivalent_signatures_allowed.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  15 | SEM_15_12_00_015_PASS_ARCHIVE_generic_plain_equivalent_textual_order | compile-pass | 归档吸纳：generic plain equivalent textual order。来源 `Overloading\compile-pass\OVERLOAD_PASS_015_generic_plain_equivalent_textual_order.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  16 | SEM_15_12_00_016_PASS_ARCHIVE_generic_class_method_equivalent_textual_order | compile-pass | 归档吸纳：generic class method equivalent textual order。来源 `Overloading\compile-pass\OVERLOAD_PASS_016_generic_class_method_equivalent_textual_order.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  17 | SEM_15_12_00_017_PASS_generic_erasure_runtime | compile-pass | Generic type erasure compiles but may cause runtime ClassCastError |
|  18 | SEM_15_12_00_100_FAIL_erased_signature_conflict | compile-fail | 擦除后签名冲突。 |
|  19 | SEM_15_12_00_101_FAIL_default_any_object_member | compile-fail | 无约束类型参数默认 `Any`，不能假设有 `Object` 成员。 |
|  20 | SEM_15_12_00_102_FAIL_tuple_effective_mismatch | compile-fail | 元组有效类型不匹配。 |
|  21 | SEM_15_12_00_103_FAIL_ERASURE_LIMIT | compile-fail | 验证 FixedArray 泛型擦除限制：擦除后类型不可作 FixedArray 类型参数 |
|  22 | SEM_15_12_00_104_FAIL_function_effective_mismatch | compile-fail | 函数有效类型不匹配。 |
|  23 | SEM_15_12_00_105_FAIL_never_wrong_context | compile-fail | `never` 在错误上下文中使用。 |
|  24 | SEM_15_12_00_106_FAIL_SMART_GLOBAL_global_base_member_without_narrow | compile-fail | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
|  25 | SEM_15_12_00_107_FAIL_ARCHIVE_overload_equivalent_return_ignored | compile-fail | 归档吸纳：overload equivalent return ignored。来源 `Overloading\compile-fail\OVERLOAD_FAIL_002_overload_equivalent_return_ignored.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  26 | SEM_15_12_00_108_FAIL_ARCHIVE_function_type_parameters_erased_equivalent | compile-fail | 归档吸纳：function type parameters erased equivalent。来源 `Overloading\compile-fail\OVERLOAD_FAIL_019_function_type_parameters_erased_equivalent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  27 | SEM_15_12_00_109_FAIL_ARCHIVE_tuple_same_arity_erased_equivalent | compile-fail | 归档吸纳：tuple same arity erased equivalent。来源 `Overloading\compile-fail\OVERLOAD_FAIL_020_tuple_same_arity_erased_equivalent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  28 | SEM_15_12_00_110_FAIL_ARCHIVE_method_array_type_args_erased_equivalent | compile-fail | 归档吸纳：method array type args erased equivalent。来源 `Overloading\compile-fail\OVERLOAD_FAIL_021_method_array_type_args_erased_equivalent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  29 | SEM_15_12_00_111_FAIL_ARCHIVE_static_method_array_type_args_erased_equivalent | compile-fail | 归档吸纳：static method array type args erased equivalent。来源 `Overloading\compile-fail\OVERLOAD_FAIL_022_static_method_array_type_args_erased_equivalent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  30 | SEM_15_12_00_112_FAIL_ARCHIVE_constructor_array_type_args_erased_equivalent | compile-fail | 归档吸纳：constructor array type args erased equivalent。来源 `Overloading\compile-fail\OVERLOAD_FAIL_023_constructor_array_type_args_erased_equivalent.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  31 | SEM_15_12_00_113_FAIL_ARCHIVE_ambient_function_array_type_args_erased_equivalent | compile-fail | 归档吸纳：ambient function array type args erased equivalent。来源 `Overloading\compile-fail\OVERLOAD_FAIL_024_ambient_function_array_type_args_erased_equivalent.d.ets`；用于补充 ArkTS overload / overload resolution / effective signature 覆盖。 |
|  32 | SEM_15_12_00_114_FAIL_PROMISE_FIXEDARRAY | compile-fail | 验证类型擦除后类型不可用于 FixedArray 类型参数 |
|  33 | SEM_15_12_00_200_RUNTIME_ERASURE | runtime | 验证泛型类型擦除运行时行为：擦除后类型信息不影响运行时 |
|  34 | SEM_15_12_00_201_RUNTIME_generic_cast_erased | runtime | 泛型 cast 按有效/擦除类型检查。 |
|  35 | SEM_15_12_00_202_RUNTIME_erased_generic_field_read | runtime | 读取泛型字段暴露擦除风险。 |
|  36 | SEM_15_12_00_203_RUNTIME_literal_runtime_string | runtime | 字面量运行时按字符串行为。 |
|  37 | SEM_15_12_00_204_RUNTIME_generic_cast_effective_class | runtime | (cross-language comparison) |
|  38 | SEM_15_12_00_205_RUNTIME_SMART_GLOBAL_overload_declared_base_top_level | runtime | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |

## 15.13.1 Static Initialization Safety（3）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_13_01_001_PASS_STATIC_INIT | compile-pass | 验证静态初始化安全性：静态变量初始化顺序正确 |
|   2 | SEM_15_13_01_100_FAIL_STATIC_FORWARD_REF | compile-fail | 验证静态初始化前向引用拒绝 |
|   3 | SEM_15_13_01_200_RUNTIME_STATIC_INIT | runtime | 验证静态初始化运行时顺序：静态字段按声明顺序初始化 |

## 15.13 Static Initialization（27）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_13_00_001_PASS_CLASS_static_init | compile-pass | 规范 15.13：类静态初始化在访问类静态成员或创建类实例时执行 |
|   2 | SEM_15_13_00_002_PASS_NAMESPACE_static_init | compile-pass | 规范 15.13：命名空间静态初始化在访问命名空间成员时执行 |
|   3 | SEM_15_13_00_003_PASS_MODULE_static_init | compile-pass | 规范 15.13：模块静态初始化在调用模块函数或访问模块变量时执行 |
|   4 | SEM_15_13_00_004_PASS_ordered_static_fields | compile-pass | 静态字段按顺序初始化。 |
|   5 | SEM_15_13_00_005_PASS_function_local_init_logic | compile-pass | 初始化器委托给局部智能类型安全的函数。 |
|   6 | SEM_15_13_00_006_PASS_ordered_static_fields | compile-pass | (cross-language comparison) |
|   7 | SEM_15_13_00_007_PASS_initializer_uses_local_smart_function | compile-pass | (cross-language comparison) |
|   8 | SEM_15_13_00_008_PASS_SMART_FUNC_instanceof_narrowing | compile-pass | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
|   9 | SEM_15_13_00_009_PASS_static_init_basic | compile-pass | 规范 15.13：类的静态成员初始化 |
|  10 | SEM_15_13_00_100_FAIL_static_forward_read | compile-fail | 编译期可检测的静态字段前向读取。 |
|  11 | SEM_15_13_00_101_FAIL_top_level_forward_read | compile-fail | 顶层变量初始化前读取。 |
|  12 | SEM_15_13_00_102_FAIL_static_block_uninitialized_read | compile-fail | 静态块读取尚未初始化字段。 |
|  13 | SEM_15_13_00_103_FAIL_global_init_smart_assumption | compile-fail | 全局初始化依赖不稳定智能类型状态。 |
|  14 | SEM_15_13_00_104_FAIL_SMART_GLOBAL_global_base_member_without_narrow | compile-fail | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
|  15 | SEM_15_13_00_105_FAIL_static_forward_ref | compile-fail | 规范 15.13：静态初始化中禁止前向引用 |
|  16 | SEM_15_13_00_200_RUNTIME_static_field_triggers | runtime | 访问静态字段触发初始化。 |
|  17 | SEM_15_13_00_201_RUNTIME_static_method_triggers | runtime | 调用静态方法触发初始化。 |
|  18 | SEM_15_13_00_202_RUNTIME_new_triggers | runtime | 创建实例触发类初始化。 |
|  19 | SEM_15_13_00_203_RUNTIME_CONCURRENT_init | runtime | 规范 15.13.1：并发静态初始化安全性 |
|  20 | SEM_15_13_00_204_RUNTIME_namespace_function_triggers | runtime | 访问 namespace 成员触发 namespace 初始化。 |
|  21 | SEM_15_13_00_205_RUNTIME_CIRCULAR_init | runtime | 规范 15.13：循环静态初始化依赖可能导致死锁 |
|  22 | SEM_15_13_00_206_RUNTIME_module_variable_triggers | runtime | 访问 module 变量或函数触发 module 初始化。 |
|  23 | SEM_15_13_00_207_RUNTIME_static_init_calls_smart_function | runtime | 静态初始化器调用内部使用局部智能类型的函数。 |
|  24 | SEM_15_13_00_208_RUNTIME_static_method_trigger | runtime | (cross-language comparison) |
|  25 | SEM_15_13_00_209_RUNTIME_namespace_member_trigger | runtime | (cross-language comparison) |
|  26 | SEM_15_13_00_210_RUNTIME_SMART_GLOBAL_overload_declared_base_top_level | runtime | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
|  27 | SEM_15_13_00_211_RUNTIME_static_init | runtime | 静态初始化运行时 |

## 15.14.1 Extended Conditional Expressions（3）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_14_01_001_PASS_TERNARY | compile-pass | 验证扩展条件表达式：三元表达式类型推断 |
|   2 | SEM_15_14_01_100_FAIL_ternary_type_mismatch | compile-fail | 三元表达式类型不匹配拒绝 |
|   3 | SEM_15_14_01_200_RUNTIME_ternary | runtime | 三元表达式运行时 |

## 15.14 Compatibility Features（44）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_14_00_001_PASS_EXTENDED_conditional | compile-pass | 规范 15.14.1：扩展条件表达式的语义 |
|   2 | SEM_15_14_00_002_PASS_LOGICL_COMPLEMENT | compile-pass | 规范 15.14.1：逻辑补码的扩展语义 |
|   3 | SEM_15_14_00_003_PASS_CONDITIONAL_AND | compile-pass | 规范 15.14.1：条件与表达式的扩展语义 |
|   4 | SEM_15_14_00_004_PASS_CONDITIONAL_OR | compile-pass | 规范 15.14.1：条件或表达式的扩展语义 |
|   5 | SEM_15_14_00_005_PASS_TERNARY_conditional | compile-pass | 规范 15.14.1：三元条件表达式的扩展语义 |
|   6 | SEM_15_14_00_006_PASS_WHILE_loop | compile-pass | 规范 15.14.1：while 循环的扩展语义（真值检查） |
|   7 | SEM_15_14_00_007_PASS_FOR_loop | compile-pass | 规范 15.14.1：for 循环的扩展语义（真值检查） |
|   8 | SEM_15_14_00_008_PASS_IF_statement | compile-pass | 规范 15.14.1：if 语句的扩展语义（真值检查） |
|   9 | SEM_15_14_00_009_PASS_IF_ELSE_statement | compile-pass | 规范 15.14.1：if-else 语句的扩展语义（真值检查） |
|  10 | SEM_15_14_00_010_PASS_SWITCH_statement | compile-pass | 规范 15.14.1：switch 语句的扩展语义（真值检查） |
|  11 | SEM_15_14_00_011_PASS_TRUTHINESS_table | compile-pass | 规范 15.14.1：真值表（truthiness table） |
|  12 | SEM_15_14_00_012_PASS_SHORT_CIRCUIT | compile-pass | 规范 15.14.1：逻辑 AND/OR 的短路行为 |
|  13 | SEM_15_14_00_013_PASS_TYPEOF_truthiness | compile-pass | 规范 15.14.1：typeof 表达式的真值检查 |
|  14 | SEM_15_14_00_014_PASS_function_truthiness_nullish | compile-pass | 函数局部 truthiness 缩窄 nullish。 |
|  15 | SEM_15_14_00_015_PASS_INSTANCEOF_truthiness | compile-pass | 规范 15.14.1：instanceof 表达式的真值检查 |
|  16 | SEM_15_14_00_016_PASS_local_copy_truthiness | compile-pass | 全局变量复制到局部后做 truthiness 判断。 |
|  17 | SEM_15_14_00_017_PASS_NULL_UNDEFINED_truthiness | compile-pass | 规范 15.14.1：null 和 undefined 的真值检查 |
|  18 | SEM_15_14_00_018_PASS_ENUM_truthiness | compile-pass | 规范 15.14.1：枚举类型的真值检查 |
|  19 | SEM_15_14_00_019_PASS_CHAR_truthiness | compile-pass | 规范 15.14.1：char 类型的真值检查 |
|  20 | SEM_15_14_00_020_PASS_BIGINT_truthiness | compile-pass | 规范 15.14.1：bigint 类型的真值检查 |
|  21 | SEM_15_14_00_021_PASS_OBJECT_truthiness | compile-pass | 规范 15.14.1：object 类型的真值检查 |
|  22 | SEM_15_14_00_022_PASS_COMPREHENSIVE | compile-pass | 规范 15.14.1：综合测试扩展条件表达式 |
|  23 | SEM_15_14_00_023_PASS_COMPREHENSIVE_2 | compile-pass | 规范 15.14.1：综合测试扩展条件表达式的各种情况 |
|  24 | SEM_15_14_00_024_PASS_COMPREHENSIVE_3 | compile-pass | 规范 15.14.1：综合测试扩展条件表达式的各种情况 |
|  25 | SEM_15_14_00_025_PASS_SMART_FUNC_instanceof_narrowing | compile-pass | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
|  26 | SEM_15_14_00_026_PASS_COMPREHENSIVE_narrowing | compile-pass | 合并综合测试：联合类型缩窄（含 null / 不含 null 变体） |
|  27 | SEM_15_14_00_027_PASS_COMPREHENSIVE_narrowing_method | compile-pass | 合并综合测试：联合类型缩窄 + 方法调用 |
|  28 | SEM_15_14_00_028_PASS_union_assign | compile-pass | 兼容特性：联合类型之间的赋值 |
|  29 | SEM_15_14_00_100_FAIL_SMART_GLOBAL_global_base_member_without_narrow | compile-fail | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
|  30 | SEM_15_14_00_101_FAIL_type_mismatch | compile-fail | 兼容特性拒绝：不兼容的类型赋值 |
|  31 | SEM_15_14_00_200_RUNTIME_empty_string_false | runtime | 空字符串 "" 在条件中为 falsy。 |
|  32 | SEM_15_14_00_201_RUNTIME_nonempty_string_true | runtime | 非空字符串在条件中为 truthy。 |
|  33 | SEM_15_14_00_202_RUNTIME_zero_int_false | runtime | 整数 0 在条件中为 falsy。 |
|  34 | SEM_15_14_00_203_RUNTIME_nonzero_int_true | runtime | 非零整数在条件中为 truthy。 |
|  35 | SEM_15_14_00_204_RUNTIME_nan_false | runtime | NaN 在条件中为 falsy。 |
|  36 | SEM_15_14_00_205_RUNTIME_null_false | runtime | null 在条件中为 falsy。 |
|  37 | SEM_15_14_00_206_RUNTIME_undefined_false | runtime | undefined 在条件中为 falsy。 |
|  38 | SEM_15_14_00_207_RUNTIME_object_true | runtime | 非 null/undefined 对象在条件中为 truthy。 |
|  39 | SEM_15_14_00_208_RUNTIME_false_or_int | runtime | `false // 42` 返回 42（// 返回第一个 truthy 操作数）。 |
|  40 | SEM_15_14_00_209_RUNTIME_true_or_int | runtime | `true // 42` 返回 true（// 遇到 truthy 短路返回）。 |
|  41 | SEM_15_14_00_210_RUNTIME_zero_and_string | runtime | `0 && "x"` 返回 0（&& 遇到 falsy 短路返回）。 |
|  42 | SEM_15_14_00_211_RUNTIME_one_and_string | runtime | `1 && "x"` 返回 "x"（&& 连续评估返回第二个操作数）。 |
|  43 | SEM_15_14_00_215_RUNTIME_SMART_GLOBAL_overload_declared_base_top_level | runtime | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
|  44 | SEM_15_14_00_216_RUNTIME_compatibility | runtime | 兼容特性综合验证：字符串数字混合 `//` 链。 |

## 15.1 Semantic Essentials（26）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_01_00_001_PASS_standalone_int_literal | compile-pass | `let x = 1` 使用整数字面量默认类型。 |
|   2 | SEM_15_01_00_002_PASS_target_double_literal | compile-pass | `let x: double = 1` 由目标类型引导字面量类型。 |
|   3 | SEM_15_01_00_003_PASS_array_literal_target_double | compile-pass | `let a: double[] = [1, 2]` 数组元素使用目标类型。 |
|   4 | SEM_15_01_00_004_PASS_function_arg_target_type | compile-pass | `foo(x: double); foo(1)` 调用实参使用类赋值上下文。 |
|   5 | SEM_15_01_00_005_PASS_string_plus_int | compile-pass | `"x" + 1` 触发字符串转换。 |
|   6 | SEM_15_01_00_006_PASS_string_plus_boolean | compile-pass | `"x" + true` 触发字符串转换。 |
|   7 | SEM_15_01_00_007_PASS_byte_increment | compile-pass | `byte` 前置/后置自增不把变量拓宽成 `int`。 |
|   8 | SEM_15_01_00_008_PASS_short_compound_assignment | compile-pass | `short` 复合赋值保持赋值语义。 |
|   9 | SEM_15_01_00_009_PASS_explicit_generic_number | compile-pass | `foo<number>(1)` 显式指定泛型实参后通过。 |
|  10 | SEM_15_01_00_010_PASS_standalone_numeric_array | compile-pass | (cross-language comparison) |
|  11 | SEM_15_01_00_011_PASS_call_arg_target_double | compile-pass | (cross-language comparison) |
|  12 | SEM_15_01_00_012_PASS_int_division_result | compile-pass | (cross-language comparison) |
|  13 | SEM_15_01_00_013_PASS_string_plus_nullish | compile-pass | (cross-language comparison) |
|  14 | SEM_15_01_00_014_PASS_explicit_T_number | compile-pass | (cross-language comparison) |
|  15 | SEM_15_01_00_015_PASS_SMART_FUNC_instanceof_narrowing | compile-pass | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
|  16 | SEM_15_01_00_016_PASS_type_annotated_declaration | compile-pass | 语义基础：类型注解的变量声明 |
|  17 | SEM_15_01_00_100_FAIL_standalone_object_literal | compile-fail | 对象字面量作为独立表达式，无法推断类型。 |
|  18 | SEM_15_01_00_101_FAIL_incompatible_assignment_like_rhs | compile-fail | 右值类型已知但不可赋给目标类型。 |
|  19 | SEM_15_01_00_102_FAIL_generic_target_no_extra_inference | compile-fail | `foo<T extends number>(x: T); foo(1)` 推断为 `int`，不是 `number`。 |
|  20 | SEM_15_01_00_103_FAIL_string_minus_int | compile-fail | `string - int` 不属于字符串上下文。 |
|  21 | SEM_15_01_00_104_FAIL_boolean_numeric_operator | compile-fail | `true + 1` 在非字符串上下文中非法。 |
|  22 | SEM_15_01_00_105_FAIL_implicit_numeric_narrowing | compile-fail | 隐式数值窄化赋值，例如 `int` 到 `byte`。 |
|  23 | SEM_15_01_00_106_FAIL_SMART_GLOBAL_global_base_member_without_narrow | compile-fail | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
|  24 | SEM_15_01_00_107_FAIL_type_mismatch | compile-fail | 规范 15.1：类型不兼容的赋值被拒绝 |
|  25 | SEM_15_01_00_200_RUNTIME_SMART_GLOBAL_overload_declared_base_top_level | runtime | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
|  26 | SEM_15_01_00_201_RUNTIME_semantic_essentials | runtime | 语义基础运行时 |

## 15.2.1 Subtyping for Non Generic Classes and Interfaces（7）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_02_01_001_PASS_CLASS_EXTENDS_SUBTYPE | compile-pass | 验证非泛型类 extends 产生直接子类型关系：class B extends A → B <: A |
|   2 | SEM_15_02_01_002_PASS_INTERFACE_EXTENDS_SUBTYPE | compile-pass | 验证接口 extends 产生直接子类型关系：interface I extends J → I <: J |
|   3 | SEM_15_02_01_003_PASS_class_to_object | compile-pass | 无 extends 子句的类 S 是 Object 的直接子类型：S<:Object |
|   4 | SEM_15_02_01_004_PASS_class_implements_interface | compile-pass | 实现接口的类 S 是该接口 T 的直接子类型：S<:T |
|   5 | SEM_15_02_01_005_PASS_interface_to_object | compile-pass | 无 extends 子句的接口 S 是 Object 的直接子类型：S<:Object |
|   6 | SEM_15_02_01_100_FAIL_SELF_EXTENDS | compile-fail | 验证非泛型类无效 extends 拒绝：类不可 extends 自身 |
|   7 | SEM_15_02_01_200_RUNTIME_SUBTYPE | runtime | 验证非泛型子类型运行时调用：父类引用调用子类方法 |

## 15.2.2 Subtyping for Generic Classes and Interfaces（14）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_02_02_001_PASS_generic_self_assign | compile-pass | 泛型类自身子类型：相同类型参数的泛型实例可互相赋值 |
|   2 | SEM_15_02_02_002_PASS_generic_class_super_assign | compile-pass | 泛型类 C<U,V> extends T<U,V>，子类实例可赋值给超类类型变量 |
|   3 | SEM_15_02_02_003_PASS_generic_interface_impl_assign | compile-pass | 泛型接口实现实例可赋值给接口类型变量 |
|   4 | SEM_15_02_02_004_PASS_generic_interface_sub_assign | compile-pass | 泛型子接口实例可赋值给超接口类型变量：J<:I |
|   5 | SEM_15_02_02_005_PASS_contravariant_ok | compile-pass | 逆变类型参数正确：E<in T> 时 E<U1> >: E<U0> |
|   6 | SEM_15_02_02_006_PASS_covariant_ok | compile-pass | 协变类型参数正确：F<out T> 时 F<U0> >: F<U1> |
|   7 | SEM_15_02_02_100_FAIL_GENERIC_INVARIANCE | compile-fail | 验证泛型类不变性：Array<Derived> 不是 Array<Base> 的子类型 |
|   8 | SEM_15_02_02_101_FAIL_generic_class_to_object | compile-fail | 泛型类（无直接超类）是 Object 的直接子类型：C<U,V> <: Object |
|   9 | SEM_15_02_02_102_FAIL_generic_interface_to_object | compile-fail | 泛型接口（无直接超接口）是 Object 的直接子类型：I<U,V> <: Object |
|  10 | SEM_15_02_02_103_FAIL_covariant_mismatch | compile-fail | 协变类型参数错误：F<out T> 时 F<U1> 不是 F<U0> 的超类型 |
|  11 | SEM_15_02_02_104_FAIL_contravariant_mismatch | compile-fail | 逆变类型参数错误：E<in T> 时 E<U0> 不是 E<U1> 的超类型 |
|  12 | SEM_15_02_02_105_FAIL_generic_interface_super_assign | compile-fail | 泛型超接口不可赋值给子接口类型变量：I 不是 J 的子类型 |
|  13 | SEM_15_02_02_106_FAIL_generic_class_sub_assign | compile-fail | 泛型超类实例不可赋值给子类类型变量 |
|  14 | SEM_15_02_02_200_RUNTIME_generic_subtype | runtime | 泛型子类型运行时 |

## 15.2.3 Subtyping for Literal Types（7）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_02_03_001_PASS_STRING_LITERAL_SUBTYPE | compile-pass | 验证字符串字面量类型是其基础类型 string 的子类型 |
|   2 | SEM_15_02_03_002_PASS_int_widens_to_number | compile-pass | 验证 int 可隐式拓宽为 number：int 字面量可赋值给 number/string 联合类型 |
|   3 | SEM_15_02_03_003_PASS_string_literal_override_subtype | compile-pass | 字符串字面量类型 "1" 是 string 的子类型，可用于重写 |
|   4 | SEM_15_02_03_100_FAIL_STRING_LITERAL_NOT_INT | compile-fail | 验证字符串字面量类型不是 int 的子类型 |
|   5 | SEM_15_02_03_101_FAIL_INT_LITERAL_NOT_STRING | compile-fail | 验证 int 字面量类型不是 string 的子类型 |
|   6 | SEM_15_02_03_102_FAIL_BOOLEAN_LITERAL_NOT_NUMBER | compile-fail | 验证 boolean 字面量类型不是 number 的子类型 |
|   7 | SEM_15_02_03_200_RUNTIME_LITERAL | runtime | 验证字符串字面量子类型运行时行为 |

## 15.2.4 Subtyping for Tuple Types（9）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_02_04_001_PASS_TUPLE_IDENTITY | compile-pass | 验证元组类型的子类型关系：相同结构元组 <: 自身 |
|   2 | SEM_15_02_04_002_PASS_empty_tuple_from_number | compile-pass | 任何元组类型是 Tuple 的子类型，[] 可接收 [number] |
|   3 | SEM_15_02_04_003_PASS_prefix_tuple_subtype | compile-pass | [string,number] 可赋值给 [string]（前置前缀子类型） |
|   4 | SEM_15_02_04_004_PASS_tuple_longer_to_shorter | compile-pass | 更长元组（前缀相同）是更短元组的子类型：n >= m |
|   5 | SEM_15_02_04_100_FAIL_tuple_element_mismatch | compile-fail | 元组元素类型不匹配时拒绝赋值 |
|   6 | SEM_15_02_04_101_FAIL_tuple_shorter_to_longer | compile-fail | 更短元组不是更长元组的子类型：需 n >= m |
|   7 | SEM_15_02_04_102_FAIL_tuple_length_mismatch | compile-fail | 更短元组不是更长元组的子类型（需要 n >= m） |
|   8 | SEM_15_02_04_103_FAIL_tuple_element_type_mismatch | compile-fail | 元素类型不同的元组不可互相赋值：[number] 与 [string,number] 无关 |
|   9 | SEM_15_02_04_200_RUNTIME_tuple_subtype | runtime | 元组子类型运行时 |

## 15.2.5 Subtyping for Union Types（16）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_02_05_001_PASS_UNION_TYPE_SUBTYPE | compile-pass | 验证联合类型子类型：U <: T 当且仅当 U 的每个成员 <: T |
|   2 | SEM_15_02_05_002_PASS_literal_union_to_string | compile-pass | 联合类型 "1"/"2" 每个成员是 string 子类型，联合 <: string |
|   3 | SEM_15_02_05_003_PASS_union_smaller_to_larger | compile-pass | string/number 的每个成员在 string/number/boolean 中，联合 <: 更大联合 |
|   4 | SEM_15_02_05_004_PASS_union_to_base | compile-pass | Derived1 和 Derived2 都是 Base 的子类型，Derived1/Derived2 <: Base |
|   5 | SEM_15_02_05_005_PASS_mixed_union_to_base | compile-pass | Derived1/string 每个成员（Derived1 <: Base, string <: Base/string） |
|   6 | SEM_15_02_05_006_PASS_union_string_literal_assign | compile-pass | string 字面量 "text" 是 string 子类型，string <: number/string |
|   7 | SEM_15_02_05_007_PASS_union_number_assign | compile-pass | 1.0 是 number 类型，number <: number/string |
|   8 | SEM_15_02_05_008_PASS_union_normalization | compile-pass | 联合类型归一化：字面量 "abc"/"cde" 均为 string 子类型，合并为 string |
|   9 | SEM_15_02_05_100_FAIL_UNION_SUBTYPE_GAP | compile-fail | 验证联合类型子类型严格检查：U <: T 要求 U 的每个成员 <: T |
|  10 | SEM_15_02_05_101_FAIL_two_union_subtype_gap | compile-fail | U2 的成员 T5 既不在 U1 成员中也不是其子类型，U2 不是 U1 子类型 |
|  11 | SEM_15_02_05_102_FAIL_union_boolean_assign | compile-fail | boolean 不是 number/string 的成员，不可赋值 |
|  12 | SEM_15_02_05_103_FAIL_union_int_to_number | compile-fail | int 不是 number 的子类型，不可隐式赋值给 number/string |
|  13 | SEM_15_02_05_104_FAIL_mixed_base_to_union | compile-fail | Base/string 不是 Derived1/string 的子类型（Base 不是 Derived1 子类型） |
|  14 | SEM_15_02_05_105_FAIL_base_to_union | compile-fail | Base 不是 Derived1/Derived2 的子类型，不可逆赋值 |
|  15 | SEM_15_02_05_106_FAIL_union_larger_to_smaller | compile-fail | boolean 不在 string/number 中，string/number/boolean 不可赋给 string/number |
|  16 | SEM_15_02_05_200_RUNTIME_UNION_SUBTYPE | runtime | 验证联合类型子类型运行时行为 |

## 15.2.6 Subtyping for Function Types（12）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_02_06_001_PASS_FUNCTION_TYPE_SUBTYPE | compile-pass | 验证函数类型子类型：参数逆变，返回值协变 |
|   2 | SEM_15_02_06_002_PASS_func_identical_params_covariant_return | compile-pass | 相同参数类型且返回值协变时赋值正确：(p:Base)=>Derived <: (p:Base)=>Base |
|   3 | SEM_15_02_06_003_PASS_func_contravariant_params_covariant_return | compile-pass | 参数逆变且返回值协变：(p:Base)=>Derived <: (p:Derived)=>Base |
|   4 | SEM_15_02_06_004_PASS_func_less_params_subtype | compile-pass | F 参数 ≤ S 参数时合法：(p:Base)=>Base <: (p:Base, n:number)=>Base |
|   5 | SEM_15_02_06_005_PASS_func_optional_params_less | compile-pass | m <= n 且可选参数可省略：(x?:number,y?:string)=>void 可接收 ()=>void 和 (p?:number)=>void |
|   6 | SEM_15_02_06_006_PASS_func_optional_params_equal | compile-pass | 相同可选参数类型合法 |
|   7 | SEM_15_02_06_100_FAIL_PARAM_COVARIANCE | compile-fail | 验证函数类型参数逆变违规拒绝：(Dog)=>void 不可用作 (Animal)=>void |
|   8 | SEM_15_02_06_101_FAIL_func_optional_required_mismatch2 | compile-fail | 第1个参数在类型中可选但 lambda 中必选，编译错误 |
|   9 | SEM_15_02_06_102_FAIL_func_optional_required_mismatch1 | compile-fail | 第1个参数在类型中可选但 lambda 中必选，编译错误 |
|  10 | SEM_15_02_06_103_FAIL_func_too_few_params | compile-fail | F 必要参数过少：() => Base 不能从 (p:Base)=>Base 赋值（m=0 必要参数不足） |
|  11 | SEM_15_02_06_104_FAIL_func_params_not_contravariant | compile-fail | 参数类型需逆变：Derived 参数 → Base 参数不合法 |
|  12 | SEM_15_02_06_200_RUNTIME_func_subtype | runtime | 函数类型子类型运行时 |

## 15.2.7 Subtyping for Fixed Size Array Types（7）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_02_07_001_PASS_fixed_array_element_covariance | compile-pass | 验证 FixedArray 元素协变：FixedArray<Derived> 可作为 FixedArray<Base> |
|   2 | SEM_15_02_07_002_PASS_fixed_array_self_assign | compile-pass | FixedArray 自身赋值：相同类型的 FixedArray 可互相赋值 |
|   3 | SEM_15_02_07_003_PASS_fixed_array_element_covariance | compile-pass | FixedArray<string> <: FixedArray<Object>（引用类型元素基于元素子类型协变） |
|   4 | SEM_15_02_07_004_PASS_fixed_array_runtime_store_check | compile-pass | FixedArray 运行时数组存储检查函数编译通过，运行时可能抛出 ArrayStoreError |
|   5 | SEM_15_02_07_100_FAIL_FIXED_ARRAY_GAP | compile-fail | 验证 FixedArray<Object> 不是 FixedArray<string> 的子类型（逆变拒绝） |
|   6 | SEM_15_02_07_101_FAIL_fixed_array_wrong_direction | compile-fail | FixedArray<Object> 不是 FixedArray<string> 的子类型 |
|   7 | SEM_15_02_07_200_RUNTIME_fixed_array | runtime | FixedArray 运行时 |

## 15.2.8 Subtyping for Intersection Types（5）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_02_08_001_PASS_PLACEHOLDER | compile-pass | 交叉类型—instanceof 收窄实现交叉语义 |
|   2 | SEM_15_02_08_002_PASS_intersection_subtype_placeholder | compile-pass | 交叉类型子类型—instanceof 收窄后跨类型赋值 |
|   3 | SEM_15_02_08_100_FAIL_INTERSECTION_UNSUPPORTED | compile-fail | 验证交叉类型 — Spec 要求 A & B <: A 但编译器暂不支持交叉类型 |
|   4 | SEM_15_02_08_101_FAIL_intersection_unsupported | compile-fail | 交叉类型暂不支持—编译器报 ESY145527 |
|   5 | SEM_15_02_08_200_RUNTIME_intersection | runtime | 交叉类型运行时 |

## 15.2.9 Subtyping for Difference Types（5）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_02_09_001_PASS_diff_self_assign | compile-pass | 差分类型自身赋值 |
|   2 | SEM_15_02_09_002_PASS_difference_subtype_placeholder | compile-pass | 差分类型子类型—null 检查排除 undefined 后的类型收窄 |
|   3 | SEM_15_02_09_100_FAIL_DIFFERENCE_UNSUPPORTED | compile-fail | 验证差分类型 — Spec 要求 T \ U <: T 但编译器暂不支持差分类型 |
|   4 | SEM_15_02_09_101_FAIL_difference_unsupported | compile-fail | 差分类型暂不支持—编译器报 ESY145527 |
|   5 | SEM_15_02_09_200_RUNTIME_difference | runtime | 差分类型运行时 |

## 15.2 Subtyping（54）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_02_00_001_PASS_CLASS_extends_class | compile-pass | 规范 15.2.1：类 S 扩展类 T，则 S <: T（S 是 T 的子类型） |
|   2 | SEM_15_02_00_002_PASS_CLASS_class_to_object | compile-pass | 未显式继承的类也是 `Object` 子类型。 |
|   3 | SEM_15_02_00_003_PASS_CLASS_to_object | compile-pass | 规范 15.2.1：没有 extends 子句的类 S，S <: Object |
|   4 | SEM_15_02_00_004_PASS_CLASS_implements_interface | compile-pass | 规范 15.2.1：类 S 实现接口 T，则 S <: T（S 是 T 的子类型） |
|   5 | SEM_15_02_00_005_PASS_CLASS_interface_extends | compile-pass | 子接口可赋给父接口。 |
|   6 | SEM_15_02_00_006_PASS_INTERFACE_extends_interface | compile-pass | 规范 15.2.1：接口 S 扩展接口 T，则 S <: T（S 是 T 的子类型） |
|   7 | SEM_15_02_00_007_PASS_GEN_exact_generic_super | compile-pass | `C<T> extends B<T>` 精确类型实参赋值。 |
|   8 | SEM_15_02_00_008_PASS_GEN_generic_interface_extends | compile-pass | 泛型子接口赋给泛型父接口。 |
|   9 | SEM_15_02_00_009_PASS_GEN_variance_compatible | compile-pass | 符合声明处 variance 的赋值。 |
|  10 | SEM_15_02_00_010_PASS_GEN_variance_covariant | compile-pass | 规范 15.2.2：泛型类 G<out T>，若 S <: T，则 G<S> <: G<T>（协变） |
|  11 | SEM_15_02_00_011_PASS_GEN_variance_contravariant | compile-pass | 规范 15.2.2：泛型类 G<in T>，若 T <: S，则 G<S> <: G<T>（逆变） |
|  12 | SEM_15_02_00_012_PASS_LIT_string_literal_to_string | compile-pass | 规范 15.2.3：任何字符串字面量类型是 string 的子类型 |
|  13 | SEM_15_02_00_013_PASS_TUPLE_tuple_to_tuple_base | compile-pass | 规范 15.2.4：元组类型 T(P1,...,Pn) 是元组类型 S(P1,...,Pm) 的子类型，其中 n >= m |
|  14 | SEM_15_02_00_014_PASS_TUPLE_longer_to_shorter | compile-pass | 更长元组赋给相同前缀的较短元组。 |
|  15 | SEM_15_02_00_015_PASS_UNION_member_to_union | compile-pass | 规范 15.2.5：联合类型 U(U1/.../Un) 是类型 T 的子类型，如果每个 Ui 都是 T 的子类型 |
|  16 | SEM_15_02_00_016_PASS_UNION_smaller_to_larger_union | compile-pass | 较小联合赋给较大联合。 |
|  17 | SEM_15_02_00_017_PASS_FUNC_return_covariance | compile-pass | 规范 15.2.6：函数类型 F 是函数类型 S 的子类型，如果 F 的返回类型是 S 的返回类型的子类型（协变） |
|  18 | SEM_15_02_00_018_PASS_FUNC_parameter_contravariance | compile-pass | 规范 15.2.6：函数类型 F 是函数类型 S 的子类型，如果 F 的每个参数类型是 S 对应参数类型的超类型（逆变） |
|  19 | SEM_15_02_00_019_PASS_FIXED_ref_element_covariance | compile-pass | `FixedArray<Derived>` 可作为 `FixedArray<Base>`。 |
|  20 | SEM_15_02_00_020_PASS_INTER_intersection_to_component | compile-pass | 交叉类型可作为其中一个组成类型。 |
|  21 | SEM_15_02_00_021_PASS_DIFF_disjoint_difference | compile-pass | 满足差集条件的类型赋值。 |
|  22 | SEM_15_02_00_022_PASS_CLASS_declared_implements | compile-pass | (cross-language comparison) |
|  23 | SEM_15_02_00_023_PASS_GEN_out_covariant_assignment | compile-pass | (cross-language comparison) |
|  24 | SEM_15_02_00_024_PASS_LIT_literal_union_to_string | compile-pass | (cross-language comparison) |
|  25 | SEM_15_02_00_025_PASS_TUPLE_prefix_longer_to_shorter | compile-pass | (cross-language comparison) |
|  26 | SEM_15_02_00_026_PASS_UNION_union_to_common_base | compile-pass | (cross-language comparison) |
|  27 | SEM_15_02_00_027_PASS_FUNC_param_contravariance | compile-pass | (cross-language comparison) |
|  28 | SEM_15_02_00_028_PASS_SMART_FUNC_instanceof_narrowing | compile-pass | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
|  29 | SEM_15_02_00_029_PASS_self_subtype | compile-pass | 规范 15.2：类型 S 是自身的子类型 |
|  30 | SEM_15_02_00_100_FAIL_CLASS_base_to_derived | compile-fail | `Base` 赋给 `Derived`。 |
|  31 | SEM_15_02_00_101_FAIL_CLASS_unrelated_classes | compile-fail | 无关类之间赋值。 |
|  32 | SEM_15_02_00_102_FAIL_CLASS_not_implemented_interface | compile-fail | 只“长得像”接口但没有 `implements`。 |
|  33 | SEM_15_02_00_103_FAIL_CLASS_sibling_interfaces | compile-fail | 兄弟接口之间赋值。 |
|  34 | SEM_15_02_00_104_FAIL_GEN_invariant_mismatch | compile-fail | 默认不变泛型中 `Box<Derived>` 赋给 `Box<Base>`。 |
|  35 | SEM_15_02_00_105_FAIL_GEN_wrong_arg_count | compile-fail | 泛型类型实参数量错误。 |
|  36 | SEM_15_02_00_106_FAIL_GEN_variance_wrong_direction | compile-fail | variance 方向错误。 |
|  37 | SEM_15_02_00_107_FAIL_LIT_string_to_literal | compile-fail | `string` 赋给特定字符串字面量类型。 |
|  38 | SEM_15_02_00_108_FAIL_TUPLE_shorter_to_longer | compile-fail | 较短元组赋给较长元组。 |
|  39 | SEM_15_02_00_109_FAIL_UNION_larger_to_smaller_union | compile-fail | 较大联合赋给较小联合。 |
|  40 | SEM_15_02_00_110_FAIL_FUNC_return_wrong_direction | compile-fail | 返回值方向错误。 |
|  41 | SEM_15_02_00_111_FAIL_FUNC_parameter_wrong_direction | compile-fail | 参数方向错误。 |
|  42 | SEM_15_02_00_112_FAIL_FIXED_wrong_direction | compile-fail | `FixedArray<Base>` 赋给 `FixedArray<Derived>`。 |
|  43 | SEM_15_02_00_113_FAIL_FIXED_fixed_resizable_mix | compile-fail | `FixedArray<T>` 与普通 `Array<T>` 混用。 |
|  44 | SEM_15_02_00_114_FAIL_INTER_component_to_intersection | compile-fail | 单个组成类型不能直接作为完整交叉类型。 |
|  45 | SEM_15_02_00_115_FAIL_DIFF_overlap_difference | compile-fail | 与被排除类型有交集时赋值。 |
|  46 | SEM_15_02_00_116_FAIL_SMART_GLOBAL_global_base_member_without_narrow | compile-fail | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
|  47 | SEM_15_02_00_117_FAIL_incompatible_types | compile-fail | 规范 15.2：不相关的类型不能赋值 |
|  48 | SEM_15_02_00_118_FAIL_CLASS_assign_superclass_to_subclass | compile-fail | 规范 15.2.1：子类型关系是单向的，超类型不能赋值给子类型 |
|  49 | SEM_15_02_00_119_FAIL_GEN_invariant_assignment | compile-fail | 规范 15.2.2：泛型类 C<T> 对于不同的类型参数 T1 和 T2，C<T1> 和 C<T2> 之间没有子类型关系（不变性） |
|  50 | SEM_15_02_00_120_FAIL_TUPLE_different_tuple_types | compile-fail | 规范 15.2.4：元组类型 T(P1,...,Pn) 和 S(P1,...,Pm) 之间，如果 n != m 或任何对应元素类型不相同，则这些不是子类型 |
|  51 | SEM_15_02_00_121_FAIL_tuple_subtype_mismatch | compile-fail | [Derived,Derived] 不是 [Base,Base] 的子类型（元组类型参数不变） |
|  52 | SEM_15_02_00_122_FAIL_array_subtype_mismatch | compile-fail | Array<Derived> 不是 Array<Base> 的子类型（泛型类型参数不变） |
|  53 | SEM_15_02_00_200_RUNTIME_SMART_GLOBAL_overload_declared_base_top_level | runtime | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
|  54 | SEM_15_02_00_201_RUNTIME_subtyping | runtime | 子类型运行时 |

## 15.3 Type Identity（27）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_03_00_001_PASS_ARRAY_type_identity | compile-pass | 规范 15.3：数组类型 T1[] 和 T2[] 相同，如果 T1 和 T2 相同 |
|   2 | SEM_15_03_00_002_PASS_TYPE_ALIAS_IDENTITY | compile-pass | 验证类型别名同一性：type MyInt = int，MyInt 和 int 是同一类型 |
|   3 | SEM_15_03_00_003_PASS_same_primitive | compile-pass | 相同基础类型，例如 `int` 与 `int`。 |
|   4 | SEM_15_03_00_004_PASS_GENERIC_IDENTITY | compile-pass | 验证泛型类型实例化同一性：Container<int> 和 Container<int> 是同一类型 |
|   5 | SEM_15_03_00_005_PASS_TUPLE_type_identity | compile-pass | 规范 15.3：元组类型 T(P1,...,Pn) 和 S(P1,...,Pm) 相同，如果 n == m 且每个 Ti 和 Si 相同 |
|   6 | SEM_15_03_00_006_PASS_same_class | compile-pass | 同一个类类型。 |
|   7 | SEM_15_03_00_007_PASS_UNION_type_identity | compile-pass | 规范 15.3：联合类型 U(T1/.../Tn) 和 V(U1/.../Um) 相同，如果 n == m 且 U 经过排列后每个 Ti 和 Ui 相同 |
|   8 | SEM_15_03_00_008_PASS_same_tuple | compile-pass | 元组长度和元素类型都相同。 |
|   9 | SEM_15_03_00_009_PASS_TYPE_ALIAS_identity | compile-pass | 规范 15.3：类型别名不创建新类型，只是现有类型的别名 |
|  10 | SEM_15_03_00_010_PASS_mutual_subtyping_identity | compile-pass | 通过相互子类型关系判定同一。 |
|  11 | SEM_15_03_00_011_PASS_UNION_IDENTITY | compile-pass | 验证联合类型同一性：相同成员的联合类型视为同一类型 |
|  12 | SEM_15_03_00_012_PASS_same_function_signature | compile-pass | 函数有效签名一致。 |
|  13 | SEM_15_03_00_013_PASS_FUNCTION_TYPE_IDENTITY | compile-pass | 验证函数类型同一性：相同签名函数类型视为同一类型 |
|  14 | SEM_15_03_00_014_PASS_same_named_class | compile-pass | (cross-language comparison) |
|  15 | SEM_15_03_00_015_PASS_same_tuple_and_function | compile-pass | (cross-language comparison) |
|  16 | SEM_15_03_00_016_PASS_effective_literal_string | compile-pass | (cross-language comparison) |
|  17 | SEM_15_03_00_017_PASS_SMART_FUNC_instanceof_narrowing | compile-pass | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
|  18 | SEM_15_03_00_100_FAIL_DIFF_TYPES_NOT_IDENTICAL | compile-fail | 验证不同类型不具同一性：int 和 string 不是同一类型 |
|  19 | SEM_15_03_00_101_FAIL_GENERIC_DIFF_ARGS | compile-fail | 验证泛型类型不同参数不具同一性：Container<int> 和 Container<string> 不是同一类型 |
|  20 | SEM_15_03_00_102_FAIL_tuple_length_differs | compile-fail | 元组长度不同。 |
|  21 | SEM_15_03_00_103_FAIL_tuple_element_differs | compile-fail | 元组元素类型不同。 |
|  22 | SEM_15_03_00_104_FAIL_generic_arg_differs | compile-fail | 泛型类型实参不同。 |
|  23 | SEM_15_03_00_105_FAIL_array_base_vs_derived | compile-fail | `Array<Base>` 与 `Array<Derived>` 不应当作同一类型。 |
|  24 | SEM_15_03_00_106_FAIL_return_type_only_overload_identity | compile-fail | 只靠返回类型不同来区分重载。 |
|  25 | SEM_15_03_00_107_FAIL_SMART_GLOBAL_global_base_member_without_narrow | compile-fail | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
|  26 | SEM_15_03_00_200_RUNTIME_TYPE_IDENTITY | runtime | 验证类型同一性运行时行为：别名类型与原始类型同一 |
|  27 | SEM_15_03_00_201_RUNTIME_SMART_GLOBAL_overload_declared_base_top_level | runtime | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |

## 15.4 Assignability（30）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_04_00_001_PASS_SUBTYPE_ASSIGNABILITY | compile-pass | 验证子类型可赋值性：S <: T ⇒ S 可赋值给 T |
|   2 | SEM_15_04_00_002_PASS_SUBTYPING_assignability | compile-pass | 规范 15.4：T1 可赋给 T2，如果 T1 是 T2 的子类型 |
|   3 | SEM_15_04_00_003_PASS_subtype_assignment | compile-pass | 子类型赋给父类型。 |
|   4 | SEM_15_04_00_004_PASS_IMPLICIT_CONVERSION_assignability | compile-pass | 规范 15.4：T1 可赋给 T2，如果存在隐式转换允许 T1 转换为 T2 |
|   5 | SEM_15_04_00_005_PASS_NUMERIC_WIDENING | compile-pass | 验证数值拓宽可赋值性：int → double |
|   6 | SEM_15_04_00_006_PASS_UNDEFINED_ASSIGNABILITY | compile-pass | 验证 undefined 可赋值性：undefined 可赋值给含 undefined 的联合类型 |
|   7 | SEM_15_04_00_007_PASS_literal_to_base | compile-pass | 字面量类型赋给基础类型。 |
|   8 | SEM_15_04_00_008_PASS_INTERFACE_ASSIGNABILITY | compile-pass | 验证接口实现的可赋值性：实现类可赋值给接口类型 |
|   9 | SEM_15_04_00_009_PASS_member_to_union | compile-pass | 成员类型赋给联合类型。 |
|  10 | SEM_15_04_00_010_PASS_explicit_cast_assignment | compile-pass | 显式 cast 后再赋值。 |
|  11 | SEM_15_04_00_011_PASS_function_scope_narrowed_assign | compile-pass | 函数局部变量缩窄后赋给缩窄目标。 |
|  12 | SEM_15_04_00_012_PASS_local_copy_then_narrow | compile-pass | 全局或字段复制到局部变量后再缩窄赋值。 |
|  13 | SEM_15_04_00_013_PASS_declared_subtype_assignment | compile-pass | (cross-language comparison) |
|  14 | SEM_15_04_00_014_PASS_valid_numeric_widening | compile-pass | (cross-language comparison) |
|  15 | SEM_15_04_00_015_PASS_undefined_to_nullish_union | compile-pass | (cross-language comparison) |
|  16 | SEM_15_04_00_016_PASS_local_smart_assign | compile-pass | (cross-language comparison) |
|  17 | SEM_15_04_00_017_PASS_SMART_FUNC_instanceof_narrowing | compile-pass | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
|  18 | SEM_15_04_00_100_FAIL_super_to_sub | compile-fail | 父类型赋给子类型。 |
|  19 | SEM_15_04_00_101_FAIL_numeric_narrowing | compile-fail | 隐式数值窄化。 |
|  20 | SEM_15_04_00_102_FAIL_TYPE_MISMATCH | compile-fail | 验证不同类型不可赋值：string 不可赋值给 int |
|  21 | SEM_15_04_00_103_FAIL_unrelated_assignment | compile-fail | 无关类型赋值。 |
|  22 | SEM_15_04_00_104_FAIL_UNRELATED_TYPES | compile-fail | 验证非子类型不可赋值：无继承关系的类不可互相赋值 |
|  23 | SEM_15_04_00_105_FAIL_nullish_to_object | compile-fail | `T |
|  24 | SEM_15_04_00_106_FAIL_union_missing_member | compile-fail | 联合类型包含目标类型不接受的成员。 |
|  25 | SEM_15_04_00_107_FAIL_global_narrowing_assumed | compile-fail | 假设全局变量缩窄后稳定。 |
|  26 | SEM_15_04_00_108_FAIL_reassignment_kills_narrowing | compile-fail | 缩窄后重新赋值，再按缩窄类型赋值。 |
|  27 | SEM_15_04_00_109_FAIL_call_side_effect_kills_narrowing | compile-fail | 函数调用可能修改被缩窄变量。 |
|  28 | SEM_15_04_00_110_FAIL_SMART_GLOBAL_global_base_member_without_narrow | compile-fail | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
|  29 | SEM_15_04_00_200_RUNTIME_ASSIGNABILITY | runtime | 验证可赋值性运行时行为：子类型赋值后方法调用正确 |
|  30 | SEM_15_04_00_201_RUNTIME_SMART_GLOBAL_overload_declared_base_top_level | runtime | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |

## 15.5 Invariance Covariance Contravariance（24）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_05_00_001_PASS_GENERIC_invariance | compile-pass | 规范 15.5：泛型类 C<T> 对于不同的类型参数 T1 和 T2，C<T1> 和 C<T2> 之间没有子类型关系（不变性） |
|   2 | SEM_15_05_00_002_PASS_return_covariance | compile-pass | 返回类型允许协变。 |
|   3 | SEM_15_05_00_003_PASS_FUNCTION_variance | compile-pass | 规范 15.5：函数类型的参数类型逆变和返回类型协变 |
|   4 | SEM_15_05_00_004_PASS_RETURN_COVARIANCE | compile-pass | 验证返回值协变：子类覆写方法返回 Dog <: Animal 允许 |
|   5 | SEM_15_05_00_005_PASS_parameter_contravariance | compile-pass | 函数参数类型允许逆变。 |
|   6 | SEM_15_05_00_006_PASS_PARAM_CONTRAVARIANCE | compile-pass | 验证函数参数逆变：Animal 处理器可作 Dog 参数的回调 |
|   7 | SEM_15_05_00_007_PASS_override_return_covariant | compile-pass | 方法重写返回子类型。 |
|   8 | SEM_15_05_00_008_PASS_override_param_contravariant | compile-pass | 方法重写参数使用父类型。 |
|   9 | SEM_15_05_00_009_PASS_declared_generic_variance | compile-pass | 泛型声明处 `in`/`out` 生效。 |
|  10 | SEM_15_05_00_010_PASS_out_T_covariant | compile-pass | (cross-language comparison) |
|  11 | SEM_15_05_00_011_PASS_param_contravariant_function | compile-pass | (cross-language comparison) |
|  12 | SEM_15_05_00_012_PASS_override_param_supertype | compile-pass | (cross-language comparison) |
|  13 | SEM_15_05_00_013_PASS_SMART_FUNC_instanceof_narrowing | compile-pass | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
|  14 | SEM_15_05_00_100_FAIL_GENERIC_INVARIANCE | compile-fail | 验证泛型类型参数不变性：Holder<Derived> 不是 Holder<Base> 的子类型 |
|  15 | SEM_15_05_00_101_FAIL_return_contravariant | compile-fail | 返回类型方向反了。 |
|  16 | SEM_15_05_00_102_FAIL_parameter_covariant | compile-fail | 参数类型方向反了。 |
|  17 | SEM_15_05_00_103_FAIL_invariant_as_covariant | compile-fail | 把默认不变泛型当协变使用。 |
|  18 | SEM_15_05_00_104_FAIL_invariant_as_contravariant | compile-fail | 把默认不变泛型当逆变使用。 |
|  19 | SEM_15_05_00_105_FAIL_COVARIANT_PARAM | compile-fail | 验证协变位置禁止参数：out 类型参数不可用于参数位置 |
|  20 | SEM_15_05_00_106_FAIL_constraint_variance_wrong | compile-fail | 泛型约束与 variance 方向不兼容。 |
|  21 | SEM_15_05_00_107_FAIL_CONTRAVARIANT_RETURN | compile-fail | 验证逆变位置禁止返回值：in 类型参数不可用于返回值位置 |
|  22 | SEM_15_05_00_108_FAIL_SMART_GLOBAL_global_base_member_without_narrow | compile-fail | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
|  23 | SEM_15_05_00_200_RUNTIME_SMART_GLOBAL_overload_declared_base_top_level | runtime | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
|  24 | SEM_15_05_00_201_RUNTIME_variance | runtime | 验证变体运行时行为：协变返回值 + 逆变参数的实际方法派发 |

## 15.6 Compatibility of Call Arguments（34）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_06_00_001_PASS_ARG_COMPATIBILITY | compile-pass | 验证调用参数类型兼容：参数类型与声明类型匹配时通过 |
|   2 | SEM_15_06_00_002_PASS_SPREAD_expression | compile-pass | 规范 15.6：调用参数兼容性检查，包括 spread 表达式的线性化 |
|   3 | SEM_15_06_00_003_PASS_exact_arguments | compile-pass | 参数个数和类型完全匹配。 |
|   4 | SEM_15_06_00_004_PASS_REST_parameter | compile-pass | 规范 15.6：调用参数兼容性检查，包括剩余参数的匹配 |
|   5 | SEM_15_06_00_005_PASS_SUBTYPE_ARG | compile-pass | 验证子类型参数兼容：子类型参数可传父类型声明 |
|   6 | SEM_15_06_00_006_PASS_optional_omitted | compile-pass | 可选参数省略。 |
|   7 | SEM_15_06_00_007_PASS_rest_arguments | compile-pass | 剩余参数接收多个实参。 |
|   8 | SEM_15_06_00_008_PASS_spread_tuple | compile-pass | 元组展开后匹配形参。 |
|   9 | SEM_15_06_00_009_PASS_spread_array_literal | compile-pass | 数组字面量展开并线性化。 |
|  10 | SEM_15_06_00_010_PASS_function_scope_smart_arg | compile-pass | 局部变量经 `instanceof` 缩窄后传给子类型参数。 |
|  11 | SEM_15_06_00_011_PASS_local_copy_smart_arg | compile-pass | 全局变量复制到局部后缩窄再传参。 |
|  12 | SEM_15_06_00_012_PASS_optional_omitted | compile-pass | (cross-language comparison) |
|  13 | SEM_15_06_00_013_PASS_spread_array_literal_linearized | compile-pass | (cross-language comparison) |
|  14 | SEM_15_06_00_014_PASS_local_smart_arg | compile-pass | (cross-language comparison) |
|  15 | SEM_15_06_00_015_PASS_SMART_FUNC_instanceof_narrowing | compile-pass | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
|  16 | SEM_15_06_00_100_FAIL_missing_required | compile-fail | 缺少必选参数。 |
|  17 | SEM_15_06_00_101_FAIL_excess_argument | compile-fail | 传入多余参数。 |
|  18 | SEM_15_06_00_102_FAIL_ARG_MISMATCH | compile-fail | 验证调用参数类型不匹配拒绝：string 传 int 声明应报错 |
|  19 | SEM_15_06_00_103_FAIL_arg_not_assignable | compile-fail | 实参不可赋给形参类型。 |
|  20 | SEM_15_06_00_104_FAIL_ARG_COUNT | compile-fail | 验证参数数量不匹配：少传参数应报错 |
|  21 | SEM_15_06_00_105_FAIL_spread_element_mismatch | compile-fail | 展开元素类型不匹配。 |
|  22 | SEM_15_06_00_106_FAIL_rest_type_mismatch | compile-fail | 剩余参数元素类型不匹配。 |
|  23 | SEM_15_06_00_107_FAIL_branch_outside_no_smart_arg | compile-fail | 在缩窄分支外按子类型传参。 |
|  24 | SEM_15_06_00_108_FAIL_global_scope_narrowed_arg | compile-fail | 假设全局变量缩窄稳定后传参。 |
|  25 | SEM_15_06_00_109_FAIL_reassigned_before_call | compile-fail | 缩窄后重新赋值再传参。 |
|  26 | SEM_15_06_00_110_FAIL_SMART_GLOBAL_global_base_member_without_narrow | compile-fail | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
|  27 | SEM_15_06_00_111_FAIL_ARGUMENT_count_exceed | compile-fail | 规范 15.6：调用参数兼容性检查，参数数量不能超过参数数量 |
|  28 | SEM_15_06_00_112_FAIL_MISSING_required_argument | compile-fail | 规范 15.6：调用参数兼容性检查，每个必需参数必须有对应的参数 |
|  29 | SEM_15_06_00_200_RUNTIME_call_args | runtime | 验证调用参数运行时行为：参数传递正确 |
|  30 | SEM_15_06_00_201_RUNTIME_rest_argument_values | runtime | 剩余参数保持顺序和值。 |
|  31 | SEM_15_06_00_202_RUNTIME_spread_tuple_values | runtime | 元组展开后运行值正确。 |
|  32 | SEM_15_06_00_203_RUNTIME_smart_arg_branch | runtime | 缩窄分支实际调用目标函数。 |
|  33 | SEM_15_06_00_204_RUNTIME_rest_order_preserved | runtime | (cross-language comparison) |
|  34 | SEM_15_06_00_205_RUNTIME_SMART_GLOBAL_overload_declared_base_top_level | runtime | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |

## 15.7.1 Type Inference for Constant Expressions（10）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_07_01_001_PASS_CONST_EXPR_TYPE | compile-pass | 验证常量表达式类型推断：算术常量的类型从操作数推断 |
|   2 | SEM_15_07_01_002_PASS_BOOL_CONST_EXPR | compile-pass | 验证布尔常量表达式类型推断：关系运算推断为 boolean |
|   3 | SEM_15_07_01_003_PASS_CONST_DECL_EXPR | compile-pass | 验证 const 声明常量表达式计算：编译期常量可参与表达式 |
|   4 | SEM_15_07_01_004_PASS_numeric_target_type | compile-pass | 规范 15.7.1 Case 1：目标类型是数字类型时常量表达式推断 |
|   5 | SEM_15_07_01_005_PASS_union_target_type | compile-pass | 规范 15.7.1 Case 2：联合类型包含数字类型时常量表达式推断 |
|   6 | SEM_15_07_01_006_PASS_union_no_numeric_type | compile-pass | 规范 15.7.1 Note：联合类型不含数字类型时使用字面量默认类型 |
|   7 | SEM_15_07_01_100_FAIL_INVALID_CONST_EXPR | compile-fail | 验证非法常量表达式拒绝：字符串与整数相乘无效 |
|   8 | SEM_15_07_01_101_FAIL_union_ambiguity | compile-fail | 规范 15.7.1 Case 2：联合类型推断歧义或无匹配类型 |
|   9 | SEM_15_07_01_102_FAIL_numeric_target_error | compile-fail | 规范 15.7.1 Case 1：目标类型是数字类型时无效赋值 |
|  10 | SEM_15_07_01_200_RUNTIME_const_expr | runtime | 常量表达式运行时 |

## 15.7.2 Return Type Inference（9）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_07_02_001_PASS_RETURN_MATCH | compile-pass | 验证函数返回类型推断：显式返回类型匹配 |
|   2 | SEM_15_07_02_002_PASS_RETURN_COVARIANCE | compile-pass | 验证返回值协变：子类方法可返回子类型 |
|   3 | SEM_15_07_02_003_PASS_explicit_implicit_return | compile-pass | 规范 15.7.2：显式和隐式返回类型推断 |
|   4 | SEM_15_07_02_004_PASS_union_return_inference | compile-pass | 规范 15.7.2：多return语句推断联合返回类型 |
|   5 | SEM_15_07_02_100_FAIL_RETURN_MISMATCH | compile-fail | 验证返回类型不匹配拒绝：声明的 int 返回 string 应报错 |
|   6 | SEM_15_07_02_101_FAIL_MISSING_RETURN | compile-fail | 验证缺少 return 语句：非 void 函数缺少 return 应报错 |
|   7 | SEM_15_07_02_102_FAIL_unexpressible_smart_return | compile-fail | 规范 15.7.2：推断返回类型为C&I无法表达时报错 |
|   8 | SEM_15_07_02_103_FAIL_missing_return_path | compile-fail | 规范 15.7.2：存在无return的执行路径时编译错误 |
|   9 | SEM_15_07_02_200_RUNTIME_RETURN | runtime | 验证返回类型运行时行为 |

## 15.7 Type Inference（30）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_07_00_001_PASS_CONSTANT_expression | compile-pass | 规范 15.7.1：常量表达式的类型推断 |
|   2 | SEM_15_07_00_002_PASS_infer_int_initializer | compile-pass | `let x = 1` 推断为默认整数类型。 |
|   3 | SEM_15_07_00_003_PASS_RETURN_type_inference | compile-pass | 规范 15.7.2：返回类型可以从函数体中的返回语句推断 |
|   4 | SEM_15_07_00_004_PASS_target_numeric_initializer | compile-pass | 目标类型引导数字字面量。 |
|   5 | SEM_15_07_00_005_PASS_array_literal_inference | compile-pass | 根据数组元素推断数组类型。 |
|   6 | SEM_15_07_00_006_PASS_return_same_type | compile-pass | 所有 return 路径类型一致。 |
|   7 | SEM_15_07_00_007_PASS_return_common_supertype | compile-pass | 多个返回路径可推断公共父类型。 |
|   8 | SEM_15_07_00_008_PASS_lambda_return_inference | compile-pass | lambda 返回类型可推断。 |
|   9 | SEM_15_07_00_009_PASS_function_smart_return_expressible | compile-pass | 函数局部智能类型参与返回推断且类型可表达。 |
|  10 | SEM_15_07_00_010_PASS_explicit_return_avoids_smart_issue | compile-pass | 显式返回类型避免不可表达智能类型问题。 |
|  11 | SEM_15_07_00_011_PASS_byte_target_127 | compile-pass | (cross-language comparison) |
|  12 | SEM_15_07_00_012_PASS_int_or_double_target | compile-pass | (cross-language comparison) |
|  13 | SEM_15_07_00_013_PASS_all_paths_common_supertype | compile-pass | (cross-language comparison) |
|  14 | SEM_15_07_00_014_PASS_object_literal_with_class_target | compile-pass | (cross-language comparison) |
|  15 | SEM_15_07_00_015_PASS_SMART_FUNC_instanceof_narrowing | compile-pass | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
|  16 | SEM_15_07_00_016_PASS_infer_from_initializer | compile-pass | 规范 15.7：从初始化器推断变量类型 |
|  17 | SEM_15_07_00_100_FAIL_native_missing_return_type | compile-fail | native 函数缺少返回类型。 |
|  18 | SEM_15_07_00_101_FAIL_missing_return_path | compile-fail | 存在没有 return 的执行路径。 |
|  19 | SEM_15_07_00_102_FAIL_unexpressible_smart_return | compile-fail | 推断结果是不可表达的智能类型。 |
|  20 | SEM_15_07_00_103_FAIL_standalone_object_literal | compile-fail | 对象字面量没有目标类型。 |
|  21 | SEM_15_07_00_104_FAIL_incompatible_return_branches | compile-fail | 不同返回分支无法推断合法类型。 |
|  22 | SEM_15_07_00_105_FAIL_global_condition_initializer | compile-fail | 全局初始化依赖条件缩窄。 |
|  23 | SEM_15_07_00_106_FAIL_reassignment_before_return | compile-fail | return 前重新赋值导致智能类型失效。 |
|  24 | SEM_15_07_00_107_FAIL_SMART_GLOBAL_global_base_member_without_narrow | compile-fail | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
|  25 | SEM_15_07_00_108_FAIL_type_mismatch | compile-fail | 规范 15.7：类型推断失败时拒绝赋值 |
|  26 | SEM_15_07_00_200_RUNTIME_inferred_return_value | runtime | 推断返回值运行结果正确。 |
|  27 | SEM_15_07_00_201_RUNTIME_lambda_inferred_return_value | runtime | lambda 推断返回值正确。 |
|  28 | SEM_15_07_00_202_RUNTIME_smart_branch_return | runtime | 智能分支返回执行路径正确。 |
|  29 | SEM_15_07_00_203_RUNTIME_SMART_GLOBAL_overload_declared_base_top_level | runtime | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
|  30 | SEM_15_07_00_204_RUNTIME_type_inference | runtime | 类型推断运行时 |

## 15.8.1 Type Expression（7）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_08_01_001_PASS_INSTANCEOF_SMART_CAST | compile-pass | 验证 instanceof smart cast：instanceof 检查后类型收窄 |
|   2 | SEM_15_08_01_002_PASS_NULL_SMART_CAST | compile-pass | 验证 null/undefined smart cast：!= undefined 检查后类型收窄 |
|   3 | SEM_15_08_01_003_PASS_object_literal_type_expr | compile-pass | 规范 15.8.1：Object/C类型表达式上下文中的对象字面量 |
|   4 | SEM_15_08_01_100_FAIL_TYPEOF_GAP | compile-fail | 验证 typeof smart cast — Spec 要求 typeof 收窄，编译器未实现 |
|   5 | SEM_15_08_01_101_FAIL_SMART_CAST_OUTSIDE | compile-fail | 验证不再使用 smart cast — 此场景编译器已知值类型，不验证作用域限制 |
|   6 | SEM_15_08_01_102_FAIL_object_literal_no_field | compile-fail | 规范 15.8.1：Object类型上下文中对象字面量不包含num字段 |
|   7 | SEM_15_08_01_200_RUNTIME_type_expr | runtime | 类型表达式运行时 |

## 15.8.2 Intersection Types（4）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_08_02_001_PASS_type_self_assign | compile-pass | 交集类型自身赋值 |
|   2 | SEM_15_08_02_002_PASS_intersection_smart_type | compile-pass | 规范 15.8.2：instanceof缩窄后交集类型I&C的智能类型 |
|   3 | SEM_15_08_02_100_FAIL_INTERSECTION_UNSUPPORTED | compile-fail | 验证交叉类型 — Spec §15.8.2 定义但编译器暂不支持 |
|   4 | SEM_15_08_02_200_RUNTIME_intersection | runtime | 类型运行时 |

## 15.8.3 Difference Types（4）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_08_03_001_PASS_type_self_assign | compile-pass | 差分类型自身赋值 |
|   2 | SEM_15_08_03_002_PASS_difference_smart_type | compile-pass | 规范 15.8.3：undefined排除后string的length属性访问 |
|   3 | SEM_15_08_03_100_FAIL_DIFFERENCE_UNSUPPORTED | compile-fail | 验证差分类型 — Spec §15.8.3 定义但编译器暂不支持 |
|   4 | SEM_15_08_03_200_RUNTIME_difference | runtime | 类型运行时 |

## 15.8.4 Computing Smart Types（3）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_08_04_001_PASS_null_check_narrow | compile-pass | 计算智能类型：null 检查后类型收窄 |
|   2 | SEM_15_08_04_100_FAIL_smart_narrow_mismatch | compile-fail | 智能类型拒绝：未收窄的联合类型不能赋值 |
|   3 | SEM_15_08_04_200_RUNTIME_smart_type | runtime | 智能类型运行时 |

## 15.8.5 Control flow Graph（3）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_08_05_001_PASS_if_else_branch | compile-pass | 控制流图：if/else 分支类型 |
|   2 | SEM_15_08_05_100_FAIL_type_mismatch | compile-fail | 控制流拒绝：类型不匹配的赋值 |
|   3 | SEM_15_08_05_200_RUNTIME_control_flow | runtime | 控制流运行时 |

## 15.8.6 Type Expression Simplification（3）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_08_06_001_PASS_union_simplify | compile-pass | 类型表达式简化：联合类型简化 |
|   2 | SEM_15_08_06_100_FAIL_type_mismatch | compile-fail | 类型简化拒绝：不兼容的类型赋值 |
|   3 | SEM_15_08_06_200_RUNTIME_type_simplify | runtime | 类型简化运行时 |

## 15.8.7 Smart Cast Examples（7）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_08_07_001_PASS_instanceof_use | compile-pass | 智能转换示例：典型 instanceof 使用 |
|   2 | SEM_15_08_07_002_PASS_init_smart_cast | compile-pass | 规范 15.8.7：初始化器缩窄number/string为number后自增 |
|   3 | SEM_15_08_07_003_PASS_assign_smart_cast | compile-pass | 规范 15.8.7：new Derived初始化Base变量后调用Derived方法 |
|   4 | SEM_15_08_07_004_PASS_instanceof_undefined_guard | compile-pass | 规范 15.8.7：instanceof和undefined守卫后安全调用方法 |
|   5 | SEM_15_08_07_005_PASS_overload_smart_cast | compile-pass | 规范 15.8.7：智能类型影响重载决议 |
|   6 | SEM_15_08_07_100_FAIL_type_mismatch | compile-fail | 智能转换拒绝：类型不匹配 |
|   7 | SEM_15_08_07_200_RUNTIME_smart_cast | runtime | 智能转换运行时 |

## 15.8 Smart Casts and Smart Types（63）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_08_00_001_PASS_FUNC_instanceof_class | compile-pass | 局部变量经 `instanceof` 类缩窄后调用子类方法。 |
|   2 | SEM_15_08_00_002_PASS_INSTANCEOF_narrowing | compile-pass | 规范 15.8：instanceof 表达式用于类型收窄（智能类型转换） |
|   3 | SEM_15_08_00_003_PASS_FUNC_instanceof_interface | compile-pass | 局部变量经 `instanceof` 接口缩窄后调用接口方法。 |
|   4 | SEM_15_08_00_004_PASS_TYPEOF_narrowing | compile-pass | 规范 15.8：typeof 表达式用于类型收窄（智能类型转换） |
|   5 | SEM_15_08_00_005_PASS_CONTROL_FLOW_narrowing | compile-pass | 规范 15.8：基于控制流的类型收窄（智能类型转换） |
|   6 | SEM_15_08_00_006_PASS_FUNC_nullish_check | compile-pass | `x != null` 或等价检查移除 nullish 部分。 |
|   7 | SEM_15_08_00_007_PASS_FUNC_else_difference | compile-pass | `else` 分支使用差集类型。 |
|   8 | SEM_15_08_00_008_PASS_UNION_narrowing | compile-pass | 规范 15.8：联合类型变量的智能类型转换 |
|   9 | SEM_15_08_00_009_PASS_FUNC_nested_narrowing | compile-pass | 嵌套条件累积智能类型。 |
|  10 | SEM_15_08_00_010_PASS_NULL_UNDEFINED_narrowing | compile-pass | 规范 15.8：null/undefined 的类型收窄（智能类型转换） |
|  11 | SEM_15_08_00_011_PASS_FUNC_return_guard_narrowing | compile-pass | 提前 return 后缩窄后续代码。 |
|  12 | SEM_15_08_00_012_PASS_LAMBDA_captured_variable | compile-pass | 规范 15.8：智能类型转换不适用于被 lambda 捕获并修改的局部变量 |
|  13 | SEM_15_08_00_013_PASS_FUNC_local_copy_of_field | compile-pass | 字段复制到局部后缩窄使用。 |
|  14 | SEM_15_08_00_014_PASS_NESTED_IF_narrowing | compile-pass | 规范 15.8：嵌套 if 语句中的类型收窄（智能类型转换） |
|  15 | SEM_15_08_00_015_PASS_FUNC_local_copy_of_global | compile-pass | 全局变量复制到局部后缩窄使用。 |
|  16 | SEM_15_08_00_016_PASS_TERNARY_narrowing | compile-pass | 规范 15.8：三元条件表达式中的类型收窄（智能类型转换） |
|  17 | SEM_15_08_00_017_PASS_LOGICAL_AND_OR_narrowing | compile-pass | 规范 15.8：逻辑 AND/OR 表达式中的类型收窄（智能类型转换） |
|  18 | SEM_15_08_00_018_PASS_CFG_branch_joining | compile-pass | 规范 15.8.4：控制流图分支合并时，智能类型是各分支智能类型的联合 |
|  19 | SEM_15_08_00_019_PASS_BACKEDGE_loop_variable | compile-pass | 规范 15.8.4：反向边节点（循环）更新时，循环变量重置为声明类型 |
|  20 | SEM_15_08_00_020_PASS_MUST_ALIAS_sets | compile-pass | 规范 15.8.4：must-alias 集计算用于智能类型转换 |
|  21 | SEM_15_08_00_021_PASS_INTERSECTION_type_computation | compile-pass | 规范 15.8.2：智能类型转换中交集类型的计算 |
|  22 | SEM_15_08_00_022_PASS_DIFFERENCE_type_computation | compile-pass | 规范 15.8.3：智能类型转换中差集类型的计算 |
|  23 | SEM_15_08_00_023_PASS_GLOBAL_function_reads_global_then_local_copy | compile-pass | 函数内读取全局变量到局部，再缩窄局部。 |
|  24 | SEM_15_08_00_024_PASS_TYPE_EXPRESSION_SIMPLIFICATION | compile-pass | 规范 15.8.6：类型表达式简化规则 |
|  25 | SEM_15_08_00_025_PASS_SWITCH_narrowing | compile-pass | 规范 15.8：switch 语句中的类型收窄（智能类型转换） |
|  26 | SEM_15_08_00_026_PASS_FIELD_local_copy_this_field | compile-pass | `this.f` 复制到局部后缩窄。 |
|  27 | SEM_15_08_00_027_PASS_FOR_LOOP_narrowing | compile-pass | 规范 15.8：for 循环中的类型收窄（智能类型转换） |
|  28 | SEM_15_08_00_028_PASS_WHILE_LOOP_narrowing | compile-pass | 规范 15.8：while 循环中的类型收窄（智能类型转换） |
|  29 | SEM_15_08_00_029_PASS_instanceof_intersection | compile-pass | (cross-language comparison) |
|  30 | SEM_15_08_00_030_PASS_guard_return_narrows_after | compile-pass | (cross-language comparison) |
|  31 | SEM_15_08_00_031_PASS_nullish_removed_local | compile-pass | (cross-language comparison) |
|  32 | SEM_15_08_00_032_PASS_copy_field_to_local | compile-pass | (cross-language comparison) |
|  33 | SEM_15_08_00_033_PASS_no_side_effect_between_check_and_use | compile-pass | (cross-language comparison) |
|  34 | SEM_15_08_00_034_PASS_function_declared_base_instanceof_member | compile-pass | Base 声明变量经过 instanceof Derived 显式缩窄后可访问 Derived 独有成员。 |
|  35 | SEM_15_08_00_035_PASS_function_declared_base_reassigned_base | compile-pass | Base 声明变量先保存 Derived 后重新赋值为 Base，后续按 Base 使用。 |
|  36 | SEM_15_08_00_036_PASS_SMART_FUNC_instanceof_narrowing | compile-pass | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
|  37 | SEM_15_08_00_037_PASS_ST_placeholder | compile-pass | 智能类型：instanceof 类型收窄 |
|  38 | SEM_15_08_00_100_FAIL_FUNC_outside_branch | compile-fail | 在缩窄分支外使用智能类型。 |
|  39 | SEM_15_08_00_101_FAIL_FUNC_reassignment_kills | compile-fail | 缩窄后重新赋值。 |
|  40 | SEM_15_08_00_102_FAIL_FUNC_write_uses_declared_type | compile-fail | 写入时使用声明类型，而不是智能类型。 |
|  41 | SEM_15_08_00_103_FAIL_FUNC_loop_leak | compile-fail | 循环内缩窄泄漏到循环外。 |
|  42 | SEM_15_08_00_104_FAIL_FUNC_closure_mutation | compile-fail | 闭包可能修改缩窄变量。 |
|  43 | SEM_15_08_00_105_FAIL_FUNC_unexpressible_return | compile-fail | 推断返回类型为不可表达智能类型。 |
|  44 | SEM_15_08_00_106_FAIL_GLOBAL_top_level_instanceof_then_member | compile-fail | 顶层缩窄全局变量后直接调用子类型方法。 |
|  45 | SEM_15_08_00_107_FAIL_FIELD_this_field_after_method_call | compile-fail | 字段缩窄后方法调用可能修改字段。 |
|  46 | SEM_15_08_00_108_FAIL_FIELD_getter_not_stable | compile-fail | 假设 getter 多次读取稳定。 |
|  47 | SEM_15_08_00_109_FAIL_function_declared_base_init_derived_member | compile-fail | 函数体内 Base 声明变量用 Derived 初始化，未显式缩窄不应访问 Derived 独有成员。 |
|  48 | SEM_15_08_00_110_FAIL_function_declared_base_init_derived_assign | compile-fail | 函数体内 Base 声明变量用 Derived 初始化，不能直接赋给 Derived 变量。 |
|  49 | SEM_15_08_00_111_FAIL_function_declared_base_from_derived_var_member | compile-fail | 函数体内 Base 声明变量来自 Derived 变量，未显式缩窄不应访问 Derived 独有成员。 |
|  50 | SEM_15_08_00_112_FAIL_top_level_declared_base_init_derived_member | compile-fail | 顶层 Base 声明变量用 Derived 初始化，未显式缩窄不应访问 Derived 独有成员。 |
|  51 | SEM_15_08_00_113_FAIL_parameter_declared_base_member | compile-fail | 函数参数声明为 Base，即使实参为 Derived，函数体内也不能直接访问 Derived 独有成员。 |
|  52 | SEM_15_08_00_114_FAIL_function_declared_base_after_call_member | compile-fail | Base 声明变量由 Derived 初始化后经历函数调用，不能假设仍可按 Derived 独有成员使用。 |
|  53 | SEM_15_08_00_115_FAIL_SMART_GLOBAL_global_base_member_without_narrow | compile-fail | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
|  54 | SEM_15_08_00_116_FAIL_SMART_FUNC_function_base_member_without_narrow | compile-fail | 函数体内 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
|  55 | SEM_15_08_00_117_FAIL_ST_placeholder | compile-fail | 智能转换拒绝：未收窄的联合类型直接赋值 |
|  56 | SEM_15_08_00_118_FAIL_INSTANCEOF_invalid_access | compile-fail | 规范 15.8：instanceof 检查后，智能类型转换只允许访问实际类型的成员 |
|  57 | SEM_15_08_00_119_FAIL_smart_cast_instanceof | compile-fail | 规范 15.8：instanceof缩窄后调用子类方法 + as强制转换 |
|  58 | SEM_15_08_00_120_FAIL_smart_cast_outside_instanceof | compile-fail | 规范 15.8：在instanceof缩窄分支外调用子类方法编译错误 |
|  59 | SEM_15_08_00_200_RUNTIME_true_branch | runtime | 运行时 true 分支调用子类型方法。 |
|  60 | SEM_15_08_00_201_RUNTIME_false_branch | runtime | 运行时 false 分支不调用子类型方法。 |
|  61 | SEM_15_08_00_202_RUNTIME_smart_overload | runtime | 智能类型影响重载选择。 |
|  62 | SEM_15_08_00_203_RUNTIME_SMART_GLOBAL_overload_declared_base_top_level | runtime | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
|  63 | SEM_15_08_00_204_RUNTIME_ST_placeholder | runtime | 智能转换运行时：instanceof 分支执行 |

## 15.9.1 Overriding in Classes（10）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_09_01_001_PASS_CLASS_OVERRIDE | compile-pass | 验证类方法覆写：子类 override 父类方法 |
|   2 | SEM_15_09_01_002_PASS_private_method_new | compile-pass | Private method in superclass not accessible, so same-name method in subclass is a new method, not override |
|   3 | SEM_15_09_01_003_PASS_override_method_compatible | compile-pass | Overriding method with compatible signature |
|   4 | SEM_15_09_01_004_PASS_inherited_overrides_interface | compile-pass | Method inherited from Base overrides interface method |
|   5 | SEM_15_09_01_005_PASS_single_overrides_multiple | compile-pass | Single method in subclass overrides several methods of superclass |
|   6 | SEM_15_09_01_100_FAIL_OVERRIDE_SIGNATURE | compile-fail | 验证覆写返回类型不匹配拒绝 |
|   7 | SEM_15_09_01_101_FAIL_override_private | compile-fail | override private method causes compile error as private methods are not accessible |
|   8 | SEM_15_09_01_102_FAIL_override_not_compatible | compile-fail | Override with incompatible signature (parameter type not contravariant) |
|   9 | SEM_15_09_01_103_FAIL_multiple_override_same | compile-fail | More than one method of subclass overrides the same method of superclass |
|  10 | SEM_15_09_01_200_RUNTIME_OVERRIDE | runtime | 验证类方法覆写运行时行为：多态派发正确 |

## 15.9.2 Overriding in Interfaces（10）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_09_02_001_PASS_INTERFACE_IMPL | compile-pass | 验证接口方法实现：类实现接口中的所有方法 |
|   2 | SEM_15_09_02_002_PASS_single_overrides_multiple_interface | compile-pass | Single method in subinterface overrides several methods of superinterface |
|   3 | SEM_15_09_02_003_PASS_method_override_interface | compile-pass | method_1 overriding in subinterface |
|   4 | SEM_15_09_02_004_PASS_method_overload_interface | compile-pass | method_2 overloading (not overriding) in subinterface |
|   5 | SEM_15_09_02_005_PASS_new_method_interface | compile-pass | foo(p: number) is a new method declaration, not related to private foo() from superinterface |
|   6 | SEM_15_09_02_100_FAIL_MISSING_IMPL | compile-fail | 验证接口方法未实现拒绝：缺少接口方法实现应报错 |
|   7 | SEM_15_09_02_101_FAIL_bad_override_return_type | compile-fail | method_3(): number cannot override method_3(): string, return type mismatch |
|   8 | SEM_15_09_02_102_FAIL_effective_signature_conflict | compile-fail | method_4(a: Array<number>) not override-compatible, but effective signatures after type erasure are compatible |
|   9 | SEM_15_09_02_103_FAIL_interface_multiple_override_same | compile-fail | More than one method of subinterface overrides the same method of superinterface |
|  10 | SEM_15_09_02_200_RUNTIME_INTERFACE_OVERRIDE | runtime | 验证接口方法覆写运行时行为：多态派发正确 |

## 15.9.3 Override Compatible Signatures（11）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_09_03_001_PASS_COMPATIBLE_OVERRIDE | compile-pass | 验证覆写兼容签名：返回值协变 + 参数逆变时签名兼容 |
|   2 | SEM_15_09_03_002_PASS_generic_override_pattern | compile-pass | Generic method override compatibility template pattern |
|   3 | SEM_15_09_03_003_PASS_covariant_type_param_constraint | compile-pass | Derived class may have compatible subtype constraint of type parameters (covariant) |
|   4 | SEM_15_09_03_004_PASS_interface_type_override | compile-pass | Interface types override with contravariant parameter and covariant return |
|   5 | SEM_15_09_03_005_PASS_function_type_override | compile-pass | Function types override with covariant/contravariant parameter and return |
|   6 | SEM_15_09_03_006_PASS_union_type_override | compile-pass | Union types override with contravariant parameter and covariant return |
|   7 | SEM_15_09_03_007_PASS_type_param_constraint_override | compile-pass | Type parameter constraint contravariance for override |
|   8 | SEM_15_09_03_008_PASS_override_with_object | compile-pass | Override compatibility with Object as supertype for all class types |
|   9 | SEM_15_09_03_100_FAIL_INCOMPATIBLE_OVERRIDE | compile-fail | 验证覆写签名不可兼容拒绝：逆变返回值 + 协变参数 |
|  10 | SEM_15_09_03_101_FAIL_contravariant_type_param_constraint | compile-fail | Derived class cannot have non-compatible constraints of type parameters (contravariant) |
|  11 | SEM_15_09_03_200_RUNTIME_COMPATIBLE_OVERRIDE | runtime | 验证兼容签名覆写运行时行为：基类引用调用派生类方法 |

## 15.9 Overriding（35）

| # | 文件 | 类型 | 测试目的 |
|---|------|------|---------|
|   1 | SEM_15_09_00_001_PASS_CLASS_method_return_covariance | compile-pass | 规范 15.9.3：重写方法的返回类型必须是被重写方法返回类型的子类型（协变） |
|   2 | SEM_15_09_00_002_PASS_exact_override | compile-pass | 完全相同签名重写。 |
|   3 | SEM_15_09_00_003_PASS_CLASS_method_parameter_contravariance | compile-pass | 规范 15.9.3：重写方法的每个参数类型必须是被重写方法对应参数类型的超类型（逆变） |
|   4 | SEM_15_09_00_004_PASS_return_covariance | compile-pass | 重写方法返回子类型。 |
|   5 | SEM_15_09_00_005_PASS_CLASS_override_access_modifier | compile-pass | 规范 15.9.1：重写方法的访问修饰符可以与父类方法相同，或将 protected 改为 public |
|   6 | SEM_15_09_00_006_PASS_parameter_contravariance | compile-pass | 重写方法参数使用父类型。 |
|   7 | SEM_15_09_00_007_PASS_CLASS_override_keyword | compile-pass | 规范 15.9.1：重写方法必须使用 override 关键字 |
|   8 | SEM_15_09_00_008_PASS_protected_to_public | compile-pass | 访问级别从 protected 放宽为 public。 |
|   9 | SEM_15_09_00_009_PASS_INTERFACE_default_method_override | compile-pass | 规范 15.9.2：接口中的默认方法可以被子接口或实现类重写 |
|  10 | SEM_15_09_00_010_PASS_interface_override | compile-pass | 接口方法重写兼容。 |
|  11 | SEM_15_09_00_011_PASS_CLASS_multiple_override | compile-pass | 规范 15.9.1：子类的一个方法可以重写超类中的多个方法 |
|  12 | SEM_15_09_00_012_PASS_one_method_overrides_multiple | compile-pass | 一个方法同时重写多个兼容方法。 |
|  13 | SEM_15_09_00_013_PASS_INTERFACE_override_compatible | compile-pass | 规范 15.9.3：接口方法重写的签名兼容性检查 |
|  14 | SEM_15_09_00_014_PASS_exact_class_override | compile-pass | (cross-language comparison) |
|  15 | SEM_15_09_00_015_PASS_subinterface_compatible_override | compile-pass | (cross-language comparison) |
|  16 | SEM_15_09_00_016_PASS_param_contravariant_override | compile-pass | (cross-language comparison) |
|  17 | SEM_15_09_00_017_PASS_one_method_overrides_multiple | compile-pass | (cross-language comparison) |
|  18 | SEM_15_09_00_018_PASS_SMART_FUNC_instanceof_narrowing | compile-pass | 函数体内 Base 值经过 instanceof Derived 显式缩窄后，允许按 Derived 使用。 |
|  19 | SEM_15_09_00_019_PASS_method_override | compile-pass | 规范 15.9：子类方法覆写基类方法 |
|  20 | SEM_15_09_00_100_FAIL_param_count_mismatch | compile-fail | 参数个数不一致。 |
|  21 | SEM_15_09_00_101_FAIL_param_wrong_direction | compile-fail | 参数 variance 方向错误。 |
|  22 | SEM_15_09_00_102_FAIL_return_wrong_direction | compile-fail | 返回父类型。 |
|  23 | SEM_15_09_00_103_FAIL_access_reduction | compile-fail | public 降为 protected/private。 |
|  24 | SEM_15_09_00_104_FAIL_private_override | compile-fail | 把父类 private 方法当作可重写方法。 |
|  25 | SEM_15_09_00_105_FAIL_erased_signature_conflict | compile-fail | 有效签名冲突但不满足重写兼容。 |
|  26 | SEM_15_09_00_106_FAIL_SMART_GLOBAL_global_base_member_without_narrow | compile-fail | 顶层/全局 Base 声明变量即使初始化为 Derived，未显式缩窄也不应访问 Derived 独有成员。 |
|  27 | SEM_15_09_00_107_FAIL_override_param_type_mismatch | compile-fail | 规范 15.9：覆写方法的参数类型必须与被覆写方法兼容 |
|  28 | SEM_15_09_00_108_FAIL_CLASS_parameter_covariance | compile-fail | 规范 15.9.3：重写方法的参数类型必须是被重写方法参数类型的超类型（不允许参数协变） |
|  29 | SEM_15_09_00_109_FAIL_CLASS_return_contravariance | compile-fail | 规范 15.9.3：重写方法的返回类型必须是被重写方法返回类型的子类型（不允许返回类型逆变） |
|  30 | SEM_15_09_00_110_FAIL_CLASS_multiple_override_same_method | compile-fail | 规范 15.9.1：如果子类的多个方法重写超类中的同一方法，则发生编译时错误 |
|  31 | SEM_15_09_00_200_RUNTIME_dynamic_override | runtime | 父类引用调用子类重写实现。 |
|  32 | SEM_15_09_00_201_RUNTIME_overload_plus_override | runtime | 先静态选择重载，再动态分派重写。 |
|  33 | SEM_15_09_00_202_RUNTIME_unoverridden_overload | runtime | 未重写的重载调用父类实现。 |
|  34 | SEM_15_09_00_203_RUNTIME_SMART_GLOBAL_overload_declared_base_top_level | runtime | 顶层/全局 Base receiver 保存 Derived 对象后调用 overload，应按 Base 声明类型解析。 |
|  35 | SEM_15_09_00_204_RUNTIME_overriding | runtime | 覆写运行时 |

---

---
## 汇总

| 主章节 | compile-pass | compile-fail | runtime | 合计 |
|--------|:-----------:|:-----------:|:-------:|:----:|
| 15.1 Semantic Essentials | 45 | 18 | 10 | 73 |
| 15.2 Subtyping | 69 | 56 | 11 | 136 |
| 15.3 Type Identity | 17 | 8 | 2 | 27 |
| 15.4 Assignability | 17 | 11 | 2 | 30 |
| 15.5 Invariance Covariance Contravariance | 13 | 9 | 2 | 24 |
| 15.6 Compatibility of Call Arguments | 15 | 13 | 6 | 34 |
| 15.7 Type Inference | 26 | 16 | 7 | 49 |
| 15.8 Smart Casts and Smart Types | 52 | 30 | 12 | 94 |
| 15.9 Overriding | 37 | 21 | 8 | 66 |
| 15.10 Overloading | 37 | 28 | 9 | 74 |
| 15.11 Overload Resolution | 62 | 40 | 49 | 151 |
| 15.12 Type Erasure | 17 | 15 | 6 | 38 |
| 15.13 Static Initialization | 10 | 7 | 13 | 30 |
| 15.14 Compatibility Features | 29 | 3 | 15 | 47 |
| **总计** | **446** | **275** | **152** | **873** |
