# 09 类 - 测试用例目录

**生成日期：** 2026-06-23（2026-06-26 更新：9.7–9.10 自审修复）
**共计：** 387 个测试用例（130 compile-pass + 155 compile-fail + 102 runtime）
**覆盖子章节：** 33 个
**最后编译验证：** 2026-06-26，es2panda `--extension=ets`（Linux native）；9.7–9.10 四节 90 用例全量实测

## 按章节统计

| 章节 | compile-pass | compile-fail | runtime | 合计 |
|---|:---:|:---:|:---:|:---:|
| 9.1.1.Abstract_Classes | 4 | 5 | 3 | 12 |
| 9.1.Class_Declarations | 5 | 4 | 3 | 12 |
| 9.2.Class_Extension_Clause | 4 | 6 | 3 | 13 |
| 9.3.1.Implementing_Required_Interface_Properties | 7 | 7 | 3 | 17 |
| 9.3.2.Implementing_Optional_Interface_Properties | 5 | 1 | 3 | 9 |
| 9.3.Class_Implementation_Clause | 4 | 4 | 2 | 10 |
| 9.4.Class_Members | 5 | 3 | 2 | 10 |
| 9.5.1.Private_Access_Modifier | 3 | 4 | 2 | 9 |
| 9.5.2.Protected_Access_Modifier | 2 | 3 | 2 | 7 |
| 9.5.3.Public_Access_Modifier | 2 | 1 | 1 | 4 |
| 9.5.Access_Modifiers | 2 | 1 | 1 | 4 |
| 9.6.1.Static_and_Instance_Fields | 3 | 2 | 2 | 7 |
| 9.6.2.Readonly_Constant_Fields | 2 | 2 | 2 | 6 |
| 9.6.3.Optional_Fields | 2 | 1 | 2 | 5 |
| 9.6.4.Field_Initialization | 2 | 2 | 2 | 6 |
| 9.6.5.Fields_with_Late_Initialization | 2 | 5 | 2 | 9 |
| 9.6.6.Override_Fields | 4 | 6 | 2 | 12 |
| 9.6.Field_Declarations | 3 | 3 | 2 | 8 |
| 9.7.1.Static_Methods | 3 | 10 | 5 | 18 |
| 9.7.2.Instance_Methods | 7 | 2 | 3 | 12 |
| 9.7.3.Abstract_Methods | 4 | 8 | 5 | 17 |
| 9.7.4.Async_Methods | 6 | 9 | 6 | 21 |
| 9.7.5.Overriding_Methods | 4 | 2 | 3 | 9 |
| 9.7.6.Native_Methods | 2 | 1 | 0 | 3 |
| 9.7.7.Method_Body | 4 | 7 | 2 | 13 |
| 9.7.8.Methods_Returning_this | 2 | 3 | 3 | 8 |
| 9.7.Method_Declarations | 3 | 3 | 2 | 8 |
| 9.8.Class_Accessor_Declarations | 10 | 15 | 6 | 31 |
| 9.9.1.Constructor_Body | 3 | 9 | 6 | 18 |
| 9.9.2.Explicit_Constructor_Call | 2 | 6 | 1 | 9 |
| 9.9.3.Default_Constructor | 3 | 3 | 3 | 9 |
| 9.9.Constructor_Declaration | 4 | 3 | 3 | 10 |
| 9.10.Inheritance | 12 | 14 | 15 | 41 |
| **合计** | **131** | **154** | **102** | **387** |

---

## 9.1.1.Abstract_Classes（12 用例）

### compile-pass（4 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_01_013_PASS_ABSTRACT_CLASS_DECL | |
| 002 | CLS_09_01_014_PASS_ABSTRACT_CLASS_CONCRETE_METHOD | |
| 003 | CLS_09_01_015_PASS_ABSTRACT_SUBCLASS_EXTENDS_ABSTRACT | |
| 004 | CLS_09_01_016_PASS_NON_ABSTRACT_SUBCLASS | |

### compile-fail（5 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_01_017_FAIL_INSTANTIATE_ABSTRACT_CLASS | |
| 002 | CLS_09_01_018_FAIL_NON_ABSTRACT_WITH_ABSTRACT_METHOD | |
| 003 | CLS_09_01_019_FAIL_ABSTRACT_METHOD_FINAL | |
| 004 | CLS_09_01_020_FAIL_ABSTRACT_METHOD_OVERRIDE | |
| 005 | CLS_09_01_021_FAIL_NON_ABSTRACT_MISSING_IMPL | |

### runtime（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_01_022_RUNTIME_ABSTRACT_SUBCLASS_DISPATCH | |
| 002 | CLS_09_01_023_RUNTIME_ABSTRACT_CONSTRUCTOR_EXEC | |
| 003 | CLS_09_01_024_RUNTIME_MULTI_LEVEL_ABSTRACT | |

---

## 9.1.Class_Declarations（12 用例）

### compile-pass（5 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_01_001_PASS_EMPTY_CLASS | |
| 002 | CLS_09_01_002_PASS_CLASS_WITH_FIELDS | |
| 003 | CLS_09_01_003_PASS_CLASS_WITH_METHODS | |
| 004 | CLS_09_01_004_PASS_GENERIC_CLASS | |
| 005 | CLS_09_01_005_PASS_CLASS_WITH_CONSTRUCTOR | |

### compile-fail（4 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_01_006_FAIL_DUPLICATE_CLASS_MODIFIER | |
| 002 | CLS_09_01_007_FAIL_CLASS_EXTENDS_ITSELF | |
| 003 | CLS_09_01_008_FAIL_CLASS_NAME_KEYWORD | |
| 004 | CLS_09_01_009_FAIL_CLASS_EXTENDS_INTERFACE | |

