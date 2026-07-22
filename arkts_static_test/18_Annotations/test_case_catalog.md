# 18 Annotations Test Case Catalog

**总用例数：** 120 | **通过率：** 100% | **状态：** ✅ 全部通过

**测试环境：** ArkTS es2panda + ark (WSL Ubuntu-22.04)

---

## 用例清单

| ID | SubTopic | Type | Case File | Purpose | Expected | 实测结果 |
|---|---|---|---|---|---|---|
| ANN_18_01_001 | 18.1_Declaring_Annotations | compile-pass | ANN_18_01_001_PASS_EMPTY_ANNOTATION.ets | 验证最基本的空注解声明可通过编译 | compile-pass | ✅ |
| ANN_18_01_002 | 18.1_Declaring_Annotations | compile-pass | ANN_18_01_002_PASS_SINGLE_FIELD.ets | 验证含一个字段的注解声明可通过编译 | compile-pass | ✅ |
| ANN_18_01_003 | 18.1_Declaring_Annotations | compile-pass | ANN_18_01_003_PASS_MULTIPLE_FIELDS.ets | 验证含多个字段的注解声明可通过编译 | compile-pass | ✅ |
| ANN_18_01_004 | 18.1_Declaring_Annotations | compile-pass | ANN_18_01_004_PASS_FIELD_WITH_DEFAULT.ets | 验证带默认常量的注解字段声明可通过编译 | compile-pass | ✅ |
| ANN_18_01_005 | 18.1_Declaring_Annotations | compile-pass | ANN_18_01_005_PASS_EXPORTED_ANNOTATION.ets | 验证导出注解声明可通过编译 | compile-pass | ✅ |
| ANN_18_01_006 | 18.1_Declaring_Annotations | compile-fail | ANN_18_01_006_FAIL_ANNOTATION_AS_FIELD_TYPE.ets | 验证注解字段不能使用另一注解作为类型 | compile-fail | ✅ |
| ANN_18_01_007 | 18.1_Declaring_Annotations | compile-fail | ANN_18_01_007_FAIL_DUPLICATE_NAME_WITH_CLASS.ets | 验证注解名不能与类名重复 | compile-fail | ✅ |
| ANN_18_01_008 | 18.1_Declaring_Annotations | compile-fail | ANN_18_01_008_FAIL_TYPE_ALIAS_ON_ANNOTATION.ets | 验证注解不能作为类型别名定义 | compile-fail | ✅ |
| ANN_18_01_009 | 18.1_Declaring_Annotations | compile-fail | ANN_18_01_009_FAIL_IMPLEMENTS_ANNOTATION.ets | 验证类不能 implements 注解 | compile-fail | ✅ |
| ANN_18_01_010 | 18.1_Declaring_Annotations | compile-fail | ANN_18_01_010_FAIL_NON_CONST_INITIALIZER.ets | 验证注解字段默认值必须为常量表达式 | compile-fail | ✅ |
| ANN_18_01_011 | 18.1_Declaring_Annotations | compile-fail | ANN_18_01_011_FAIL_ANNOTATION_EXTENDS.ets | 验证注解不能使用 extends 继承 | compile-fail | ✅ |
| ANN_18_01_012 | 18.1_Declaring_Annotations | compile-fail | ANN_18_01_012_FAIL_LOCAL_ANNOTATION.ets | 验证注解不能在局部作用域定义 | compile-fail | ✅ |
| ANN_18_01_013 | 18.1_Declaring_Annotations | compile-fail | ANN_18_01_013_FAIL_DUPLICATE_NAME_WITH_FUNCTION.ets | 验证注解名不能与函数名重复 | compile-fail | ✅ |
| ANN_18_01_014 | 18.1_Declaring_Annotations | runtime | ANN_18_01_014_RUNTIME_BASIC_ANNOTATION_DECLARE.ets | 验证注解声明可在运行时正常加载和编译 | runtime | ✅ |
| ANN_18_01_1_001 | 18.1.1_Types_of_Annotation_Fields | compile-pass | ANN_18_01_1_001_PASS_STRING_FIELD.ets | 验证 string 类型是合法的注解字段类型 | compile-pass | ✅ |
| ANN_18_01_1_002 | 18.1.1_Types_of_Annotation_Fields | compile-pass | ANN_18_01_1_002_PASS_BOOLEAN_FIELD.ets | 验证 boolean 类型是合法的注解字段类型 | compile-pass | ✅ |
| ANN_18_01_1_003 | 18.1.1_Types_of_Annotation_Fields | compile-pass | ANN_18_01_1_003_PASS_INT_FIELD.ets | 验证 int 类型是合法的注解字段类型 | compile-pass | ✅ |
| ANN_18_01_1_004 | 18.1.1_Types_of_Annotation_Fields | compile-pass | ANN_18_01_1_004_PASS_DOUBLE_FIELD.ets | 验证 double 类型是合法的注解字段类型 | compile-pass | ✅ |
| ANN_18_01_1_005 | 18.1.1_Types_of_Annotation_Fields | compile-pass | ANN_18_01_1_005_PASS_FLOAT_FIELD.ets | 验证 float 类型是合法的注解字段类型 | compile-pass | ✅ |
| ANN_18_01_1_006 | 18.1.1_Types_of_Annotation_Fields | compile-pass | ANN_18_01_1_006_PASS_LONG_FIELD.ets | 验证 long 类型是合法的注解字段类型 | compile-pass | ✅ |
| ANN_18_01_1_007 | 18.1.1_Types_of_Annotation_Fields | compile-pass | ANN_18_01_1_007_PASS_SHORT_FIELD.ets | 验证 short 类型是合法的注解字段类型 | compile-pass | ✅ |
| ANN_18_01_1_008 | 18.1.1_Types_of_Annotation_Fields | compile-pass | ANN_18_01_1_008_PASS_BYTE_FIELD.ets | 验证 byte 类型是合法的注解字段类型 | compile-pass | ✅ |
| ANN_18_01_1_009 | 18.1.1_Types_of_Annotation_Fields | compile-pass | ANN_18_01_1_009_PASS_NUMBER_FIELD.ets | 验证 number 类型是合法的注解字段类型 | compile-pass | ✅ |
| ANN_18_01_1_010 | 18.1.1_Types_of_Annotation_Fields | compile-pass | ANN_18_01_1_010_PASS_ENUM_FIELD.ets | 验证枚举类型是合法的注解字段类型 | compile-pass | ✅ |
| ANN_18_01_1_011 | 18.1.1_Types_of_Annotation_Fields | compile-pass | ANN_18_01_1_011_PASS_STRING_ARRAY_FIELD.ets | 验证 string[] 数组类型是合法的注解字段类型 | compile-pass | ✅ |
| ANN_18_01_1_012 | 18.1.1_Types_of_Annotation_Fields | compile-pass | ANN_18_01_1_012_PASS_INT_ARRAY_FIELD.ets | 验证 int[] 数组类型是合法的注解字段类型 | compile-pass | ✅ |
| ANN_18_01_1_013 | 18.1.1_Types_of_Annotation_Fields | compile-pass | ANN_18_01_1_013_PASS_DOUBLE_ARRAY_FIELD.ets | 验证 double[] 数组类型是合法的注解字段类型 | compile-pass | ✅ |
| ANN_18_01_1_014 | 18.1.1_Types_of_Annotation_Fields | compile-pass | ANN_18_01_1_014_PASS_BOOLEAN_ARRAY_FIELD.ets | 验证 boolean[] 数组类型是合法的注解字段类型 | compile-pass | ✅ |
| ANN_18_01_1_015 | 18.1.1_Types_of_Annotation_Fields | compile-pass | ANN_18_01_1_015_PASS_STRING_2D_ARRAY_FIELD.ets | 验证 string[][] 多维数组类型是合法的注解字段类型 | compile-pass | ✅ |
| ANN_18_01_1_016 | 18.1.1_Types_of_Annotation_Fields | compile-pass | ANN_18_01_1_016_PASS_MIXED_VALID_FIELDS.ets | 验证多种合法字段类型组合使用可通过编译 | compile-pass | ✅ |
| ANN_18_01_1_017 | 18.1.1_Types_of_Annotation_Fields | compile-pass | ANN_18_01_1_017_PASS_ENUM_ARRAY_FIELD.ets | 验证枚举数组类型是合法的注解字段类型 | compile-pass | ✅ |
| ANN_18_01_1_018 | 18.1.1_Types_of_Annotation_Fields | compile-fail | ANN_18_01_1_018_FAIL_CLASS_FIELD_TYPE.ets | 验证自定义类不能作为注解字段类型 | compile-fail | ✅ |
| ANN_18_01_1_019 | 18.1.1_Types_of_Annotation_Fields | compile-fail | ANN_18_01_1_019_FAIL_INTERFACE_FIELD_TYPE.ets | 验证接口不能作为注解字段类型 | compile-fail | ✅ |
| ANN_18_01_1_020 | 18.1.1_Types_of_Annotation_Fields | compile-fail | ANN_18_01_1_020_FAIL_ANNOTATION_AS_FIELD.ets | 验证注解不能作为另一个注解的字段类型 | compile-fail | ✅ |
| ANN_18_01_1_021 | 18.1.1_Types_of_Annotation_Fields | compile-fail | ANN_18_01_1_021_FAIL_OBJECT_FIELD_TYPE.ets | 验证 Object 类型不能作为注解字段类型 | compile-fail | ✅ |
| ANN_18_01_1_022 | 18.1.1_Types_of_Annotation_Fields | compile-fail | ANN_18_01_1_022_FAIL_UNDEFINED_FIELD_TYPE.ets | 验证 void/undefined 不能作为注解字段类型 | compile-fail | ✅ |
| ANN_18_01_1_023 | 18.1.1_Types_of_Annotation_Fields | compile-fail | ANN_18_01_1_023_FAIL_UNION_FIELD_TYPE.ets | 验证联合类型不能作为注解字段类型 | compile-fail | ✅ |
| ANN_18_01_1_024 | 18.1.1_Types_of_Annotation_Fields | compile-fail | ANN_18_01_1_024_FAIL_FUNCTION_FIELD_TYPE.ets | 验证函数类型不能作为注解字段类型 | compile-fail | ✅ |
| ANN_18_01_1_025 | 18.1.1_Types_of_Annotation_Fields | compile-fail | ANN_18_01_1_025_FAIL_TYPE_ALIAS_REF_FIELD.ets | 验证类型别名不能间接引入非法注解字段类型 | compile-fail | ✅ |
| ANN_18_01_1_026 | 18.1.1_Types_of_Annotation_Fields | runtime | ANN_18_01_1_026_RUNTIME_VALID_FIELD_TYPES.ets | 验证合法注解字段类型可在运行时正常编译执行 | runtime | ✅ |
| ANN_18_02_001 | 18.2_Using_Annotations | compile-pass | ANN_18_02_001_PASS_NO_PARENS.ets | 验证无括号的注解用法 | compile-pass | ✅ |
| ANN_18_02_002 | 18.2_Using_Annotations | compile-pass | ANN_18_02_002_PASS_EMPTY_PARENS.ets | 验证空括号的注解用法 | compile-pass | ✅ |
| ANN_18_02_003 | 18.2_Using_Annotations | compile-pass | ANN_18_02_003_PASS_OBJECT_LITERAL.ets | 验证对象字面量形式的注解用法 | compile-pass | ✅ |
| ANN_18_02_004 | 18.2_Using_Annotations | compile-pass | ANN_18_02_004_PASS_MULTIPLE_ANNOTATIONS.ets | 验证多个注解可应用于同一声明 | compile-pass | ✅ |
| ANN_18_02_005 | 18.2_Using_Annotations | compile-pass | ANN_18_02_005_PASS_FIELD_ORDER_IRRELEVANT.ets | 验证注解字段顺序无关 | compile-pass | ✅ |
| ANN_18_02_006 | 18.2_Using_Annotations | compile-pass | ANN_18_02_006_PASS_ARRAY_FIELD.ets | 验证数组字段字面量赋值 | compile-pass | ✅ |
| ANN_18_02_007 | 18.2_Using_Annotations | compile-pass | ANN_18_02_007_PASS_DEFAULT_VALUE_USED.ets | 验证字段使用默认值时可以不传 | compile-pass | ✅ |
| ANN_18_02_008 | 18.2_Using_Annotations | compile-pass | ANN_18_02_008_PASS_ON_CLASS_METHOD.ets | 验证注解可应用于类方法 | compile-pass | ✅ |
| ANN_18_02_009 | 18.2_Using_Annotations | compile-pass | ANN_18_02_009_PASS_ON_CLASS_FIELD.ets | 验证注解可应用于类字段 | compile-pass | ✅ |
| ANN_18_02_010 | 18.2_Using_Annotations | compile-pass | ANN_18_02_010_PASS_ON_INTERFACE_METHOD.ets | 验证注解可应用于接口方法 | compile-pass | ✅ |
| ANN_18_02_011 | 18.2_Using_Annotations | compile-pass | ANN_18_02_011_PASS_ON_PARAMETER.ets | 验证注解可应用于参数 | compile-pass | ✅ |
| ANN_18_02_012 | 18.2_Using_Annotations | compile-pass | ANN_18_02_012_PASS_ON_LAMBDA.ets | 验证注解可应用于 lambda 表达式 | compile-pass | ✅ |
| ANN_18_02_013 | 18.2_Using_Annotations | compile-pass | ANN_18_02_013_PASS_ON_VARIABLE.ets | 验证注解可应用于变量声明 | compile-pass | ✅ |
| ANN_18_02_014 | 18.2_Using_Annotations | compile-pass | ANN_18_02_014_PASS_ON_GETTER.ets | 验证注解可应用于 getter | compile-pass | ✅ |
| ANN_18_02_015 | 18.2_Using_Annotations | compile-pass | ANN_18_02_015_PASS_ON_SETTER.ets | 验证注解可应用于 setter | compile-pass | ✅ |
| ANN_18_02_016 | 18.2_Using_Annotations | compile-pass | ANN_18_02_016_PASS_2D_ARRAY_FIELD.ets | 验证二维数组字面量赋值 | compile-pass | ✅ |
| ANN_18_02_017 | 18.2_Using_Annotations | compile-fail | ANN_18_02_017_FAIL_REPEATABLE_ANNOTATION.ets | 验证重复注解导致编译错误 | compile-fail | ✅ |
| ANN_18_02_018 | 18.2_Using_Annotations | compile-fail | ANN_18_02_018_FAIL_MISSING_REQUIRED_FIELD.ets | 验证缺少必填字段导致编译错误 | compile-fail | ✅ |
| ANN_18_02_019 | 18.2_Using_Annotations | compile-fail | ANN_18_02_019_FAIL_NON_CONST_EXPRESSION.ets | 验证注解字段值必须为常量表达式 | compile-fail | ✅ |
| ANN_18_02_020 | 18.2_Using_Annotations | compile-fail | ANN_18_02_020_FAIL_WRONG_TARGET_FUNCTION.ets | 验证注解不能用于函数声明的错误位置 | compile-fail | ✅ |
| ANN_18_02_021 | 18.2_Using_Annotations | compile-fail | ANN_18_02_021_FAIL_OVERRIDDEN_FIELD.ets | 验证注解不能用于 override 字段 | compile-fail | ✅ |
| ANN_18_02_022 | 18.2_Using_Annotations | compile-fail | ANN_18_02_022_FAIL_SPACE_BEFORE_NAME.ets | 验证 @ 和名称之间不允许空格 | compile-fail | ✅ |
| ANN_18_02_023 | 18.2_Using_Annotations | runtime | ANN_18_02_023_RUNTIME_ANNOTATION_USAGE.ets | 验证注解使用可在运行时正常编译执行 | runtime | ✅ |
| ANN_18_02_1_001 | 18.2.1_Using_Single_Field_Annotations | compile-pass | ANN_18_02_1_001_PASS_SHORT_STRING.ets | 验证单字段注解简写形式（string 值） | compile-pass | ✅ |
| ANN_18_02_1_002 | 18.2.1_Using_Single_Field_Annotations | compile-pass | ANN_18_02_1_002_PASS_SHORT_INT.ets | 验证单字段注解简写形式（int 值） | compile-pass | ✅ |
| ANN_18_02_1_003 | 18.2.1_Using_Single_Field_Annotations | compile-pass | ANN_18_02_1_003_PASS_SHORT_BOOLEAN.ets | 验证单字段注解简写形式（boolean 值） | compile-pass | ✅ |
| ANN_18_02_1_004 | 18.2.1_Using_Single_Field_Annotations | compile-pass | ANN_18_02_1_004_PASS_SHORT_ENUM.ets | 验证单字段注解简写形式（enum 值） | compile-pass | ✅ |
| ANN_18_02_1_005 | 18.2.1_Using_Single_Field_Annotations | compile-pass | ANN_18_02_1_005_PASS_LONG_FORM_EQUIVALENT.ets | 验证单字段注解完整对象字面量形式 | compile-pass | ✅ |
| ANN_18_02_1_006 | 18.2.1_Using_Single_Field_Annotations | compile-pass | ANN_18_02_1_006_PASS_SHORT_ARRAY.ets | 验证单字段数组简写形式 | compile-pass | ✅ |
| ANN_18_02_1_007 | 18.2.1_Using_Single_Field_Annotations | compile-pass | ANN_18_02_1_007_PASS_MULTIPLE_SINGLE_FIELD.ets | 验证多个单字段注解可同时使用 | compile-pass | ✅ |
| ANN_18_02_1_008 | 18.2.1_Using_Single_Field_Annotations | compile-pass | ANN_18_02_1_008_PASS_SHORT_DEFAULT_VALUE.ets | 验证单字段有默认值时简写或省略均可 | compile-pass | ✅ |
| ANN_18_02_1_009 | 18.2.1_Using_Single_Field_Annotations | compile-fail | ANN_18_02_1_009_FAIL_SHORT_ON_MULTI_FIELD.ets | 验证多字段注解不能使用简写形式 | compile-fail | ✅ |
| ANN_18_02_1_010 | 18.2.1_Using_Single_Field_Annotations | compile-fail | ANN_18_02_1_010_FAIL_SHORT_NON_CONST.ets | 验证简写形式中值必须为常量表达式 | compile-fail | ✅ |
| ANN_18_02_1_011 | 18.2.1_Using_Single_Field_Annotations | runtime | ANN_18_02_1_011_RUNTIME_SINGLE_FIELD.ets | 验证单字段注解在运行时正常编译执行 | runtime | ✅ |
| ANN_18_03_001 | 18.3_Exporting_and_Importing_Annotations | compile-pass | ANN_18_03_001_PASS_QUALIFIED_IMPORT.ets | 验证导出注解+限定名导入使用 | compile-pass | ✅ |
| ANN_18_03_002 | 18.3_Exporting_and_Importing_Annotations | compile-pass | ANN_18_03_002_PASS_UNQUALIFIED_IMPORT.ets | 验证导出注解+非限定名导入使用 | compile-pass | ✅ |
| ANN_18_03_003 | 18.3_Exporting_and_Importing_Annotations | compile-pass | ANN_18_03_003_PASS_IMPORT_WITH_FIELDS.ets | 验证导入的注解带字段值使用 | compile-pass | ✅ |
| ANN_18_03_004 | 18.3_Exporting_and_Importing_Annotations | compile-fail | ANN_18_03_004_FAIL_IMPORT_TYPE.ets | 验证 import type 不能用于导入注解 | compile-fail | ✅ |
| ANN_18_03_005 | 18.3_Exporting_and_Importing_Annotations | compile-fail | ANN_18_03_005_FAIL_RENAME_IMPORT.ets | 验证 import 重命名注解导致编译错误 | compile-fail | ✅ |
| ANN_18_03_006 | 18.3_Exporting_and_Importing_Annotations | compile-fail | ANN_18_03_006_FAIL_EXPORT_DEFAULT.ets | 验证 export default @interface 导致编译错误 | compile-fail | ✅ |
| ANN_18_03_007 | 18.3_Exporting_and_Importing_Annotations | compile-fail | ANN_18_03_007_FAIL_DEFAULT_IMPORT.ets | 验证 import default 导入注解导致编译错误 | compile-fail | ✅ |
| ANN_18_03_008 | 18.3_Exporting_and_Importing_Annotations | runtime | ANN_18_03_008_RUNTIME_EXPORTED_ANNOTATION.ets | 验证导出注解可在运行时正常使用 | runtime | ✅ |
| ANN_18_04_001 | 18.4_Ambient_Annotations | compile-pass | ANN_18_04_001_PASS_BASIC_DECLARE.ets | 验证基本的 ambient annotation 声明 | compile-pass | ✅ |
| ANN_18_04_002 | 18.4_Ambient_Annotations | compile-pass | ANN_18_04_002_PASS_EXPORT_DECLARE.ets | 验证 export declare @interface 声明 | compile-pass | ✅ |
| ANN_18_04_003 | 18.4_Ambient_Annotations | compile-pass | ANN_18_04_003_PASS_DECLARE_WITH_FIELDS.ets | 验证带字段的 ambient annotation 声明 | compile-pass | ✅ |
| ANN_18_04_004 | 18.4_Ambient_Annotations | compile-fail | ANN_18_04_004_FAIL_AMBIENT_MISMATCH_DEFAULT.ets | 验证 ambient 与实现字段初始化不一致 | compile-fail | ✅ |
| ANN_18_04_005 | 18.4_Ambient_Annotations | compile-fail | ANN_18_04_005_FAIL_AMBIENT_MISMATCH_TYPE.ets | 验证 ambient 与实现字段类型不一致 | compile-fail | ✅ |
| ANN_18_04_006 | 18.4_Ambient_Annotations | compile-fail | ANN_18_04_006_FAIL_AMBIENT_MISMATCH_FIELD_MISSING.ets | 验证 ambient 与实现字段数量不一致 | compile-fail | ✅ |
| ANN_18_04_007 | 18.4_Ambient_Annotations | runtime | ANN_18_04_007_RUNTIME_AMBIENT.ets | 验证 ambient annotation 运行时编译执行 | runtime | ✅ |
| ANN_18_05_001 | 18.5_Standard_Annotations | compile-pass | ANN_18_05_001_PASS_RETENTION_META.ets | 验证 @Retention 作为 meta-annotation | compile-pass | ✅ |
| ANN_18_05_002 | 18.5_Standard_Annotations | compile-pass | ANN_18_05_002_PASS_TARGET_META.ets | 验证 @Target 作为 meta-annotation | compile-pass | ✅ |
| ANN_18_05_003 | 18.5_Standard_Annotations | compile-pass | ANN_18_05_003_PASS_BOTH_META.ets | 验证 @Retention 和 @Target 同时使用 | compile-pass | ✅ |
| ANN_18_05_004 | 18.5_Standard_Annotations | compile-fail | ANN_18_05_004_FAIL_RETENTION_ON_CLASS.ets | 验证 @Retention 不能用于非注解声明 | compile-fail | ✅ |
| ANN_18_05_005 | 18.5_Standard_Annotations | compile-fail | ANN_18_05_005_FAIL_TARGET_ON_CLASS.ets | 验证 @Target 不能用于非注解声明 | compile-fail | ✅ |
| ANN_18_05_006 | 18.5_Standard_Annotations | compile-fail | ANN_18_05_006_FAIL_RETENTION_INVALID_POLICY.ets | 验证 @Retention 无效策略值 | compile-fail | ✅ |
| ANN_18_05_007 | 18.5_Standard_Annotations | runtime | ANN_18_05_007_RUNTIME_STANDARD_ANNO.ets | 验证标准注解运行时编译执行 | runtime | ✅ |
| ANN_18_05_1_001 | 18.5.1_Retention_Annotation | compile-pass | ANN_18_05_1_001_PASS_SOURCE_SHORT.ets | 验证 @Retention("SOURCE") 简写 | compile-pass | ✅ |
| ANN_18_05_1_002 | 18.5.1_Retention_Annotation | compile-pass | ANN_18_05_1_002_PASS_BYTECODE_SHORT.ets | 验证 @Retention("BYTECODE") 简写 | compile-pass | ✅ |
| ANN_18_05_1_003 | 18.5.1_Retention_Annotation | compile-pass | ANN_18_05_1_003_PASS_RUNTIME_SHORT.ets | 验证 @Retention("RUNTIME") 简写 | compile-pass | ✅ |
| ANN_18_05_1_004 | 18.5.1_Retention_Annotation | compile-pass | ANN_18_05_1_004_PASS_RUNTIME_LONG.ets | 验证 @Retention({policy: "RUNTIME"}) 完整形式 | compile-pass | ✅ |
| ANN_18_05_1_005 | 18.5.1_Retention_Annotation | compile-pass | ANN_18_05_1_005_PASS_DEFAULT_BYTECODE.ets | 验证默认策略为 BYTECODE | compile-pass | ✅ |
| ANN_18_05_1_006 | 18.5.1_Retention_Annotation | compile-fail | ANN_18_05_1_006_FAIL_ON_CLASS.ets | 验证 @Retention 不能用于非注解声明 | compile-fail | ✅ |
| ANN_18_05_1_007 | 18.5.1_Retention_Annotation | compile-fail | ANN_18_05_1_007_FAIL_INVALID_POLICY.ets | 验证无效 retention 策略值 | compile-fail | ✅ |
| ANN_18_05_1_008 | 18.5.1_Retention_Annotation | compile-fail | ANN_18_05_1_008_FAIL_EMPTY_POLICY.ets | 验证空策略字符串 | compile-fail | ✅ |
| ANN_18_05_1_009 | 18.5.1_Retention_Annotation | runtime | ANN_18_05_1_009_RUNTIME_RETENTION.ets | 验证 @Retention("RUNTIME") 运行时可用 | runtime | ✅ |
| ANN_18_05_2_001 | 18.5.2_Target_Annotation | compile-pass | ANN_18_05_2_001_PASS_SINGLE_TARGET.ets | 验证 @Target 单目标限制 | compile-pass | ✅ |
| ANN_18_05_2_002 | 18.5.2_Target_Annotation | compile-pass | ANN_18_05_2_002_PASS_MULTI_TARGET.ets | 验证 @Target 多目标限制 | compile-pass | ✅ |
| ANN_18_05_2_003 | 18.5.2_Target_Annotation | compile-pass | ANN_18_05_2_003_PASS_TARGET_FIELD.ets | 验证 @Target CLASS_FIELD | compile-pass | ✅ |
| ANN_18_05_2_004 | 18.5.2_Target_Annotation | compile-pass | ANN_18_05_2_004_PASS_TARGET_PARAMETER.ets | 验证 @Target PARAMETER | compile-pass | ✅ |
| ANN_18_05_2_005 | 18.5.2_Target_Annotation | compile-pass | ANN_18_05_2_005_PASS_NO_TARGET_UNRESTRICTED.ets | 验证无 @Target 时不受限 | compile-pass | ✅ |
| ANN_18_05_2_006 | 18.5.2_Target_Annotation | compile-fail | ANN_18_05_2_006_FAIL_TARGET_ON_CLASS.ets | 验证 @Target 不能用于非注解声明 | compile-fail | ✅ |
| ANN_18_05_2_007 | 18.5.2_Target_Annotation | compile-fail | ANN_18_05_2_007_FAIL_OUTSIDE_TARGET.ets | 验证注解在限制上下文之外使用报错 | compile-fail | ✅ |
| ANN_18_05_2_008 | 18.5.2_Target_Annotation | compile-fail | ANN_18_05_2_008_FAIL_DUPLICATE_TARGET.ets | 验证 @Target 中重复值报错 | compile-fail | ✅ |
| ANN_18_05_2_009 | 18.5.2_Target_Annotation | runtime | ANN_18_05_2_009_RUNTIME_TARGET.ets | 验证 @Target 注解运行时编译执行 | runtime | ✅ |
| ANN_18_06_001 | 18.6_Runtime_Access_to_Annotations | compile-pass | ANN_18_06_001_PASS_RUNTIME_STRING_FIELD.ets | 验证 RUNTIME 注解含 string 字段可编译 | compile-pass | ✅ |
| ANN_18_06_002 | 18.6_Runtime_Access_to_Annotations | compile-pass | ANN_18_06_002_PASS_RUNTIME_MULTI_FIELDS.ets | 验证 RUNTIME 注解含多类型字段 | compile-pass | ✅ |
| ANN_18_06_003 | 18.6_Runtime_Access_to_Annotations | compile-pass | ANN_18_06_003_PASS_RUNTIME_ARRAY_FIELD.ets | 验证 RUNTIME 注解含数组字段 | compile-pass | ✅ |
| ANN_18_06_004 | 18.6_Runtime_Access_to_Annotations | compile-pass | ANN_18_06_004_PASS_BYTECODE_ANNOTATION.ets | 验证 BYTECODE 注解可编译 | compile-pass | ✅ |
| ANN_18_06_005 | 18.6_Runtime_Access_to_Annotations | compile-fail | ANN_18_06_005_FAIL_ANNOTATION_AS_TYPE.ets | 验证注解不能直接用作变量类型 | compile-fail | ✅ |
| ANN_18_06_006 | 18.6_Runtime_Access_to_Annotations | runtime | ANN_18_06_006_RUNTIME_RETENTION_ACCESS.ets | 验证 RUNTIME 保留注解编译并执行 | runtime | ✅ |

