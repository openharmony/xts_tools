# 7.13.1 Array Indexing Expression - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **17** | **17** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_13_01_001_PASS_INT_INDEX | int 索引基本访问 | ✅ |
| 002 | EXP_07_13_01_002_PASS_SHORT_BYTE_INDEX | byte/short 索引加宽 | ✅ |
| 003 | EXP_07_13_01_003_PASS_ELEMENT_ASSIGNMENT | 元素赋值 | ✅ |
| 004 | EXP_07_13_01_004_PASS_REF_TYPE_FIELD_MODIFY | 引用类型字段修改 | ✅ |
| 005 | EXP_07_13_01_005_PASS_CHAINING_OPERATOR | 链式操作符 + 数组 | ✅ |
| 006 | EXP_07_13_01_006_PASS_LONG_TO_INT_CONVERSION | long→.toInt() 转换 | ✅ |
| 007 | EXP_07_13_01_007_PASS_FLOAT_DOUBLE_TO_INT | float/double→.toInt() | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 008 | EXP_07_13_01_008_FAIL_STRING_INDEX | 字符串索引 | ✅ (编译错误) |
| 009 | EXP_07_13_01_009_FAIL_FLOAT_LITERAL_INDEX | 浮点字面量索引 3.5 | ✅ (编译错误) |
| 010 | EXP_07_13_01_010_FAIL_NUMBER_TYPE_INDEX | number 类型索引 | ✅ (编译错误) |
| 011 | EXP_07_13_01_011_FAIL_LONG_INDEX | long 无转换索引 | ✅ (编译错误) |
| 012 | EXP_07_13_01_012_FAIL_FLOAT_INDEX | float 无转换索引 | ✅ (编译错误) |
| 013 | EXP_07_13_01_013_FAIL_DOUBLE_INDEX | double 无转换索引 | ✅ (编译错误) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 014 | EXP_07_13_01_014_RUNTIME_ELEMENT_ACCESS | 元素访问+赋值 | 2 | ✅ |
| 015 | EXP_07_13_01_015_RUNTIME_OUT_OF_BOUNDS | 越界 RangeError | 1 | ✅ |
| 016 | EXP_07_13_01_016_RUNTIME_REF_FIELD_MODIFY | 引用字段修改 | 2 | ✅ |
| 017 | EXP_07_13_01_017_RUNTIME_CHAINING_ARRAY | 链式操作符运行时 | 2 | ✅ |

## 执行过程异常修复记录

| 用例 | 问题 | 修复 |
|------|------|------|
| 007 | `let f: float = 0.0` 中 `0.0` 是 double 字面量，不能赋值给 float | 改为 `let f: float = 0`（int 可加宽到 float） |

## 后续运行命令

```bash
SECTIONS="7.13.1_Array_Indexing_Expression" bash run_expressions_cases_wsl.sh
```