### runtime（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_01_010_RUNTIME_CLASS_INSTANCE | |
| 002 | CLS_09_01_011_RUNTIME_GENERIC_CLASS_INSTANCE | |
| 003 | CLS_09_01_012_RUNTIME_CLASS_METHOD_CALL | |

---

## 9.2.Class_Extension_Clause（13 用例）

### compile-pass（4 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_02_001_PASS_EXTENDS_CLASS | |
| 002 | CLS_09_02_002_PASS_MULTI_LEVEL_EXTENDS | |
| 003 | CLS_09_02_003_PASS_NO_EXTENDS_IMPLICIT_OBJECT | |
| 004 | CLS_09_02_004_PASS_EXTENDS_ACCESSIBLE_CLASS | |

### compile-fail（6 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_02_005_FAIL_EXTENDS_INTERFACE | |
| 002 | CLS_09_02_006_FAIL_EXTENDS_ENUM | |
| 003 | CLS_09_02_007_FAIL_EXTENDS_CYCLE | |
| 004 | CLS_09_02_008_FAIL_EXTENDS_INACCESSIBLE | |
| 005 | CLS_09_02_009_FAIL_EXTENDS_OBJECT_EXPLICIT | |
| 006 | CLS_09_02_013_FAIL_EXTENDS_UNION_TYPE | |

### runtime（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_02_010_RUNTIME_INHERIT_CHAIN | |
| 002 | CLS_09_02_011_RUNTIME_INSTANCEOF_OBJECT | |
| 003 | CLS_09_02_012_RUNTIME_INHERIT_METHOD_CALL | |

---

## 9.3.1.Implementing_Required_Interface_Properties（17 用例）

### compile-pass（7 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_03_1_001_PASS_FIELD_IMPL_INTERFACE_PROPERTY | |
| 002 | CLS_09_03_1_002_PASS_READONLY_FIELD_IMPL_READONLY | |
| 003 | CLS_09_03_1_003_PASS_GETTER_SETTER_IMPL_PROPERTY | |
| 004 | CLS_09_03_1_004_PASS_FIELD_IMPL_READONLY_PROPERTY | |
| 005 | CLS_09_03_1_005_PASS_GETTER_IMPL_READONLY_PROPERTY | |
| 006 | CLS_09_03_1_006_PASS_GETTER_IMPL_INTERFACE_GETTER | |
| 007 | CLS_09_03_1_017_PASS_ACCESSOR_IMPL_DIFF_TYPE_PROPERTY | |

### compile-fail（7 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_03_1_007_FAIL_READONLY_IMPL_WRITEABLE | |
| 002 | CLS_09_03_1_008_FAIL_GETTER_ONLY_IMPL_WRITEABLE | |
| 003 | CLS_09_03_1_009_FAIL_SETTER_ONLY_IMPL_WRITEABLE | |
| 004 | CLS_09_03_1_010_FAIL_NO_IMPL_REQUIRED_PROPERTY | |
| 005 | CLS_09_03_1_011_FAIL_OVERRIDE_FIELD_BY_ACCESSOR | |
| 006 | CLS_09_03_1_015_FAIL_SETTER_ONLY_IMPL_READONLY | |
| 007 | CLS_09_03_1_016_FAIL_FIELD_IMPL_DIFF_TYPE_PROPERTY | |

### runtime（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_03_1_012_RUNTIME_FIELD_IMPL_PROPERTY | |
| 002 | CLS_09_03_1_013_RUNTIME_INTERFACE_REF_ACCESS | |
| 003 | CLS_09_03_1_014_RUNTIME_READONLY_IMPL | |

---

## 9.3.2.Implementing_Optional_Interface_Properties（9 用例）

### compile-pass（5 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_03_2_001_PASS_NO_IMPL_OPTIONAL | |
| 002 | CLS_09_03_2_002_PASS_OPTIONAL_FIELD_IMPL | |
| 003 | CLS_09_03_2_003_PASS_ACCESSOR_IMPL_OPTIONAL | |
| 004 | CLS_09_03_2_008_PASS_GETTER_ONLY_IMPL_OPTIONAL | |
| 005 | CLS_09_03_2_009_PASS_SETTER_ONLY_IMPL_OPTIONAL | |

### compile-fail（1 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_03_2_004_FAIL_NON_OPTIONAL_IMPL_OPTIONAL | |

### runtime（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_03_2_005_RUNTIME_OPTIONAL_FIELD_ACCESS | |
| 002 | CLS_09_03_2_006_RUNTIME_DEFAULT_ACCESSOR_UNDEFINED | |
| 003 | CLS_09_03_2_007_RUNTIME_OPTIONAL_PROPERTY_SET_ERROR | |

---

## 9.3.Class_Implementation_Clause（10 用例）

### compile-pass（4 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_03_001_PASS_IMPLEMENTS_SINGLE_INTERFACE | |
| 002 | CLS_09_03_002_PASS_IMPLEMENTS_MULTI_INTERFACE | |
| 003 | CLS_09_03_003_PASS_IMPLEMENTS_ALL_METHODS | |
| 004 | CLS_09_03_004_PASS_REPEATED_INTERFACE_IGNORED | |

### compile-fail（4 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_03_005_FAIL_INACCESSIBLE_INTERFACE | |
| 002 | CLS_09_03_006_FAIL_SAME_GENERIC_DIFF_INSTANTIATION | |
| 003 | CLS_09_03_007_FAIL_FIELD_METHOD_NAME_CONFLICT | |
| 004 | CLS_09_03_008_FAIL_NOT_IMPLEMENTED_INTERFACE_METHOD | |

