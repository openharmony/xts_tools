# 7.21.5 Unary Plus - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime | 6 | 6 | 0 | 100% |
| **总计** | **17** | **17** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_21_05_001_PASS_INT | +int 编译通过 | ✅ |
| 002 | EXP_07_21_05_002_PASS_SHORT | +short 拓宽为 int | ✅ |
| 003 | EXP_07_21_05_003_PASS_LONG | +long 保持 long | ✅ |
| 004 | EXP_07_21_05_004_PASS_BYTE | +byte 拓宽为 int | ✅ |
| 005 | EXP_07_21_05_005_PASS_FLOAT | +float 保持 float（需 `1.5 as float`）| ✅ |
| 006 | EXP_07_21_05_006_PASS_DOUBLE | +double 保持 double | ✅ |
| 007 | EXP_07_21_05_007_PASS_BIGINT | +bigint 保持 bigint | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 021 | EXP_07_21_05_021_FAIL_STRING | +string 非数值 | ✅ (expected error) |
| 022 | EXP_07_21_05_022_FAIL_BOOLEAN | +boolean 非数值 | ✅ (expected error) |
| 023 | EXP_07_21_05_023_FAIL_OBJECT | +Object 非数值 | ✅ (expected error) |
| 024 | EXP_07_21_05_024_FAIL_NULL | +null 非数值 | ✅ (expected error) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 031 | EXP_07_21_05_031_RUNTIME_INT_VALUE | +5=5, +(-3)=-3（正值不变，负值保持）| 2 | ✅ |
| 032 | EXP_07_21_05_032_RUNTIME_SHORT_WIDEN | +short(1)=1, +short(-1)=-1 → 结果类型 int | 2 | ✅ |
| 033 | EXP_07_21_05_033_RUNTIME_BYTE_WIDEN | +byte(10)=10, +byte(-128)=-128 → 结果类型 int | 2 | ✅ |
| 034 | EXP_07_21_05_034_RUNTIME_LONG_VALUE | +10000000000=10000000000（long 保持）| 1 | ✅ |
| 035 | EXP_07_21_05_035_RUNTIME_FLOAT_DOUBLE | +1.5=1.5, +3.14=3.14（浮点保持）| 2 | ✅ |
| 036 | EXP_07_21_05_036_RUNTIME_BIGINT_VALUE | +1n=1n（bigint 保持）| 1 | ✅ |

## 执行过程异常修复记录

1. **float 字面量需 `as float` 转换**：EXP_07_21_05_005 中 `1.5` 默认推断为 double，需显式 `1.5 as float`。

## 后续运行命令

```bash
SECTIONS="7.21.5_Unary_Plus" bash run_expressions_cases_wsl.sh
```
