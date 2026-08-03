# 7.12.1 Call Arguments - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **14** | **14** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_12_01_001_PASS_EMPTY_ARGUMENTS | 空参调用 `func()` | ✅ |
| 002 | EXP_07_12_01_002_PASS_SINGLE_ARGUMENT | 单参数调用 `func(21)` | ✅ |
| 003 | EXP_07_12_01_003_PASS_MULTIPLE_ARGUMENTS | 多参数调用 `func(1,2,3)` | ✅ |
| 004 | EXP_07_12_01_004_PASS_TRAILING_COMMA | 尾部逗号 `func(3,7,)` | ✅ |
| 005 | EXP_07_12_01_005_PASS_SPREAD_REST_PARAM | spread rest 参数 `func(...arr)` | ✅ |
| 006 | EXP_07_12_01_006_PASS_ARGUMENT_EXPRESSION | 表达式参数 `func(5+3, getValue())` | ✅ |
| 007 | EXP_07_12_01_007_PASS_TRAILING_LAMBDA | trailing lambda `func() { body }` | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 008 | EXP_07_12_01_008_FAIL_SPREAD_NON_REST_PARAM | spread 到非 rest 参数 | ✅ (expected error) |
| 009 | EXP_07_12_01_009_FAIL_TRAILING_LAMBDA_NON_FUNC | trailing lambda 非函数类型 | ✅ (expected error) |
| 010 | EXP_07_12_01_010_FAIL_SPREAD_NON_ITERABLE | spread 非 iterable 类型 | ✅ (expected error) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 011 | EXP_07_12_01_011_RUNTIME_MULTIPLE_ARGS | 多参数值传递运行时 | 1 | ✅ |
| 012 | EXP_07_12_01_012_RUNTIME_TRAILING_COMMA | 尾部逗号语义等价 | 2 | ✅ |
| 013 | EXP_07_12_01_013_RUNTIME_SPREAD_REST_PARAM | spread rest 运行时展开 | 1 | ✅ |
| 014 | EXP_07_12_01_014_RUNTIME_ARGUMENT_EXPRESSIONS | 表达式参数运行时求值 | 2 | ✅ |

## 执行过程异常修复记录

| 用例 | 问题 | 修复 |
|------|------|------|
| 002 | `double` 是 ArkTS 关键字，不能用作函数名 | 改为 `twice` |

## 后续运行命令

```bash
SECTIONS="7.12.1_Call_Arguments" bash run_expressions_cases_wsl.sh
```