### runtime（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_03_009_RUNTIME_INTERFACE_DISPATCH | |
| 002 | CLS_09_03_010_RUNTIME_MULTI_INTERFACE_CALL | |

---

## 9.4.Class_Members（10 用例）

### compile-pass（5 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_04_001_PASS_STATIC_INSTANCE_SAME_NAME | |
| 002 | CLS_09_04_002_PASS_CLASS_WITH_ALL_MEMBER_TYPES | |
| 003 | CLS_09_04_003_PASS_INHERIT_PUBLIC_PROTECTED | |
| 004 | CLS_09_04_009_PASS_STATIC_INIT_BLOCK | |
| 005 | CLS_09_04_010_PASS_METHOD_OVERLOAD | |

### compile-fail（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_04_004_FAIL_FIELD_METHOD_SAME_NAME | |
| 002 | CLS_09_04_005_FAIL_FIELD_FIELD_SAME_NAME | |
| 003 | CLS_09_04_006_FAIL_METHOD_METHOD_SAME_NAME | |

### runtime（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_04_007_RUNTIME_STATIC_INSTANCE_DISTINCT | |
| 002 | CLS_09_04_008_RUNTIME_MEMBER_ACCESS | |

---

## 9.5.1.Private_Access_Modifier（9 用例）

### compile-pass（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_05_1_001_PASS_PRIVATE_ACCESS_IN_CLASS | |
| 002 | CLS_09_05_1_002_PASS_SUBCLASS_REUSE_PRIVATE_NAME | |
| 003 | CLS_09_05_1_003_PASS_PRIVATE_CONSTRUCTOR_IN_CLASS | |

### compile-fail（4 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_05_1_004_FAIL_PRIVATE_FIELD_OUTSIDE | |
| 002 | CLS_09_05_1_005_FAIL_PRIVATE_METHOD_OUTSIDE | |
| 003 | CLS_09_05_1_006_FAIL_PRIVATE_METHOD_IN_SUBCLASS | |
| 004 | CLS_09_05_1_007_FAIL_PRIVATE_FIELD_IN_SUBCLASS | |

### runtime（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_05_1_008_RUNTIME_PRIVATE_ACCESS_IN_CLASS | |
| 002 | CLS_09_05_1_009_RUNTIME_SUBCLASS_REUSE_NAME | |

---

## 9.5.2.Protected_Access_Modifier（7 用例）

### compile-pass（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_05_2_001_PASS_PROTECTED_ACCESS_IN_CLASS | |
| 002 | CLS_09_05_2_002_PASS_PROTECTED_ACCESS_IN_SUBCLASS | |

### compile-fail（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_05_2_003_FAIL_PROTECTED_ACCESS_OUTSIDE | |
| 002 | CLS_09_05_2_004_FAIL_PROTECTED_FIELD_OUTSIDE | |
| 003 | CLS_09_05_2_007_FAIL_PROTECTED_CTOR_INSTANTIATION | |

### runtime（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_05_2_005_RUNTIME_PROTECTED_IN_SUBCLASS | |
| 002 | CLS_09_05_2_006_RUNTIME_PROTECTED_METHOD_DISPATCH | |

---

## 9.5.3.Public_Access_Modifier（4 用例）

### compile-pass（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_05_3_001_PASS_PUBLIC_ACCESS_EVERYWHERE | |
| 002 | CLS_09_05_3_002_PASS_IMPLICIT_PUBLIC | |

### compile-fail（1 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_05_3_004_FAIL_PUBLIC_MEMBER_INACCESSIBLE_TYPE | |

### runtime（1 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_05_3_003_RUNTIME_PUBLIC_ACCESS | |

---

## 9.5.Access_Modifiers（4 用例）

### compile-pass（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_05_001_PASS_DEFAULT_PUBLIC | |
| 002 | CLS_09_05_002_PASS_ALL_MODIFIER_COMBOS | |

### compile-fail（1 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_05_003_FAIL_PRIVATE_ACCESS_OUTSIDE | |

### runtime（1 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_05_004_RUNTIME_PUBLIC_ACCESS | |

---

## 9.6.1.Static_and_Instance_Fields（7 用例）

### compile-pass（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_1_001_PASS_STATIC_FIELD_BASIC | |
| 002 | CLS_09_06_1_002_PASS_INSTANCE_FIELD_BASIC | |
| 003 | CLS_09_06_1_003_PASS_STATIC_FIELD_ACCESS_BY_CLASSNAME | |

### compile-fail（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_1_004_FAIL_STATIC_FIELD_GENERIC_PARAM | |
| 002 | CLS_09_06_1_005_FAIL_INSTANCE_ACCESS_STATIC | |

### runtime（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_1_006_RUNTIME_STATIC_FIELD_SHARED | |
| 002 | CLS_09_06_1_007_RUNTIME_INSTANCE_FIELD_PER_OBJ | |

---

## 9.6.2.Readonly_Constant_Fields（6 用例）

### compile-pass（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_2_001_PASS_READONLY_FIELD | |
| 002 | CLS_09_06_2_002_PASS_STATIC_READONLY | |

### compile-fail（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_2_003_FAIL_READONLY_REASSIGN | |
| 002 | CLS_09_06_2_004_FAIL_STATIC_READONLY_REASSIGN | |

### runtime（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_2_005_RUNTIME_READONLY_ACCESS | |
| 002 | CLS_09_06_2_006_RUNTIME_READONLY_INIT_IN_CTOR | |

---

## 9.6.3.Optional_Fields（5 用例）