---

## 按子章节统计

| 子章节 | compile-pass | compile-fail | runtime | 合计 |
|--------|:-----------:|:-----------:|:-------:|:----:|
| 18.1_Declaring_Annotations | 5 | 8 | 1 | 14 |
| 18.1.1_Types_of_Annotation_Fields | 17 | 8 | 1 | 26 |
| 18.2_Using_Annotations | 16 | 6 | 1 | 23 |
| 18.2.1_Using_Single_Field_Annotations | 8 | 2 | 1 | 11 |
| 18.3_Exporting_and_Importing_Annotations | 3 | 4 | 1 | 8 |
| 18.4_Ambient_Annotations | 3 | 3 | 1 | 7 |
| 18.5_Standard_Annotations | 3 | 3 | 1 | 7 |
| 18.5.1_Retention_Annotation | 5 | 3 | 1 | 9 |
| 18.5.2_Target_Annotation | 5 | 3 | 1 | 9 |
| 18.6_Runtime_Access_to_Annotations | 4 | 1 | 1 | 6 |
| **总计** | **69** | **41** | **10** | **120** |

## 分类说明

| 类型 | 含义 |
|------|------|
| compile-pass | 期望编译通过，验证正向场景 |
| compile-fail | 期望编译报错，验证反向/错误场景 |
| runtime | 编译通过后实际在 ark VM 执行，验证运行时行为 |

## 更新记录

| 日期 | 变更 |
|------|------|
| 2026-06-27 | 初始创建，10 个子章节共 120 个测试用例全部完成 |
