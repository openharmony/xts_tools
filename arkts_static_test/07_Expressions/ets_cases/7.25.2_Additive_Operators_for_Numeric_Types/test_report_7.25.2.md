# 7.25.2 Additive Operators for Numeric Types - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime（真实执行） | 12 | 12 | 0 | 100% |
| **总计** | **26** | **26** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_25_02_001_PASS_INT_ADD_BASIC | int+int→int, int-int→int 类型保持 | ✅ |
| 002 | EXP_07_25_02_002_PASS_INT_LONG_PROMOTION | int+long→long, int-long→long 提升 | ✅ |
| 003 | EXP_07_25_02_003_PASS_INT_FLOAT_PROMOTION | int+float→float, int-float→float 提升 | ✅ |
| 004 | EXP_07_25_02_004_PASS_INT_DOUBLE_PROMOTION | int+double→double, long+double→double 提升 | ✅ |
| 005 | EXP_07_25_02_005_PASS_BYTE_SHORT_PROMOTION | byte+byte→int, short+short→int 提升 | ✅ |
| 006 | EXP_07_25_02_006_PASS_BIGINT_ADD_SUB | bigint+bigint, bigint-bigint | ✅ |
| 007 | EXP_07_25_02_007_PASS_CHAINED_ADDITIVE | a+b-c+d 链式加减法 | ✅ |
| 008 | EXP_07_25_02_008_PASS_FLOAT_DOUBLE_PROMOTION | float+double→double 提升 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 009 | EXP_07_25_02_021_FAIL_BOOLEAN_INT_ADD | boolean+int 无数值转换 | ✅ (expected error) |
| 010 | EXP_07_25_02_022_FAIL_BOOLEAN_INT_SUB | boolean-int 无数值转换 | ✅ (expected error) |
| 011 | EXP_07_25_02_023_FAIL_STRING_SUB | string-string 无字符串语义 | ✅ (expected error) |
| 012 | EXP_07_25_02_024_FAIL_STRING_INT_SUB | string-int 不可转换 | ✅ (expected error) |
| 013 | EXP_07_25_02_025_FAIL_BIGINT_INT_ADD | bigint+int 混合类型 | ✅ (expected error) |
| 014 | EXP_07_25_02_026_FAIL_BIGINT_INT_SUB | bigint-int 混合类型 | ✅ (expected error) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 015 | EXP_07_25_02_031_RUNTIME_INT_ADD_BASIC | int+int 基本加法值（正/负/零/变量） | 5 | ✅ |
| 016 | EXP_07_25_02_032_RUNTIME_INT_OVERFLOW | MAX_INT+1=MIN_INT，大数溢出 | 3 | ✅ |
| 017 | EXP_07_25_02_033_RUNTIME_LONG_ADD_OVERFLOW | long 加法值+MAX_LONG+1=MIN_LONG | 4 | ✅ |
| 018 | EXP_07_25_02_034_RUNTIME_INT_SUB | int 减法值（正/负/零组合） | 6 | ✅ |
| 019 | EXP_07_25_02_035_RUNTIME_INT_ASSOCIATIVE | int/long 加法结合律（含溢出） | 4 | ✅ |
| 020 | EXP_07_25_02_036_RUNTIME_FLOAT_NAN_INF | NaN+X=NaN, ∞+(-∞)=NaN, ∞+有限=∞ | 6 | ✅ |
| 021 | EXP_07_25_02_037_RUNTIME_FLOAT_ZERO | (+0)+(-0)=+0, 0+有限=有限, 反号消0 | 5 | ✅ |
| 022 | EXP_07_25_02_038_RUNTIME_FLOAT_NOT_ASSOCIATIVE | (1e20+(-1e20))+123456 ≠ 1e20+((-1e20)+123456) | 1 | ✅ |
| 023 | EXP_07_25_02_039_RUNTIME_FLOAT_OVERFLOW | 1e308+1e308=+Infinity | 3 | ✅ |
| 024 | EXP_07_25_02_040_RUNTIME_SUB_EQUALS_ADD_NEG | a-b = a+(-b) 对 int/float 均成立 | 4 | ✅ |
| 025 | EXP_07_25_02_041_RUNTIME_SUB_FROM_ZERO | 0-x=-x 对 int；0.0-0.0=+0.0 ≠ -(0.0)=-0.0 | 5 | ✅ |
| 026 | EXP_07_25_02_042_RUNTIME_NEVER_THROWS | 溢出/NaN/Infinity 参与不抛异常 | 0（验证性） | ✅ |

## 执行过程异常修复记录

1. **类型提升链完整**：ArkTS 实现了与 Java 完全一致的数值类型提升链。byte/short → int（byte+byte=int，short+short=int）；int+long→long（结果类型取最大类型）；int+float→float（整数→浮点提升）；int+double→double（double 是最大数值类型）。共 8 个编译通过用例覆盖所有类型组合。
2. **float 字面量需 Double.toFloat()**：在 ArkTS 中，`3.14` 字面量是 `double` 类型，不能直接赋值给 `float` 变量。`let f: float = 3.14` ❌ Type 'Double' cannot be assigned to type 'Float'；`let f: float = Double.toFloat(3.14)` ✅。这与 Java 的 `3.14f` 语法不同。
3. **bigint 与数值严格隔离**：`bigint + int` 和 `bigint - int` 在编译时被正确拒绝（混合 bigint/数值），这是 ArkTS 强制类型安全的设计决定。
4. **IEEE 754 规则实现完整**：NaN 规则（NaN+X=NaN，+∞+(-∞)=NaN）✅；Infinity 规则（∞+有限=∞）✅；零规则（(+0)+(-0)=+0）✅；非结合性（浮点加法不满足结合律）✅；溢出（1e308+1e308=+Infinity）✅。
5. **a-b = a+(-b) 恒等式**：该恒等式对 int 和 float 均成立。特别地，浮点减法与取反存在微妙差异：`0.0 - (+0.0) = +0.0`（减法结果是正零）；`-(+0.0) = -0.0`（取反结果是负零）。这是 IEEE 754 规定的行为，三语言一致。
6. **永不抛异常**：所有数值加减法操作（包括溢出、NaN、Infinity 参与）均不抛异常，与 Spec 一致。

## 后续运行命令

```bash
SECTIONS="7.25.2_Additive_Operators_for_Numeric_Types" bash run_expressions_cases_wsl.sh
```