### compile-pass（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_3_001_PASS_OPTIONAL_FIELD_NO_INIT | |
| 002 | CLS_09_06_3_002_PASS_OPTIONAL_FIELD_WITH_INIT | |

### compile-fail（1 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_3_003_FAIL_OPTIONAL_ASSIGN_TO_NONNULLISH | |

### runtime（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_3_004_RUNTIME_OPTIONAL_DEFAULT_UNDEFINED | |
| 002 | CLS_09_06_3_005_RUNTIME_OPTIONAL_WITH_VALUE | |

---

## 9.6.4.Field_Initialization（6 用例）

### compile-pass（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_4_001_PASS_FIELD_INITIALIZER_EXPR | |
| 002 | CLS_09_06_4_002_PASS_FIELD_DEFAULT_VALUE | |

### compile-fail（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_4_003_FAIL_FIELD_THIS_INITIALIZER | |
| 002 | CLS_09_06_4_006_FAIL_SUPER_IN_INITIALIZER | |

### runtime（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_4_004_RUNTIME_FIELD_INIT_ORDER | |
| 002 | CLS_09_06_4_005_RUNTIME_INITIALIZER_EVAL | |

---

## 9.6.5.Fields_with_Late_Initialization（9 用例）

### compile-pass（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_5_001_PASS_LATE_INIT_FIELD | |
| 002 | CLS_09_06_5_002_PASS_LATE_INIT_ASSIGN_THEN_READ | |

### compile-fail（5 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_5_003_FAIL_LATE_INIT_STATIC | |
| 002 | CLS_09_06_5_004_FAIL_LATE_INIT_READONLY | |
| 003 | CLS_09_06_5_005_FAIL_LATE_INIT_OPTIONAL | |
| 004 | CLS_09_06_5_006_FAIL_LATE_INIT_WITH_INITIALIZER | |
| 005 | CLS_09_06_5_009_FAIL_LATE_INIT_NULLISH_TYPE | |

### runtime（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_5_007_RUNTIME_LATE_INIT_ASSIGN_READ | |
| 002 | CLS_09_06_5_008_RUNTIME_LATE_INIT_UNINIT_ERROR | |

---

## 9.6.6.Override_Fields（12 用例）

### compile-pass（4 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_6_001_PASS_OVERRIDE_SAME_TYPE_FIELD | |
| 002 | CLS_09_06_6_002_PASS_OVERRIDE_FIELD_INITIALIZER | |
| 003 | CLS_09_06_6_003_PASS_OVERRIDE_FIELD_IN_CTOR | |
| 004 | CLS_09_06_6_012_PASS_GENERIC_OVERRIDE_FIELD_TYPE | |

### compile-fail（6 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_6_004_FAIL_OVERRIDE_FIELD_TYPE_MISMATCH | |
| 002 | CLS_09_06_6_005_FAIL_OVERRIDE_FIELD_ACCESS_MISMATCH | |
| 003 | CLS_09_06_6_006_FAIL_OVERRIDE_STATIC_FIELD | |
| 004 | CLS_09_06_6_007_FAIL_OVERRIDE_NO_BASE_FIELD | |
| 005 | CLS_09_06_6_010_FAIL_OVERRIDE_READONLY_ON_NON_READONLY | |
| 006 | CLS_09_06_6_011_FAIL_OVERRIDE_FIELD_COVERS_ACCESSOR | |

### runtime（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_6_008_RUNTIME_OVERRIDE_FIELD_VALUE | |
| 002 | CLS_09_06_6_009_RUNTIME_OVERRIDE_FIELD_INIT_ORDER | |

---

## 9.6.Field_Declarations（8 用例）

### compile-pass（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_0001_PASS_FIELD_BASIC | |
| 002 | CLS_09_06_0002_PASS_FIELD_INITIALIZER | |
| 003 | CLS_09_06_0003_PASS_STATIC_INSTANCE_FIELD | |

### compile-fail（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_0004_FAIL_DUPLICATE_FIELD_MODIFIER | |
| 002 | CLS_09_06_0005_FAIL_FIELD_METHOD_SAME_NAME | |
| 003 | CLS_09_06_0006_FAIL_FIELD_IMPL_TYPE_MISMATCH | |

### runtime（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_06_0007_RUNTIME_FIELD_ACCESS | |
| 002 | CLS_09_06_0008_RUNTIME_FIELD_INITIALIZER_EXEC | |

---

## 9.7.1.Static_Methods（18 用例）

### compile-pass（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_001_PASS_STATIC_METHOD_BASIC | |
| 002 | CLS_09_07_004_PASS_STATIC_METHOD_ACCESS_PROTECTED_PRIVATE | |
| 003 | CLS_09_07_040_PASS_STATIC_MULTI_PARAM | |

### compile-fail（10 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_002_FAIL_STATIC_ABSTRACT_THIS | |
| 002 | CLS_09_07_005_FAIL_STATIC_METHOD_THIS_KEYWORD | |
| 003 | CLS_09_07_006_FAIL_STATIC_METHOD_SUPER_KEYWORD | |
| 004 | CLS_09_07_007_FAIL_STATIC_METHOD_TYPE_PARAMETER | |
| 005 | CLS_09_07_009_FAIL_STATIC_METHOD_OVERRIDE_MODIFIER | |
| 006 | CLS_09_07_010_FAIL_STATIC_METHOD_CALLED_ON_INSTANCE | |
| 007 | CLS_09_07_017_FAIL_STATIC_OVERRIDE | |
| 008 | CLS_09_07_022_FAIL_STATIC_WITH_ABSTRACT | |
| 009 | CLS_09_07_028_FAIL_STATIC_THIS | |
| 010 | CLS_09_07_029_FAIL_STATIC_SUPER | |

