# 7.23.3 Remainder - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|:----:|:----:|:----:|:----:|:------:|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 8 | 6 | 2（SPEC不一致）| 75% |
| runtime | 9 | 9 | 0 | 100% |
| **总计** | **23** | **21** | **2** | **91.3%** |

> 注：2 个 compile-fail 用例未通过是因为 ArkTS 实现与 spec 不一致（D 类），并非用例设计问题。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|:-:|---------|---------|:----:|
| 001 | EXP_07_23_03_001_PASS_BYTE_SHORT_PROMOTION | byte/byte→int, short/short→int | ✅ |
| 002 | EXP_07_23_03_002_PASS_INT_LONG_TYPE_COMBOS | int/int→int, int/long→long, long/long→long | ✅ |
| 003 | EXP_07_23_03_003_PASS_FLOAT_TYPE_COMBOS | float/int→float, float/float→float | ✅ |
| 004 | EXP_07_23_03_004_PASS_DOUBLE_TYPE_COMBOS | double/any→number | ✅ |
| 005 | EXP_07_23_03_005_PASS_BIGINT_REMAINDER | bigint/bigint→bigint | ✅ |
| 006 | EXP_07_23_03_006_PASS_NEGATIVE_SIGNED_OPERANDS | 负数/有符号操作数取余 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|:-:|---------|---------|:----:|------|
| 021 | EXP_07_23_03_021_FAIL_STRING_REMAINDER | string % string | ✅ | |
| 022 | EXP_07_23_03_022_FAIL_BOOLEAN_REMAINDER | boolean % boolean | ✅ | |
| 023 | EXP_07_23_03_023_FAIL_STRING_INT_REMAINDER | string % int | ✅ | |
| 024 | EXP_07_23_03_024_FAIL_BOOLEAN_INT_REMAINDER | boolean % int | ✅ | |
| 025 | EXP_07_23_03_025_FAIL_BIGINT_MIXED_INT | bigint % int | ✅ | |
| 026 | EXP_07_23_03_026_FAIL_BIGINT_MIXED_DOUBLE | bigint % double | ✅ | |
| 027 | EXP_07_23_03_027_FAIL_REMAINDER_BY_ZERO_LITERAL | 字面量整数取余除零 | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |
| 028 | EXP_07_23_03_028_FAIL_BIGINT_REMAINDER_BY_ZERO_LITERAL | bigint 字面量 0n 取余除零 | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|:-:|---------|---------|:------:|:----:|
| 031 | EXP_07_23_03_031_RUNTIME_INT_REMAINDER_SIGN_MAGNITUDE | 符号规则 + 恒等式 (a/b)*b+(a%b)=a | 6 | ✅ |
| 032 | EXP_07_23_03_032_RUNTIME_INT_MIN_REMAINDER_MINUS_ONE | INT_MIN % -1 = 0 | 3 | ✅ |
| 033 | EXP_07_23_03_033_RUNTIME_INT_REMAINDER_BY_ZERO | 整数取余除零抛 ArithmeticError | 1 (@runtime-throws) | ✅ |
| 034 | EXP_07_23_03_034_RUNTIME_BIGINT_REMAINDER_IDENTITY | bigint 恒等式 + 符号规则 | 3 | ✅ |
| 035 | EXP_07_23_03_035_RUNTIME_BIGINT_REMAINDER_BY_ZERO | bigint 取余除零运行时错误 | 1 (@runtime-throws) | ✅ |
| 036 | EXP_07_23_03_036_RUNTIME_FLOAT_REMAINDER_NAN | NaN/Inf/0 → NaN | 4 | ✅ |
| 037 | EXP_07_23_03_037_RUNTIME_FLOAT_REMAINDER_SIGN | 结果符号 = 被除数符号 | 5 | ✅ |
| 038 | EXP_07_23_03_038_RUNTIME_FLOAT_REMAINDER_SPECIAL | finite%Inf=dividend, 0%finite=0, r=n-(d*q) | 5 | ✅ |
| 039 | EXP_07_23_03_039_RUNTIME_FLOAT_REMAINDER_NEVER_THROWS | 浮点取余除零不抛异常 | 6 | ✅ |

## 执行过程异常修复记录

1. **字面量取余除零未检测（D 类）**：int%0 和 bigint%0n 字面量均未被编译器检测。其中 bigint%0n 与 7.23.2 除法中 `a / 0n` 被正确检测的行为不一致。
2. **float 字面量初始化**：使用 `Double.toFloat(2.5)` 而非 `2.5f`。
3. **`as float` 已废弃**：使用 `.toFloat()` 方法替代。

## 后续运行命令

```bash
SECTIONS="7.23.3_Remainder" bash run_expressions_cases_wsl.sh
```
