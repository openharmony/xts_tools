# 7.5.2 Array Type Inference from Types of Elements - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 11 | 11 | 0 | 100% |
| compile-fail | 1 | 1 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **15** | **15** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 001 | EXP_07_05_02_001_PASS_SAME_TYPE_STRING | `["a"]` → string[] | ✅ OK |
| 002 | EXP_07_05_02_002_PASS_SAME_TYPE_INT | `[1, 2, 3]` → int[] | ✅ OK |
| 003 | EXP_07_05_02_003_PASS_NUMERIC_TYPES_MIXED | `[1, 2.1, 3]` → number[] | ✅ OK |
| 004 | EXP_07_05_02_004_PASS_MIXED_STRING_NUMBER | `["ab", 1, 3.14]` → (string\|number)[] | ✅ OK |
| 005 | EXP_07_05_02_005_PASS_LITERAL_TYPE_PROMOTION | `[u]` u为`"A"\|"B"` → string[] | ✅ OK |
| 006 | EXP_07_05_02_006_PASS_FUNCTION_CLASS_MIXED | lambda + 类 → union 数组 | ✅ OK |
| 007 | EXP_07_05_02_007_PASS_SINGLE_ELEMENT | `[42]` → int[] | ✅ OK |
| 008 | EXP_07_05_02_008_PASS_SAME_TYPE_BOOLEAN | `[true, false]` → boolean[] | ✅ OK |
| 009 | EXP_07_05_02_009_PASS_NUMERIC_INT_DOUBLE_FLOAT | `[1, 1.5, 3]` → number[] | ✅ OK |
| 010 | EXP_07_05_02_010_PASS_MIXED_STRING_BOOL_INT | `["hello", true, 1]` → union 数组 | ✅ OK |
| 012 | EXP_07_05_02_012_PASS_EMPTY_ARRAY_WITH_CONTEXT | 返回类型 `int[]` 提供上下文 | ✅ OK |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 011 | EXP_07_05_02_011_FAIL_EMPTY_ARRAY | `let a = []` 无上下文 | ✅ (expected error) | |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|----------|--------|------|
| 013 | EXP_07_05_02_013_RUNTIME_INT_ARRAY_VALUES | `[1, 2, 3]` int[] 值 | 3 | ✅ |
| 014 | EXP_07_05_02_014_RUNTIME_NUMERIC_ARRAY_VALUES | `[1, 2, 3]` number[] 值 | 3 | ✅ |
| 015 | EXP_07_05_02_015_RUNTIME_STRING_ARRAY_SINGLE | `["hello"]` 值 | 1 | ✅ |

## 执行过程异常修复记录

| 问题 | 修复 |
|------|------|
| 012_FAIL_EMPTY_ARRAY_LAMBDA_RETURN: 函数返回类型 `int[]` 提供了上下文，不符合 7.5.2 的无上下文条件 | 改为 012_PASS_EMPTY_ARRAY_WITH_CONTEXT（7.5.1 上下文推断适用） |

## 后续运行命令

```bash
SECTIONS="7.5.2_Array_Type_Inference_from_Types_of_Elements" bash run_expressions_cases_wsl.sh
```
