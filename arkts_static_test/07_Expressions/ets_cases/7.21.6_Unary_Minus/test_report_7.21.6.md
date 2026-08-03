# 7.21.6 Unary Minus - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime | 8 | 8 | 0 | 100% |
| **总计** | **20** | **20** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_21_06_001_PASS_INT | -int 求反 | ✅ |
| 002 | EXP_07_21_06_002_PASS_SHORT | -short → int 拓宽 | ✅ |
| 003 | EXP_07_21_06_003_PASS_LONG | -long 保持 long | ✅ |
| 004 | EXP_07_21_06_004_PASS_BYTE | -byte → int 拓宽 | ✅ |
| 005 | EXP_07_21_06_005_PASS_FLOAT | -float 保持 float | ✅ |
| 006 | EXP_07_21_06_006_PASS_DOUBLE | -double 保持 double | ✅ |
| 007 | EXP_07_21_06_007_PASS_BIGINT | -bigint 保持 bigint | ✅ |
| 008 | EXP_07_21_06_008_PASS_NEGATE_INT_MIN | -int.MIN 静默包装（编译时合法）| ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 021 | EXP_07_21_06_021_FAIL_STRING | -string 非数值 | ✅ (expected error) |
| 022 | EXP_07_21_06_022_FAIL_BOOLEAN | -boolean 非数值 | ✅ (expected error) |
| 023 | EXP_07_21_06_023_FAIL_OBJECT | -Object 非数值 | ✅ (expected error) |
| 024 | EXP_07_21_06_024_FAIL_NULL | -null 非数值 | ✅ (expected error) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 031 | EXP_07_21_06_031_RUNTIME_INT_VALUE | -5=-5, -(-3)=3（int 求反基本语义）| 2 | ✅ |
| 032 | EXP_07_21_06_032_RUNTIME_INT_MIN_NEGATE | -int.MIN → int.MIN（溢出包装）| 1 | ✅ |
| 033 | EXP_07_21_06_033_RUNTIME_SHORT_WIDEN | -short(1)=-1, -short(-1)=1 → 结果类型 int | 2 | ✅ |
| 034 | EXP_07_21_06_034_RUNTIME_BYTE_WIDEN | -byte(10)=-10, -byte(-128)=128 → 结果类型 int | 2 | ✅ |
| 035 | EXP_07_21_06_035_RUNTIME_LONG_VALUE | -10000000000=-10000000000（long 保持）| 1 | ✅ |
| 036 | EXP_07_21_06_036_RUNTIME_FLOAT_DOUBLE | -1.5=-1.5, -(-3.14)=3.14（浮点符号反转）| 2 | ✅ |
| 037 | EXP_07_21_06_037_RUNTIME_BIGINT_VALUE | -1n=-1n, -(-1n)=1n（bigint 求反）| 2 | ✅ |
| 038 | EXP_07_21_06_038_RUNTIME_FLOAT_SPECIAL | -(-0.0)=0.0, -(-inf)=inf, -NaN=NaN（浮点特殊值）| 3 | ✅ |

## 执行过程异常修复记录

1. **float 字面量需 `as float` 转换**：部分用例涉及 float 类型时需显式转换。

## 后续运行命令

```bash
SECTIONS="7.21.6_Unary_Minus" bash run_expressions_cases_wsl.sh
```