### runtime（5 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_003_RUNTIME_STATIC_METHOD_CALL | |
| 002 | CLS_09_07_008_RUNTIME_STATIC_METHOD_NOT_INHERITED | |
| 003 | CLS_09_07_021_RUNTIME_STATIC_ACCESS_PROTECTED | |
| 004 | CLS_09_07_038_RUNTIME_STATIC_FACTORY | |
| 005 | CLS_09_07_041_RUNTIME_STATIC_CALC | |

---

## 9.7.2.Instance_Methods（12 用例）

### compile-pass（7 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_004_PASS_INSTANCE_METHOD_BASIC | |
| 002 | CLS_09_07_015_PASS_INSTANCE_METHOD_THIS_FIELDS | |
| 003 | CLS_09_07_016_PASS_INSTANCE_METHOD_INTERFACE_IMPL | |
| 004 | CLS_09_07_018_PASS_INSTANCE_METHOD_COMPLEX_PARAMS | |
| 005 | CLS_09_07_018_PASS_INSTANCE_OVERRIDE_INTERFACE | |
| 006 | CLS_09_07_019_PASS_INSTANCE_METHOD_PARAM_SHADOW | |
| 007 | CLS_09_07_030_PASS_INSTANCE_ACCESS_THIS | |

### compile-fail（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_020_FAIL_INSTANCE_METHOD_DUP_SIG | |
| 002 | CLS_09_07_048_FAIL_METHOD_NAME_CONFLICT | |

### runtime（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_017_RUNTIME_INSTANCE_METHOD_CALLS | |
| 002 | CLS_09_07_034_RUNTIME_INSTANCE_THIS_FIELD | |
| 003 | CLS_09_07_049_RUNTIME_OVERRIDE_CHAIN | |

---

## 9.7.3.Abstract_Methods（17 用例）

### compile-pass（4 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_005_PASS_ABSTRACT_METHOD_IMPL | |
| 002 | CLS_09_07_020_PASS_ABSTRACT_OVERRIDE_NONABSTRACT | |
| 003 | CLS_09_07_021_PASS_ABSTRACT_OVERRIDE_INTERFACE | |
| 004 | CLS_09_07_022_PASS_ABSTRACT_OVERRIDE_ABSTRACT | |

### compile-fail（8 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_006_FAIL_ABSTRACT_PRIVATE_NONABSTRACT | |
| 002 | CLS_09_07_015_FAIL_ABSTRACT_STATIC | |
| 003 | CLS_09_07_016_FAIL_ABSTRACT_FINAL | |
| 004 | CLS_09_07_017_FAIL_ABSTRACT_NATIVE | |
| 005 | CLS_09_07_018_FAIL_ABSTRACT_ASYNC | |
| 006 | CLS_09_07_019_FAIL_ABSTRACT_NOT_IMPLEMENTED | |
| 007 | CLS_09_07_019_FAIL_ABSTRACT_STATIC | |
| 008 | CLS_09_07_039_FAIL_ABSTRACT_NATIVE | |

### runtime（5 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_020_RUNTIME_ABSTRACT_DISPATCH | |
| 002 | CLS_09_07_023_RUNTIME_ABSTRACT_DISPATCH | |
| 003 | CLS_09_07_024_RUNTIME_ABSTRACT_MULTILEVEL | |
| 004 | CLS_09_07_026_RUNTIME_ABSTRACT_OVERRIDE_NONABSTRACT | |
| 005 | CLS_09_07_035_RUNTIME_ABSTRACT_MULTI_IMPL | |

---

## 9.7.4.Async_Methods（21 用例）

### compile-pass（6 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_014_PASS_ASYNC_METHOD_BASIC | |
| 002 | CLS_09_07_042_PASS_ASYNC_RETURN_PROMISE | |
| 003 | CLS_09_07_045_PASS_ASYNC_STATIC | |
| 004 | CLS_09_07_046_PASS_ASYNC_RETURN_T | |
| 005 | CLS_09_07_048_PASS_ASYNC_VOID_RETURN | |
| 006 | CLS_09_07_060_PASS_ASYNC_FINAL_METHOD | |

### compile-fail（9 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_043_FAIL_ASYNC_ABSTRACT | |
| 002 | CLS_09_07_047_FAIL_ASYNC_WRONG_PROMISE_SIG | |
| 003 | CLS_09_07_049_FAIL_ASYNC_OVERLOAD | |
| 004 | CLS_09_07_050_FAIL_ASYNC_NON_PROMISE_RETURN | |
| 005 | CLS_09_07_051_FAIL_ASYNC_NATIVE | |
| 006 | CLS_09_07_052_FAIL_ASYNC_STATIC_FINAL | |
| 007 | CLS_09_07_053_FAIL_ASYNC_OVERRIDE_WRONG_SIG | |
| 008 | CLS_09_07_054_FAIL_ASYNC_NON_ABSTRACT_EMPTY_BODY | |
| 009 | CLS_09_07_061_FAIL_ASYNC_OVERRIDE_WITHOUT_ASYNC | |

### runtime（6 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_044_RUNTIME_ASYNC_CALL | |
| 002 | CLS_09_07_055_RUNTIME_ASYNC_AWAIT_PROMISE | |
| 003 | CLS_09_07_056_RUNTIME_ASYNC_STATIC_CALL | |
| 004 | CLS_09_07_057_RUNTIME_ASYNC_MULTIPLE_AWAITS | |
| 005 | CLS_09_07_058_RUNTIME_ASYNC_CHAIN | |
| 006 | CLS_09_07_059_RUNTIME_ASYNC_INSTANCE_METHOD | |

---

## 9.7.5.Overriding_Methods（9 用例）

