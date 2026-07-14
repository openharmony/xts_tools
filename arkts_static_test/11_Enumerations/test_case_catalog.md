# 11 Enumerations Test Case Catalog

**总用例数：** 44（21P + 14F + 9R）

| Section | compile-pass | compile-fail | runtime | Total |
|---|:---:|:---:|:---:|:---:|
| 11 Enumerations | 6 | 2 | 1 | 9 |
| 11.1 Enumeration Base Type | 5 | 3 | 0 | 8 |
| 11.2 Enumeration with Explicit Base Type | 3 | 4 | 1 | 8 |
| 11.3 Initialization of Enumeration Members | 4 | 3 | 1 | 8 |
| 11.4 Enumeration Methods | 2 | 2 | 7 | 11 |
| **Total** | **20** | **14** | **10** | **44** |

## 完整用例清单

| ID | Section | Type | Purpose |
|---|---|---|---|
| ENM_11_001_PASS_BASIC_INT_ENUM | 11 | compile-pass | int 基类枚举基本声明和使用 |
| ENM_11_003_PASS_EMPTY_ENUM | 11 | compile-pass | 空枚举声明合法 |
| ENM_11_004_PASS_DUPLICATE_VALUE | 11 | compile-pass | 枚举允许重复值 |
| ENM_11_007_PASS_QUALIFIED_ACCESS | 11 | compile-pass | 成员访问必须加类型名限定 |
| ENM_11_008_PASS_EXPORTED_ENUM | 11 | compile-pass | 导出枚举及成员 |
| ENM_11_011_PASS_INIT_OMIT_QUALIFICATION | 11 | compile-pass | 初始化器中可省略限定名 |
| ENM_11_009_FAIL_DUPLICATE_NAME | 11 | compile-fail | 重复成员名编译错误 |
| ENM_11_010_FAIL_CONST_ENUM | 11 | compile-fail | const enum 暂不支持 |
| ENM_11_012_RUNTIME_BASIC_OPS | 11 | runtime | 基本成员值和相等比较 |
| ENM_11_01_001_PASS_INT_INFERRED | 11.1 | compile-pass | 无初始化器成员 → int 推断 |
| ENM_11_01_002_PASS_ALL_INT_INIT | 11.1 | compile-pass | 全部 int 初始化 → int 推断 |
| ENM_11_01_004_PASS_STRING_BASE_INFERRED | 11.1 | compile-pass | 全部 string 初始化 → string 推断 |
| ENM_11_01_007_PASS_STRING_BASE_WITH_NAMES | 11.1 | compile-pass | string 基类型命名成员 |
| ENM_11_01_010_PASS_PARTIAL_INIT_INT | 11.1 | compile-pass | 部分初始化 + int 推断 |
| ENM_11_01_005_FAIL_MIXED_BASE | 11.1 | compile-fail | 混合 int/string 推断失败 |
| ENM_11_01_006_FAIL_STRING_NO_INIT | 11.1 | compile-fail | string 推断但有无初始化器成员失败 |
| ENM_11_01_011_FAIL_FIRST_NO_INIT_SECOND_STRING | 11.1 | compile-fail | 第一个无初始化、后续 string 失败 |
| ENM_11_02_001_PASS_EXPLICIT_DOUBLE_ENUM | 11.2 | compile-pass | 显式 double/long/byte/short/float |
| ENM_11_02_005_PASS_STRING_BASE | 11.2 | compile-pass | 显式 string 基类型 |
| ENM_11_02_006_PASS_EXPLICIT_BYTE_SHORT | 11.2 | compile-pass | 显式 byte/short 基类型 |
| ENM_11_02_002_FAIL_NON_INT_BASE_NO_INIT | 11.2 | compile-fail | 非整数基类型无初始化器 |
| ENM_11_02_003_FAIL_MEMBER_NOT_ASSIGNABLE | 11.2 | compile-fail | 成员值不可赋给基类型 |
| ENM_11_02_004_FAIL_STRING_NOT_INT_INIT | 11.2 | compile-fail | string 基类型给出 int 初值 |
| ENM_11_02_007_FAIL_OBJECT_BASE | 11.2 | compile-fail | Object 作为显式基类型失败 |
| ENM_11_02_008_RUNTIME_EXPLICIT_INT | 11.2 | runtime | 显式 int 基类型运行时 |
| ENM_11_03_001_PASS_ALL_OMITTED_AUTO | 11.3 | compile-pass | 全部省略自动递增 |
| ENM_11_03_002_PASS_NON_INT_BASE_INIT_OK | 11.3 | compile-pass | 非 int 基类型显式初始化 |
| ENM_11_03_003_PASS_MIXED_INIT_AUTO | 11.3 | compile-pass | 混合显式+自动递增 |
| ENM_11_03_004_PASS_DEFAULT_EXPR_INIT | 11.3 | compile-pass | 常量表达式初始化 |
| ENM_11_03_005_FAIL_NON_INT_NO_INIT | 11.3 | compile-fail | 非 int 基类型无初始化器 |
| ENM_11_03_006_FAIL_STRING_BASE_NO_INIT | 11.3 | compile-fail | string 基类型无初始化器 |
| ENM_11_03_007_FAIL_NON_CONST_INIT_SUBSEQUENT | 11.3 | compile-fail | 非常量后成员缺初始化器 |
| ENM_11_03_008_RUNTIME_MIXED_AUTO | 11.3 | runtime | 混合初始化运行时值验证 |
| ENM_11_04_001_RUNTIME_VALUES_METHODS | 11.4 | runtime | values/getValueOf/fromValue |
| ENM_11_04_002_FAIL_FROMVALUE_NONEXISTENT | 11.4 | runtime | fromValue 不存在的值 throw |
| ENM_11_04_003_RUNTIME_INSTANCE_METHODS | 11.4 | runtime | toString/valueOf/getName |
| ENM_11_04_004_RUNTIME_INDEX_BY_VALUE | 11.4 | runtime | Color[value] 按值索引 |
| ENM_11_04_005_RUNTIME_SAME_VALUE_LAST_WINS | 11.4 | runtime | 同值最后成员优先 |
| ENM_11_04_006_FAIL_GETVALUEOF_NONEXISTENT | 11.4 | runtime | getValueOf 不存在名 throw |
| ENM_11_04_007_RUNTIME_STRING_ENUM_METHODS | 11.4 | runtime | string 枚举方法验证 |
| ENM_11_04_008_PASS_ENUM_STATIC_METHOD_TYPES | 11.4 | compile-pass | 静态方法返回类型检查 |
| ENM_11_04_009_PASS_ENUM_INSTANCE_METHOD_TYPES | 11.4 | compile-pass | 实例方法返回类型检查 |
| ENM_11_04_010_FAIL_GETVALUEOF_WRONG_ARG_TYPE | 11.4 | compile-fail | getValueOf 非 string 参数 |
| ENM_11_04_011_FAIL_FROMVALUE_WRONG_BASE_TYPE | 11.4 | compile-fail | fromValue 参数类型与基类型不匹配 |
