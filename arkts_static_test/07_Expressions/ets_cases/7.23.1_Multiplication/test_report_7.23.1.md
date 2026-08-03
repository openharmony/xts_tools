# 7.23.1 Multiplication - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|:----:|:----:|:----:|:----:|:------:|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime | 9 | 9 | 0 | 100% |
| **总计** | **23** | **23** | **0** | **100%** |

> 注：0 D 类异常，0 unexpected

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|:-:|---------|---------|:----:|
| 001 | EXP_07_23_01_001_PASS_BYTE_SHORT_PROMOTION | byte*byte→int, short*short→int, byte*short→int | ✅ |
| 002 | EXP_07_23_01_002_PASS_INT_LONG_TYPE_COMBOS | int*int→int, int*long→long, long*long→long | ✅ |
| 003 | EXP_07_23_01_003_PASS_FLOAT_TYPE_COMBOS | float*int→float, float*float→float | ✅ |
| 004 | EXP_07_23_01_004_PASS_DOUBLE_TYPE_COMBOS | double*int→number, double*float→number, double*double→number | ✅ |
| 005 | EXP_07_23_01_005_PASS_BIGINT_MULTIPLICATION | bigint*bigint→bigint | ✅ |
| 006 | EXP_07_23_01_006_PASS_MIXED_NUMERIC_PROMOTION | byte→int→long→float→double 完整提升链 | ✅ |
| 007 | EXP_07_23_01_007_PASS_NEGATIVE_SIGNED_OPERANDS | 负数/有符号操作数乘法 | ✅ |
| 008 | EXP_07_23_01_008_PASS_COMMUTATIVE_ASSOCIATIVE_DECL | 结合律/交换律表达式编译通过 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|:-:|---------|---------|:----:|
| 021 | EXP_07_23_01_021_FAIL_STRING_MULTIPLICATION | string * string | ✅ |
| 022 | EXP_07_23_01_022_FAIL_BOOLEAN_MULTIPLICATION | boolean * boolean | ✅ |
| 023 | EXP_07_23_01_023_FAIL_STRING_INT_MULTIPLICATION | string * int | ✅ |
| 024 | EXP_07_23_01_024_FAIL_BOOLEAN_INT_MULTIPLICATION | boolean * int | ✅ |
| 025 | EXP_07_23_01_025_FAIL_BIGINT_MIXED_INT | bigint * int | ✅ |
| 026 | EXP_07_23_01_026_FAIL_BIGINT_MIXED_DOUBLE | bigint * double | ✅ |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|:-:|---------|---------|:------:|:----:|
| 031 | EXP_07_23_01_031_RUNTIME_INTEGER_OVERFLOW | int 溢出低 32 位截断 | 2 | ✅ |
| 032 | EXP_07_23_01_032_RUNTIME_FLOAT_NAN | IEEE 754: NaN*anything=NaN, Infinity*0=NaN | 3 | ✅ |
| 033 | EXP_07_23_01_033_RUNTIME_FLOAT_INF_MULTIPLY | IEEE 754: Infinity*finite = signed Infinity | 3 | ✅ |
| 034 | EXP_07_23_01_034_RUNTIME_FLOAT_SIGN_RULES | IEEE 754: 符号规则（同号正/异号负） | 3 | ✅ |
| 035 | EXP_07_23_01_035_RUNTIME_FLOAT_OVERFLOW | float/double 溢出到 Infinity | 3 | ✅ |
| 036 | EXP_07_23_01_036_RUNTIME_BIGINT_ASSOCIATIVE | bigint 乘法结合律 | 0 | ✅ |
| 037 | EXP_07_23_01_037_RUNTIME_INT_ASSOCIATIVE | 整数同类型结合律（int/long） | 3 | ✅ |
| 038 | EXP_07_23_01_038_RUNTIME_FLOAT_NOT_ASSOCIATIVE | 浮点乘法不满足结合律 | 3 | ✅ |
| 039 | EXP_07_23_01_039_RUNTIME_NEVER_THROWS | 乘法从不抛异常 | 0 (no-throw verified) | ✅ |

## 执行过程异常修复记录

1. **`typeof` 类型推断验证**：runtime 用例使用 typeof 验证返回类型，确保类型提升规则正确。
2. **float 字面量初始化**：使用 `Double.toFloat(2.5)` 而非 `2.5f`。
3. **`as float` 已废弃**：使用 `.toFloat()` 方法替代。

## 后续运行命令

```bash
SECTIONS="7.23.1_Multiplication" bash run_expressions_cases_wsl.sh
```