### compile-pass（4 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_007_PASS_OVERRIDE_METHOD | |
| 002 | CLS_09_07_015_PASS_OVERRIDE_DIFFERENT_DEFAULT | |
| 003 | CLS_09_07_017_PASS_OVERRIDE_INTERFACE_DEFAULT | |
| 004 | CLS_09_07_018_PASS_OVERRIDE_COVARIANT_RETURN | |

### compile-fail（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_008_FAIL_OVERRIDE_NOTHING_STATIC | |
| 002 | CLS_09_07_016_FAIL_OVERRIDE_STATIC | |

### runtime（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_019_RUNTIME_OVERRIDE_BASE_REF | |
| 002 | CLS_09_07_020_RUNTIME_OVERRIDE_MULTILEVEL | |
| 003 | CLS_09_07_036_RUNTIME_OVERRIDE_DEFAULT_PARAM | |

---

## 9.7.6.Native_Methods（3 用例）

### compile-pass（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_045_PASS_NATIVE_DECLARATION | |
| 002 | CLS_09_07_046_PASS_NATIVE_STATIC | |

### compile-fail（1 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_013_FAIL_NATIVE_WITH_BODY | |

---

## 9.7.7.Method_Body（13 用例）

### compile-pass（4 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_010_PASS_METHOD_BODY_VALID | |
| 002 | CLS_09_07_019_PASS_IF_ELSE_BOTH_RETURN | |
| 003 | CLS_09_07_020_PASS_METHOD_BODY_EDGE_CASES | |
| 004 | CLS_09_07_025_PASS_ALL_PATHS_RETURN | |

### compile-fail（7 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_009_FAIL_MISSING_RETURN_AND_BODY | |
| 002 | CLS_09_07_015_FAIL_VOID_RETURN_VALUE | |
| 003 | CLS_09_07_016_FAIL_NATIVE_BLOCK_BODY | |
| 004 | CLS_09_07_017_FAIL_NON_VOID_MISSING_RETURN | |
| 005 | CLS_09_07_018_FAIL_EMPTY_BODY_SEMICOLON | |
| 006 | CLS_09_07_024_FAIL_NO_RETURN_ON_PATH | |
| 007 | CLS_09_07_032_FAIL_VOID_RETURN_VALUE | |

### runtime（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_021_RUNTIME_COMPLEX_CONTROL_FLOW | |
| 002 | CLS_09_07_033_RUNTIME_METHOD_BODY_CONTROL_FLOW | |

---

## 9.7.8.Methods_Returning_this（8 用例）

### compile-pass（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_011_PASS_METHOD_RETURN_THIS | |
| 002 | CLS_09_07_016_PASS_GENERIC_RETURN_THIS | |

### compile-fail（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_013_FAIL_OVERRIDE_WRONG_RETURN_TYPE | |
| 002 | CLS_09_07_014_FAIL_RETURN_NON_THIS | |
| 003 | CLS_09_07_037_FAIL_RETURN_NON_THIS | |

### runtime（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_012_RUNTIME_RETURN_THIS | |
| 002 | CLS_09_07_015_RUNTIME_GENERIC_RETURN_THIS | |
| 003 | CLS_09_07_027_RUNTIME_CHAIN_RETURN_THIS | |

---

## 9.7.Method_Declarations（8 用例）

### compile-pass（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_001_PASS_GENERAL_METHOD_SYNTAX | |
| 002 | CLS_09_07_002_PASS_METHOD_MODIFIER_COMBO | |
| 003 | CLS_09_07_003_PASS_METHOD_IMPLEMENTS_INTERFACE | |

### compile-fail（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_004_FAIL_METHOD_FIELD_CONFLICT | |
| 002 | CLS_09_07_005_FAIL_DUPLICATE_MODIFIER | |
| 003 | CLS_09_07_006_FAIL_STATIC_ABSTRACT_COMBO | |

### runtime（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_07_007_RUNTIME_METHOD_DISPATCH | |
| 002 | CLS_09_07_008_RUNTIME_VOID_METHOD_CALL | |

---

## 9.8.Class_Accessor_Declarations（31 用例）

### compile-pass（10 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_08_001_PASS_BASIC_GETTER_SETTER | |
| 002 | CLS_09_08_002_PASS_GETTER_INFERRED_TYPE | |
| 003 | CLS_09_08_003_PASS_OVERRIDE_ACCESSOR_COVARIANT | |
| 004 | CLS_09_08_015_PASS_GETTER_ONLY | |
| 005 | CLS_09_08_016_PASS_SETTER_ONLY | |
| 006 | CLS_09_08_017_PASS_ABSTRACT_ACCESSOR | |
| 007 | CLS_09_08_018_PASS_STATIC_ACCESSOR | |
| 008 | CLS_09_08_023_PASS_GETTER_ONLY | |
| 009 | CLS_09_08_027_PASS_COMPUTED_ACCESSOR | |
| 010 | CLS_09_08_031_PASS_SETTER_ONLY_ACCESS | |

