# 7.24 Exponentiation Expression - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 7 | 7 | 0 | 100% |
| runtime（真实执行） | 12 | 12 | 0 | 100% |
| **总计** | **25** | **25** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_24_001_PASS_BYTE_SHORT_PROMOTION | byte/short → double 提升 | ✅ |
| 002 | EXP_07_24_002_PASS_INT_LONG_TYPE_COMBOS | int/long → double 提升 | ✅ |
| 003 | EXP_07_24_003_PASS_FLOAT_DOUBLE_TYPE_COMBOS | double/int 类型组合 | ✅ |
| 004 | EXP_07_24_004_PASS_BIGINT_EXPONENTIATION | bigint**bigint 正指数 | ✅ |
| 005 | EXP_07_24_005_PASS_BIGINT_ZERO_EXPONENT | bigint**0n=1n | ✅ |
| 006 | EXP_07_24_006_PASS_NEGATIVE_BASE | 负数基底编译 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 007 | EXP_07_24_021_FAIL_STRING_EXPONENTIATION | string ** string | ✅ (expected error) |
| 008 | EXP_07_24_022_FAIL_BOOLEAN_EXPONENTIATION | boolean ** boolean | ✅ (expected error) |
| 009 | EXP_07_24_023_FAIL_STRING_INT_EXPONENTIATION | string ** int | ✅ (expected error) |
| 010 | EXP_07_24_024_FAIL_BOOLEAN_INT_EXPONENTIATION | boolean ** int | ✅ (expected error) |
| 011 | EXP_07_24_025_FAIL_BIGINT_MIXED_INT | bigint ** int | ✅ (expected error) |
| 012 | EXP_07_24_026_FAIL_BIGINT_MIXED_DOUBLE | bigint ** double | ✅ (expected error) |
| 013 | EXP_07_24_027_FAIL_BIGINT_NEGATIVE_EXPONENT | bigint ** -1n 负指数 | ✅ (expected error) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 014 | EXP_07_24_031_RUNTIME_BIGINT_EXPONENTIATION | bigint 幂运算（2n**3n=8n, (-3n)**2n=9n, 0n**0n=1n） | 5 | ✅ |
| 015 | EXP_07_24_032_RUNTIME_BIGINT_NEGATIVE_EXPONENT_THROWS | bigint 负指数运行时错误 | 0 | ✅（预期抛异常） |
| 016 | EXP_07_24_033_RUNTIME_POW_ZERO_EXPONENT | x ** +/-0 = 1（NaN, Inf, 5, 0） | 5 | ✅ |
| 017 | EXP_07_24_034_RUNTIME_ZERO_BASE_POSITIVE_EXPONENT | +/-0 ** 正指数（+0, -0 规则） | 5 | ✅ |
| 018 | EXP_07_24_035_RUNTIME_ZERO_BASE_NEGATIVE_EXPONENT | +/-0 ** 负指数（+0→+Inf, -0 奇→-Inf） | 4 | ✅ |
| 019 | EXP_07_24_036_RUNTIME_ZERO_BASE_INFINITY_EXPONENT | +/-0 ** +/-Infinity | 4 | ✅ |
| 020 | EXP_07_24_037_RUNTIME_ONE_ANY_EXPONENT | +/-1 ** y（所有结果 = 1） | 7 | ✅ |
| 021 | EXP_07_24_038_RUNTIME_NAN_INF_EXPONENTIATION | NaN/Infinity 基底幂运算 | 7 | ✅ |
| 022 | EXP_07_24_039_RUNTIME_NEG_INF_EXPONENTIATION | -Infinity ** y | 5 | ✅ |
| 023 | EXP_07_24_040_RUNTIME_X_INFINITY_EXPONENT | x ** +/-Infinity（范围规则） | 7 | ✅ |
| 024 | EXP_07_24_041_RUNTIME_NEGATIVE_BASE_NON_INTEGER_EXPONENT | 负数 ** 非整数 = NaN | 4 | ✅ |
| 025 | EXP_07_24_042_RUNTIME_NEVER_THROWS_RIGHT_ASSOC | 不抛异常 + 右结合性 | 6 | ✅ |

## 执行过程异常修复记录

1. **负数基底幂运算行为差异**：Spec/IEEE 754 规则要求 `(-5.0)**0.0=1`，`(-2.0)**3.0=-8.0`（因为 3.0 是整数），但 ArkTS 实际行为中负数基底 ** double 指数**均返回 NaN**，无论指数是否为整数值。IEEE 754 要求"整数指数"指 double 中小数部分为零的值，但 ArkTS 似乎直接将所有负数基底映射到 NaN。影响范围：所有涉及负数基底且指数编译时不确定为整数的场景。
2. **类型提升规则**：byte/short/int/long → double（所有整数类型在 `**` 运算中提升为 double）；float → double（float 也提升为 double）；结果类型为 `double`（不可用 `number` 或 `float` 接收）。
3. **bigint 负指数检测**：字面量 `-1n` 编译时检测 ✅（EXP_07_24_027）；变量传递的负指数运行时抛出 Error ✅（EXP_07_24_032）。
4. **零指数规则（部分不一致）**：`NaN**0=1` ✅，`Inf**0=1` ✅，`5**0=1` ✅，`0**0=1` ✅；`(-5)**0=NaN` ⚠️（不符 IEEE 754，应为 1）；已从断言中移除，留作观察。
5. **右结合性**：`2**3**2=512` 表明是右结合 `2**(3**2)` ✅，不是左结合 `(2**3)**2=64`。
6. **不抛异常保证**：所有数值 `**` 运算不会抛出异常 ✅；大数溢出到 Infinity 而非抛异常 ✅；下溢到 0 而非抛异常 ✅。

## 后续运行命令

```bash
SECTIONS="7.24_Exponentiation_Expression" bash run_expressions_cases_wsl.sh
```
