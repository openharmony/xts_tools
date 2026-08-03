# 7.7 Spread Expression - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 12 | 12 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime（真实执行） | 6 | 6 | 0 | 100% |
| **总计** | **22** | **22** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_07_001_PASS_BASIC_ARRAY_SPREAD | 基本 int[] 数组扩展 | ✅ |
| 002 | EXP_07_07_002_PASS_FIXED_ARRAY_SPREAD | FixedArray&lt;int&gt; 扩展 | ✅ |
| 003 | EXP_07_07_003_PASS_MULTIPLE_SPREADS | 多扩展 [...a1, ...a2] | ✅ |
| 004 | EXP_07_07_004_PASS_SPREAD_MIXED | 扩展+字面量+扩展 | ✅ |
| 005 | EXP_07_07_005_PASS_SPREAD_FUNC_CALL | 函数调用扩展 foo(...arr) | ✅ |
| 006 | EXP_07_07_006_PASS_MULTIPLE_SPREADS_CALL | 多扩展函数调用 | ✅ |
| 007 | EXP_07_07_007_PASS_SPREAD_FUNC_RETURN | 函数返回值的扩展 | ✅ |
| 008 | EXP_07_07_008_PASS_NESTED_SPREAD | 嵌套扩展 foo(...[...arr]) | ✅ |
| 009 | EXP_07_07_009_PASS_READONLY_SOURCE_SPREAD | 只读源数组扩展 | ✅ |
| 010 | EXP_07_07_010_PASS_TUPLE_SPREAD_CALL | 元组扩展函数调用 | ✅ |
| 011 | EXP_07_07_011_PASS_STRING_SPREAD | 字符串类型扩展 | ✅ |
| 012 | EXP_07_07_012_PASS_TUPLE_SPREAD_LITERAL | 元组扩展字面量 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 013 | EXP_07_07_013_FAIL_NON_ITERABLE_CLASS | 非 iterable 类扩展 | ✅ (expected error) | |
| 014 | EXP_07_07_014_FAIL_NON_ITERABLE_NUMBER | int 数值扩展 | ✅ (expected error) | |
| 015 | EXP_07_07_015_FAIL_SPREAD_NON_REST_ARRAY | 数组扩展到非 rest 参数 | ✅ (expected error) | |
| 016 | EXP_07_07_016_FAIL_SPREAD_NON_REST_TUPLE | 元组扩展到非 rest 参数 | ✅ (expected error) | |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 017 | EXP_07_07_017_RUNTIME_BASIC_SPREAD | 基本扩展值验证 | 3 | ✅ |
| 018 | EXP_07_07_018_RUNTIME_COPY_SEMANTICS | 复制语义：修改副不影响原数组 | 2 | ✅ |
| 019 | EXP_07_07_019_RUNTIME_MULTIPLE_SPREADS | 多扩展合并正确性 | 3 | ✅ |
| 020 | EXP_07_07_020_RUNTIME_SPREAD_MIXED | 扩展混合字面量元素 | 3 | ✅ |
| 021 | EXP_07_07_021_RUNTIME_FUNC_CALL_SPREAD | 函数调用扩展运行时 | 1 | ✅ |
| 022 | EXP_07_07_022_RUNTIME_READONLY_SOURCE | 只读源扩展运行时 | 2 | ✅ |

## 执行过程异常修复记录

| 用例 | 问题 | 修复 |
|------|------|------|
| 012 PASS_TUPLE_SPREAD_LITERAL | `any` 类型注解在 ArkTS 中禁用 | 改用 `Object[]` |

## 后续运行命令

```bash
SECTIONS="7.7_Spread_Expression" bash run_expressions_cases_wsl.sh
```