### compile-fail（15 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_08_004_FAIL_ACCESSOR_AS_METHOD | |
| 002 | CLS_09_08_005_FAIL_SETTER_OPTIONAL_PARAM | |
| 003 | CLS_09_08_006_FAIL_ACCESSOR_FIELD_CONFLICT | |
| 004 | CLS_09_08_007_FAIL_ACCESSOR_METHOD_CONFLICT | |
| 005 | CLS_09_08_009_FAIL_FIELD_OVERRIDES_ACCESSOR | |
| 006 | CLS_09_08_012_FAIL_GETTER_WITH_PARAMETERS | |
| 007 | CLS_09_08_013_FAIL_SETTER_WITH_RETURN_TYPE | |
| 008 | CLS_09_08_014_FAIL_SETTER_NO_PARAMETERS | |
| 009 | CLS_09_08_019_FAIL_OVERRIDE_GETTER_NON_COVARIANT | |
| 010 | CLS_09_08_020_FAIL_OVERRIDE_SETTER_NON_CONTRAVARIANT | |
| 011 | CLS_09_08_024_FAIL_GETTER_WITH_PARAMS | |
| 012 | CLS_09_08_025_FAIL_SETTER_RETURN_TYPE | |
| 013 | CLS_09_08_026_FAIL_SETTER_NO_PARAMS | |
| 014 | CLS_09_08_008_FAIL_GETTER_SETTER_MODIFIER_MISMATCH | ⚠ C-9.08-01 负向看护：CLS-G1 编译器未实现检查，当前 unexpected pass |
| 015 | CLS_09_08_033_FAIL_ACCESSOR_NAME_METHOD_CONFLICT | |

### runtime（6 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_08_010_RUNTIME_GETTER_SETTER_BASIC | |
| 002 | CLS_09_08_011_RUNTIME_OVERRIDE_ACCESSOR | |
| 003 | CLS_09_08_021_RUNTIME_ABSTRACT_ACCESSOR | |
| 004 | CLS_09_08_022_RUNTIME_STATIC_GETTER_SETTER | |
| 005 | CLS_09_08_028_RUNTIME_GETTER_INFERRED | |
| 006 | CLS_09_08_032_RUNTIME_ACCESSOR_VALIDATION | |

---

## 9.9.1.Constructor_Body（18 用例）

### compile-pass（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_09_001_PASS_PRIMARY_CONSTRUCTOR | |
| 002 | CLS_09_09_002_PASS_SECONDARY_CONSTRUCTOR | |
| 003 | CLS_09_09_010_PASS_CODE_BEFORE_SUPER | |

### compile-fail（9 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_09_003_FAIL_SUPER_NOT_ROOT | |
| 002 | CLS_09_09_004_FAIL_RETURN_VALUE_IN_CONSTRUCTOR | |
| 003 | CLS_09_09_006_FAIL_SUPER_ARG_THIS | |
| 004 | CLS_09_09_007_FAIL_SUPER_ARG_SUPER | |
| 005 | CLS_09_09_008_FAIL_CONSTRUCTOR_RECURSIVE | |
| 006 | CLS_09_09_009_FAIL_THIS_NOT_ROOT | |
| 007 | CLS_09_09_016_FAIL_SUPER_ARG_USE_SUPER | |
| 008 | CLS_09_09_018_FAIL_SELF_CALL_CYCLE | |
| 009 | CLS_09_09_025_FAIL_SECONDARY_NOT_ROOT | |

### runtime（6 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_09_005_RUNTIME_CONSTRUCTOR_EXEC_ORDER | |
| 002 | CLS_09_09_011_RUNTIME_FIELD_INIT_ORDER | |
| 003 | CLS_09_09_012_RUNTIME_INSTANCEOF_IN_CONSTRUCTOR | |
| 004 | CLS_09_09_017_RUNTIME_FIELD_INIT_ORDER | |
| 005 | CLS_09_09_020_RUNTIME_SECONDARY_CTOR | |
| 006 | CLS_09_09_023_RUNTIME_INHERITANCE_CTOR_CHAIN | |

---

## 9.9.2.Explicit_Constructor_Call（9 用例）

### compile-pass（2 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_09_006_PASS_SUPER_CALL | |
| 002 | CLS_09_09_008_PASS_THIS_CALL | |

### compile-fail（6 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_09_007_FAIL_SUPER_ARG_THIS | |
| 002 | CLS_09_09_009_FAIL_SUPER_NAMED_CALL | |
| 003 | CLS_09_09_010_FAIL_THIS_NAMED_CALL | |
| 004 | CLS_09_09_011_FAIL_CALL_AS_EXPRESSION | |
| 005 | CLS_09_09_012_FAIL_ARG_INSTANCE_METHOD | |
| 006 | CLS_09_09_024_FAIL_SUPER_ARG_INSTANCE_METHOD | |

### runtime（1 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_09_047_RUNTIME_SUPER_CALL_CHAIN | |

---

## 9.9.3.Default_Constructor（9 用例）

### compile-pass（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_09_008_PASS_DEFAULT_CONSTRUCTOR | |
| 002 | CLS_09_09_011_PASS_SUBCLASS_DEFAULT_CTOR | |
| 003 | CLS_09_09_012_PASS_OBJECT_DEFAULT_CTOR | |

### compile-fail（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_09_009_FAIL_NO_ACCESSIBLE_SUPER_CTOR | |
| 002 | CLS_09_09_014_FAIL_SUPER_NO_PARAMETERLESS | |
| 003 | CLS_09_09_050_FAIL_DEFAULT_CTOR_ABSTRACT_SUPER | |

### runtime（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_09_010_RUNTIME_DEFAULT_CTOR_FIELD_INIT | |
| 002 | CLS_09_09_013_RUNTIME_MULTI_LEVEL_DEFAULT_CTOR | |
| 003 | CLS_09_09_015_RUNTIME_DEFAULT_CTOR_INHERIT_FIELD_INIT | |

---

## 9.9.Constructor_Declaration（10 用例）

### compile-pass（4 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_09_001_PASS_CONSTRUCTOR_BASIC | |
| 002 | CLS_09_09_002_PASS_CONSTRUCTOR_PARAM_DEFAULTS | |
| 003 | CLS_09_09_003_PASS_CONSTRUCTOR_ACCESS_MODIFIER | |
| 004 | CLS_09_09_007_PASS_CONSTRUCTOR_OVERLOAD_CTOR | |

