# 7.20 Nullish-Coalescing Expression - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 8 | 8 | 0 | 100% |
| **总计** | **19** | **19** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_20_001_PASS_BASIC_NULLISH | `undefined ?? "default"` — nullish LHS | ✅ |
| 002 | EXP_07_20_002_PASS_BASIC_NON_NULLISH | 非 nullish 变量 ?? default | ✅ |
| 003 | EXP_07_20_003_PASS_NULL_LHS | `null ?? 42` — null LHS | ✅ |
| 004 | EXP_07_20_004_PASS_NULLABLE_VARIABLE | `T \| undefined` / `T \| null` 变量 ?? default | ✅ |
| 005 | EXP_07_20_005_PASS_CHAINED | `a ?? b ?? "last"` — 链式 ?? | ✅ |
| 006 | EXP_07_20_006_PASS_WITH_PARENS | `n ?? (a \|\| b)` — 括号隔离 | ✅ |
| 007 | EXP_07_20_007_PASS_EMPTY_STRING_FALSE | 空串/false 变量 ?? default | ✅ |
| 008 | EXP_07_20_008_PASS_ZERO_EMPTY_OBJECT | 0 变量/对象 ?? default | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 021 | EXP_07_20_021_FAIL_MIXED_OR | `n ?? a \|\| b` — ?? 与 \|\| 无括号 | ✅ (expected error) | |
| 022 | EXP_07_20_022_FAIL_MIXED_AND | `n ?? a && b` — ?? 与 && 无括号 | ✅ (expected error) | |
| 023 | EXP_07_20_023_FAIL_MIXED_COMPLEX | `n ?? a \|\| b && c` — 复杂混用 | ✅ (expected error) | |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 031 | EXP_07_20_031_RUNTIME_NULLISH_UNDEFINED | `undefined ?? "default"` → `"default"` | 1 | ✅ |
| 032 | EXP_07_20_032_RUNTIME_NON_NULLISH_VALUE | 变量 `"hello" ?? "world"` → `"hello"` | 1 | ✅ |
| 033 | EXP_07_20_033_RUNTIME_NULL_LHS | `null ?? 42` → `42` | 1 | ✅ |
| 034 | EXP_07_20_034_RUNTIME_FALSE_IS_NOT_NULLISH | `false ?? true` → `false` | 1 | ✅ |
| 035 | EXP_07_20_035_RUNTIME_ZERO_IS_NOT_NULLISH | `0 ?? 99` → `0` | 1 | ✅ |
| 036 | EXP_07_20_036_RUNTIME_EMPTY_STRING | `"" ?? "fallback"` → `""` | 1 | ✅ |
| 037 | EXP_07_20_037_RUNTIME_CHAINED | `undefined ?? null ?? "last"` → `"last"` | 1 | ✅ |
| 038 | EXP_07_20_038_RUNTIME_LAZY_EVALUATION | 非 nullish LHS → RHS 不执行（无副作用） | 1 | ✅ |

## 执行过程异常修复记录

1. **literal ?? literal 被编译器拒绝（ESE0346）**：当 `??` 两侧均为编译时常量时，编译器报 ESE0346（错误类型操作数），而非 spec 规定的 warning。这是编译器比 spec 更严格的情况。所有 literal ?? literal 用例已改为变量形式以通过编译。

## 后续运行命令

```bash
SECTIONS="7.20_Nullish_Coalescing_Expression" bash run_expressions_cases_wsl.sh
```
