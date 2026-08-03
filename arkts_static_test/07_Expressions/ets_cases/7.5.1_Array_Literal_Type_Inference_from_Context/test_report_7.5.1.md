# 7.5.1 Array Literal Type Inference from Context - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 18 | 18 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **28** | **28** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 001 | EXP_07_05_01_001_PASS_VAR_DECL_CONTEXT | 变量声明类型标注上下文 | ✅ OK |
| 002 | EXP_07_05_01_002_PASS_ASSIGNMENT_CONTEXT | 赋值左值类型上下文 | ✅ OK |
| 003 | EXP_07_05_01_003_PASS_CAST_CONTEXT | Cast 目标类型上下文 | ✅ OK |
| 004 | EXP_07_05_01_004_PASS_PARAM_TYPE_CONTEXT | 参数类型上下文 | ✅ OK |
| 005 | EXP_07_05_01_005_PASS_ELEMENT_TYPE_CONTEXT | 数组元素类型上下文（多维数组） | ✅ OK |
| 006 | EXP_07_05_01_006_PASS_TUPLE_CONTEXT | Tuple 类型上下文 | ✅ OK |
| 007 | EXP_07_05_01_007_PASS_FIXED_ARRAY_CONTEXT | FixedArray 上下文 | ✅ OK |
| 008 | EXP_07_05_01_008_PASS_VALUE_ARRAY_CONTEXT | ValueArray<int> 上下文 | ✅ OK |
| 009 | EXP_07_05_01_009_PASS_ARRAY_GENERIC_CONTEXT | Array<string> 泛型上下文 | ✅ OK |
| 010 | EXP_07_05_01_010_PASS_SQUARE_BRACKET_SYNTAX_CONTEXT | string[] 语法上下文 | ✅ OK |
| 011 | EXP_07_05_01_011_PASS_OBJECT_ARRAY_CONTEXT | Object[] 混合类型上下文 | ✅ OK |
| 012 | EXP_07_05_01_012_PASS_OBJECT_CONTEXT | Object 上下文（元素类型推断） | ✅ OK |
| 013 | EXP_07_05_01_013_PASS_ANY_CONTEXT | Any 上下文 | ✅ OK |
| 014 | EXP_07_05_01_014_PASS_FIXED_ARRAY_OBJECT_ELEMENT | FixedArray<Object> 混合元素 | ✅ OK |
| 015 | EXP_07_05_01_015_PASS_VALUE_ARRAY_DOUBLE | ValueArray<double> 接受 int | ✅ OK |
| 016 | EXP_07_05_01_016_PASS_UNION_CONTEXT_SINGLE | Union 唯一匹配上下文 | ✅ OK |
| 017 | EXP_07_05_01_017_PASS_CLASS_ARRAY_CONTEXT | 类类型数组 Array<aClass> 上下文 | ✅ OK |
| 018 | EXP_07_05_01_018_PASS_READONLY_ARRAY_CONTEXT | readonly 数组上下文 | ✅ OK |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 019 | EXP_07_05_01_019_FAIL_TUPLE_ELEMENT_MISMATCH | Tuple 元素类型不匹配 | ✅ (expected error) | |
| 020 | EXP_07_05_01_020_FAIL_FIXED_ARRAY_ELEMENT_MISMATCH | FixedArray<string> = [1, 2] | ✅ (expected error) | |
| 021 | EXP_07_05_01_021_FAIL_VALUE_ARRAY_ELEMENT_MISMATCH | ValueArray<int> = [3.14] | ✅ (expected error) | |
| 022 | EXP_07_05_01_022_FAIL_RESIZABLE_ARRAY_ELEMENT_MISMATCH | string[] = ["text", 2] | ✅ (expected error) | |
| 023 | EXP_07_05_01_023_FAIL_UNION_CONTEXT_AMBIGUOUS | Union 歧义（两者皆可） | ✅ (expected error) | |
| 024 | EXP_07_05_01_024_FAIL_NON_ARRAY_INTERFACE_CONTEXT | 非数组接口上下文 | ✅ (expected error) | |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|----------|--------|------|
| 025 | EXP_07_05_01_025_RUNTIME_BASIC_ARRAY_VALUES | int[] = [1,2,3] 值验证 | 3 | ✅ |
| 026 | EXP_07_05_01_026_RUNTIME_TUPLE_ACCESS | [int, string] 元素访问 | 2 | ✅ |
| 027 | EXP_07_05_01_027_RUNTIME_ARRAY_VIA_CAST | cast 上下文数组值 | 3 | ✅ |
| 028 | EXP_07_05_01_028_RUNTIME_STRING_ARRAY_VALUES | string[] 字面量值 | 2 | ✅ |

## 执行过程异常修复记录

无 — 所有 28 个用例本次运行即 100% 通过。

## 后续运行命令

```bash
SECTIONS="7.5.1_Array_Literal_Type_Inference_from_Context" bash run_expressions_cases_wsl.sh
```