### compile-fail（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_09_004_FAIL_NATIVE_CONSTRUCTOR_WITH_BODY | |
| 002 | CLS_09_09_005_FAIL_NON_NATIVE_CONSTRUCTOR_NO_BODY | |
| 003 | CLS_09_09_006_FAIL_SUPER_CONSTRUCTOR_NOT_ACCESSIBLE | |

### runtime（3 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_09_008_RUNTIME_CONSTRUCTOR_INIT_FIELDS | |
| 002 | CLS_09_09_009_RUNTIME_CONSTRUCTOR_DEFAULT_PARAM | |
| 003 | CLS_09_09_010_RUNTIME_CONSTRUCTOR_CHAIN | |

---

## 9.10.Inheritance（41 用例）

### compile-pass（12 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_10_001_PASS_BASIC_INHERITANCE | |
| 002 | CLS_09_10_002_PASS_MULTI_LEVEL_INHERITANCE | |
| 003 | CLS_09_10_003_PASS_OVERRIDE_COMPATIBLE | |
| 004 | CLS_09_10_004_PASS_OVERRIDE_CONTRAVARIANCE | |
| 005 | CLS_09_10_013_PASS_MULTI_INTERFACE | |
| 006 | CLS_09_10_031_PASS_PROTECTED_ACCESSIBLE_IN_SUBCLASS | |
| 007 | CLS_09_10_014_PASS_EXTENDS_IMPLEMENTS | |
| 008 | CLS_09_10_032_PASS_MULTIPLE_INTERFACE_IMPL | |
| 009 | CLS_09_10_015_PASS_EXTENDS_IMPLEMENTS_COMBINED | |
| 010 | CLS_09_10_016_PASS_FIELD_OVERRIDE_SAME_TYPE | |
| 011 | CLS_09_10_020_PASS_OVERRIDE_WITH_COVARIANT | |
| 012 | CLS_09_10_026_PASS_PROTECTED_ACCESS_SUBCLASS | |

### compile-fail（14 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_10_005_FAIL_NON_ABSTRACT_MISSING_IMPL | |
| 002 | CLS_09_10_006_FAIL_INTERFACE_NOT_IMPLEMENTED | |
| 003 | CLS_09_10_007_FAIL_OVERRIDE_RETURN_NOT_COVARIANT | |
| 004 | CLS_09_10_008_FAIL_OVERRIDE_PARAM_NOT_CONTRAVARIANT | |
| 005 | CLS_09_10_009_FAIL_CONSTRUCTOR_NOT_INHERITED | |
| 006 | CLS_09_10_033_FAIL_PRIVATE_MEMBER_NOT_INHERITED | |
| 007 | CLS_09_10_017_FAIL_FIELD_OVERRIDE_TYPE_MISMATCH | |
| 008 | CLS_09_10_035_FAIL_STATIC_NOT_INHERITED | |
| 009 | CLS_09_10_018_FAIL_PRIVATE_MEMBER_NOT_ACCESSIBLE | |
| 010 | CLS_09_10_019_FAIL_FIELD_OVERRIDE_ACCESS_MODIFIER_MISMATCH | |
| 011 | CLS_09_10_038_FAIL_OVERRIDE_FIELD_NOT_IN_BASE | |
| 012 | CLS_09_10_021_FAIL_OVERRIDE_NON_COVARIANT | |
| 013 | CLS_09_10_025_FAIL_OVERRIDE_NON_CONTRAVARIANT_PARAM | |
| 014 | CLS_09_10_028_FAIL_OVERRIDE_STATIC_METHOD | |

### runtime（15 个）

| # | 文件名 | 测试目的 |
|---|--------|---------|
| 001 | CLS_09_10_010_RUNTIME_INHERITANCE_CHAIN | |
| 002 | CLS_09_10_011_RUNTIME_OVERRIDE_DISPATCH | |
| 003 | CLS_09_10_012_RUNTIME_ACCESSOR_INHERITANCE | |
| 004 | CLS_09_10_034_RUNTIME_PROTECTED_ACCESS | |
| 005 | CLS_09_10_036_RUNTIME_INSTANCEOF_CHAIN | |
| 006 | CLS_09_10_037_RUNTIME_SUPER_METHOD_CALL | |
| 007 | CLS_09_10_039_RUNTIME_SUPER_METHOD_CALL | |
| 008 | CLS_09_10_022_RUNTIME_INSTANCEOF_CHAIN | |
| 009 | CLS_09_10_040_RUNTIME_MULTI_LEVEL | |
| 010 | CLS_09_10_023_RUNTIME_FIELD_OVERRIDE | |
| 011 | CLS_09_10_041_RUNTIME_OVERRIDE_VIA_BASE_REF | |
| 012 | CLS_09_10_024_RUNTIME_STATIC_NOT_INHERITED | |
| 013 | CLS_09_10_027_RUNTIME_PRIVATE_NOT_ACCESSIBLE | |
| 014 | CLS_09_10_029_RUNTIME_SUPER_CONSTRUCTOR_ARGS | |
| 015 | CLS_09_10_030_RUNTIME_TRIPLE_INHERITANCE_METHOD | |

---

> 注：本目录由 es2panda 编译器实际编译运行验证生成。数据基于 387 个 .ets 测试文件（最后编译验证 2026-06-26，es2panda `--extension=ets`，Linux native）。9.8 的 CLS_09_08_008 为 C-9.08-01（CLS-G1）负向看护用例，置于 compile-fail 但当前 unexpected pass。
