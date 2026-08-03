# 7.21.7 Bitwise Complement - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 5 | 4 | ⚠️ 1 D类 | 80%* |
| runtime | 8 | 8 | 0 | 100% |
| **总计** | **21** | **20** | **⚠️ 1 D类** | **95%** |

> *compile-fail 中 1 个 D 类 Spec 不一致（~enum 实际编译通过），按规则保留 FAIL 文件不改为 PASS。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_21_07_001_PASS_INT | ~int 编译通过，结果 int | ✅ |
| 002 | EXP_07_21_07_002_PASS_SHORT | ~short 拓宽为 int | ✅ |
| 003 | EXP_07_21_07_003_PASS_LONG | ~long 保持 long | ✅ |
| 004 | EXP_07_21_07_004_PASS_BYTE | ~byte 拓宽为 int | ✅ |
| 005 | EXP_07_21_07_005_PASS_FLOAT | ~float 截断为 int | ✅ |
| 006 | EXP_07_21_07_006_PASS_DOUBLE | ~double 截断为 long | ✅ |
| 007 | EXP_07_21_07_007_PASS_BIGINT | ~bigint 保持 bigint | ✅ |
| 008 | EXP_07_21_07_008_PASS_IDENTITY | ~x = (-x)-1 恒等式 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 021 | EXP_07_21_07_021_FAIL_STRING | ~string 非数值 | ✅ (expected error) | |
| 022 | EXP_07_21_07_022_FAIL_BOOLEAN | ~boolean 非数值 | ✅ (expected error) | |
| 023 | EXP_07_21_07_023_FAIL_OBJECT | ~Object 非数值 | ✅ (expected error) | |
| 024 | EXP_07_21_07_024_FAIL_NULL | ~null 非数值 | ✅ (expected error) | |
| 025 | EXP_07_21_07_025_FAIL_ENUM | ~enum 非数值 | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 031 | EXP_07_21_07_031_RUNTIME_INT_VALUE | ~2=-3, ~(-3)=2, ~0=-1, ~(-1)=0 | 4 | ✅ |
| 032 | EXP_07_21_07_032_RUNTIME_SHORT_VALUE | ~short(2)=-3, ~short(0)=-1 (int) | 2 | ✅ |
| 033 | EXP_07_21_07_033_RUNTIME_LONG_VALUE | ~long(2)=-3, ~long(0)=-1 | 2 | ✅ |
| 034 | EXP_07_21_07_034_RUNTIME_BYTE_VALUE | ~byte(2)=-3, ~byte(127)=-128 (int) | 2 | ✅ |
| 035 | EXP_07_21_07_035_RUNTIME_FLOAT_VALUE | ~float(2.5)=-3, ~float(-2.5)=1 (截断 int) | 2 | ✅ |
| 036 | EXP_07_21_07_036_RUNTIME_DOUBLE_VALUE | ~double(2.5)=-3, ~double(-2.5)=1 (截断 long) | 2 | ✅ |
| 037 | EXP_07_21_07_037_RUNTIME_BIGINT_VALUE | ~2n=-3n, ~(-3n)=2n | 2 | ✅ |
| 038 | EXP_07_21_07_038_RUNTIME_IDENTITY | ~x = (-x)-1 对 int/long/bigint 成立 | 3 | ✅ |

## 执行过程异常修复记录

1. **~int.MIN 边界值验证**：~int.MIN = int.MAX（恒等式验证的边界情况）。

## 后续运行命令

```bash
SECTIONS="7.21.7_Bitwise_Complement" bash run_expressions_cases_wsl.sh
```
