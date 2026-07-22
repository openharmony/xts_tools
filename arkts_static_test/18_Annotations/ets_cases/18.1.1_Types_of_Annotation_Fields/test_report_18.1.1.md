# 18.1.1 Types of Annotation Fields - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 17 | 17 | 0 | 100% |
| compile-fail | 8 | 8 | 0 | 100% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **26** | **26** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | ANN_18_01_1_001_PASS_STRING_FIELD | string 类型字段 | ✅ |
| 2 | ANN_18_01_1_002_PASS_BOOLEAN_FIELD | boolean 类型字段 | ✅ |
| 3 | ANN_18_01_1_003_PASS_INT_FIELD | int 类型字段 | ✅ |
| 4 | ANN_18_01_1_004_PASS_DOUBLE_FIELD | double 类型字段 | ✅ |
| 5 | ANN_18_01_1_005_PASS_FLOAT_FIELD | float 类型字段 | ✅ |
| 6 | ANN_18_01_1_006_PASS_LONG_FIELD | long 类型字段 | ✅ |
| 7 | ANN_18_01_1_007_PASS_SHORT_FIELD | short 类型字段 | ✅ |
| 8 | ANN_18_01_1_008_PASS_BYTE_FIELD | byte 类型字段 | ✅ |
| 9 | ANN_18_01_1_009_PASS_NUMBER_FIELD | number 类型字段 | ✅ |
| 10 | ANN_18_01_1_010_PASS_ENUM_FIELD | 枚举类型字段 | ✅ |
| 11 | ANN_18_01_1_011_PASS_STRING_ARRAY_FIELD | string[] 数组类型 | ✅ |
| 12 | ANN_18_01_1_012_PASS_INT_ARRAY_FIELD | int[] 数组类型 | ✅ |
| 13 | ANN_18_01_1_013_PASS_DOUBLE_ARRAY_FIELD | double[] 数组类型 | ✅ |
| 14 | ANN_18_01_1_014_PASS_BOOLEAN_ARRAY_FIELD | boolean[] 数组类型 | ✅ |
| 15 | ANN_18_01_1_015_PASS_STRING_2D_ARRAY_FIELD | string[][] 多维数组 | ✅ |
| 16 | ANN_18_01_1_016_PASS_MIXED_VALID_FIELDS | 多种合法类型混合 | ✅ |
| 17 | ANN_18_01_1_017_PASS_ENUM_ARRAY_FIELD | 枚举数组类型 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 错误码 | 结果 |
|---|---------|---------|--------|------|
| 1 | ANN_18_01_1_018_FAIL_CLASS_FIELD_TYPE | 自定义类 | ESE0042 | ✅ |
| 2 | ANN_18_01_1_019_FAIL_INTERFACE_FIELD_TYPE | 接口类型 | ESE0042 | ✅ |
| 3 | ANN_18_01_1_020_FAIL_ANNOTATION_AS_FIELD | 注解类型 | ESE0159 | ✅ |
| 4 | ANN_18_01_1_021_FAIL_OBJECT_FIELD_TYPE | Object 类型 | ESE0042 | ✅ |
| 5 | ANN_18_01_1_022_FAIL_UNDEFINED_FIELD_TYPE | void/undefined | ESE0042 | ✅ |
| 6 | ANN_18_01_1_023_FAIL_UNION_FIELD_TYPE | 联合类型 | ESE0042 | ✅ |
| 7 | ANN_18_01_1_024_FAIL_FUNCTION_FIELD_TYPE | 函数类型 | ESE0042 | ✅ |
| 8 | ANN_18_01_1_025_FAIL_TYPE_ALIAS_REF_FIELD | 类型别名间接引用 | ESE0042 | ✅ |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | ANN_18_01_1_026_RUNTIME_VALID_FIELD_TYPES | 多种合法字段类型运行时编译执行 | 0 | ✅ |

## 执行过程异常修复记录

无。本次执行 26/26 全部通过。

## 后续运行命令

```bash
cd /mnt/d/333/18_Annotations
SECTIONS="18.1.1_Types_of_Annotation_Fields" bash run_annotations_cases_wsl.sh
```
