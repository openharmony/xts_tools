# 7.23.2 Division - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|:----:|:----:|:----:|:----:|:------:|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 8 | 7 | 1（SPEC不一致）| 87.5% |
| runtime | 10 | 10 | 0 | 100% |
| **总计** | **24** | **23** | **1** | **95.8%** |

> 注：1 个 compile-fail 用例未通过是因为 ArkTS 实现与 spec 不一致（D 类），并非用例设计问题。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|:-:|---------|---------|:----:|
| 001 | EXP_07_23_02_001_PASS_BYTE_SHORT_PROMOTION | byte/byte→int, short/short→int | ✅ |
| 002 | EXP_07_23_02_002_PASS_INT_LONG_TYPE_COMBOS | int/int→int, int/long→long, long/long→long | ✅ |
| 003 | EXP_07_23_02_003_PASS_FLOAT_TYPE_COMBOS | float/int→float, float/float→float | ✅ |
| 004 | EXP_07_23_02_004_PASS_DOUBLE_TYPE_COMBOS | double/any→number | ✅ |
| 005 | EXP_07_23_02_005_PASS_BIGINT_DIVISION | bigint/bigint→bigint | ✅ |
| 006 | EXP_07_23_02_006_PASS_NEGATIVE_SIGNED_OPERANDS | 负数/有符号操作数除法 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|:-:|---------|---------|:----:|------|
| 021 | EXP_07_23_02_021_FAIL_STRING_DIVISION | string / string | ✅ | |
| 022 | EXP_07_23_02_022_FAIL_BOOLEAN_DIVISION | boolean / boolean | ✅ | |
| 023 | EXP_07_23_02_023_FAIL_STRING_INT_DIVISION | string / int | ✅ | |
| 024 | EXP_07_23_02_024_FAIL_BOOLEAN_INT_DIVISION | boolean / int | ✅ | |
| 025 | EXP_07_23_02_025_FAIL_BIGINT_MIXED_INT | bigint / int | ✅ | |
| 026 | EXP_07_23_02_026_FAIL_BIGINT_MIXED_DOUBLE | bigint / double | ✅ | |
| 027 | EXP_07_23_02_027_FAIL_DIVISION_BY_ZERO_LITERAL | 字面量除零 | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |
| 028 | EXP_07_23_02_028_FAIL_BIGINT_DIVISION_BY_ZERO_LITERAL | bigint 字面量除零 0n | ✅ (expected error) | |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|:-:|---------|---------|:------:|:----:|
| 031 | EXP_07_23_02_031_RUNTIME_INT_DIVISION_ROUND_TO_ZERO | 整数除法向零取整 + 符号规则 | 5 | ✅ |
| 032 | EXP_07_23_02_032_RUNTIME_INT_MIN_DIV_MINUS_ONE | INT_MIN / -1 溢出 | 2 | ✅ |
| 033 | EXP_07_23_02_033_RUNTIME_INT_DIVISION_BY_ZERO | 整数除零抛 ArithmeticError | 1 (@runtime-throws) | ✅ |
| 034 | EXP_07_23_02_034_RUNTIME_BIGINT_ROUND_TO_ZERO | bigint 向零取整 | 5 | ✅ |
| 035 | EXP_07_23_02_035_RUNTIME_BIGINT_DIVISION_BY_ZERO | bigint 除零抛运行时错误 | 1 (@runtime-throws) | ✅ |
| 036 | EXP_07_23_02_036_RUNTIME_FLOAT_NAN_DIVISION | NaN/any=NaN, Inf/Inf=NaN, 0/0=NaN | 3 | ✅ |
| 037 | EXP_07_23_02_037_RUNTIME_FLOAT_INF_DIVISION | Inf/finite=Inf, finite/0=Inf | 4 | ✅ |
| 038 | EXP_07_23_02_038_RUNTIME_FLOAT_SIGNED_ZERO | finite/Inf=+0, 0/finite=+0 | 3 | ✅ |
| 039 | EXP_07_23_02_039_RUNTIME_FLOAT_SIGN_OVERFLOW | 符号规则 + 溢出到 Infinity | 6 | ✅ |
| 040 | EXP_07_23_02_040_RUNTIME_NEVER_THROWS | 浮点除法/INT_MIN溢出不抛异常 | 0 (no-throw verified) | ✅ |

## 执行过程异常修复记录

1. **字面量除零检测（D 类）**：spec 要求 `a / 0` 产生编译时错误，但 ArkTS 编译器允许通过。bigint 字面量 `a / 0n` 被正确检测。说明编译器对 bigint 和 int 的除零检测策略不同。
2. **float 字面量初始化**：使用 `Double.toFloat(2.5)` 而非 `2.5f`。
3. **`as float` 已废弃**：使用 `.toFloat()` 方法替代。

## 后续运行命令

```bash
SECTIONS="7.23.2_Division" bash run_expressions_cases_wsl.sh
```
