# 7.22 Binary Expressions - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|:----:|:----:|:----:|:------:|
| compile-pass | 15 | 15 | 0 | 100% |
| compile-fail | 7 | 7 | 0 | 100% |
| runtime | 5 | 5 | 0 | 100% |
| **总计** | **27** | **27** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|:--:|---------|---------|:----:|
| 001 | MULTIPLICATIVE_TYPE_COMBOS | byte*byte→int, long*int→long, float*int→float, double*int→double | ✅ |
| 002 | BIGINT_MULTIPLICATIVE_EXPONENTIATION | bigint*/%/** 结果类型为 bigint | ✅ |
| 003 | EXPONENTIATION_DOUBLE_RESULT | int/long/float/double ** → number(double) | ✅ |
| 004 | STRING_CONCATENATION | string+string, string+int, string+boolean, string+null → string | ✅ |
| 005 | ADDITIVE_TYPE_COMBOS | byte+byte→int, int+long→long, int+float→float, float+double→number | ✅ |
| 006 | BIGINT_ADDITIVE | bigint+bigint→bigint, bigint-bigint→bigint | ✅ |
| 007 | SHIFT_TYPE_BY_LHS | int<<int/LHS→int, long>>LHS→long, float<<→int, double>>→long | ✅ |
| 008 | BIGINT_SHIFT | bigint<<bigint→bigint, bigint>>bigint→bigint | ✅ |
| 009 | RELATIONAL_TYPE_COMBOS | int>, string<, boolean<= → boolean | ✅ |
| 010 | ENUM_RELATIONAL | enum(numeric)<enum→boolean, enum(string)>=→boolean | ✅ |
| 011 | EQUALITY_TYPE_COMBOS | int/boolean/string/bigint ==/!=/===/!== → boolean | ✅ |
| 012 | EQUALITY_SPECIAL_TYPES | enum==, null==, undefined!== → boolean | ✅ |
| 013 | BITWISE_AND_XOR_OR | boolean&/int|/long^ → 正确结果类型 | ✅ |
| 014 | BIGINT_BITWISE | bigint&/|/^ → bigint | ✅ |
| 015 | LOGICAL_AND_OR | boolean&&/|| → boolean, 短路行为验证 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|:--:|---------|---------|:----:|
| 021 | STRING_MULTIPLICATIVE | string * string — 字符串乘法错误 | ✅ |
| 022 | BOOLEAN_MULTIPLICATIVE | boolean * boolean — 布尔乘法错误 | ✅ |
| 023 | BIGINT_MIXED_MULTIPLICATIVE | bigint * int — 混合 bigint 错误 | ✅ |
| 024 | STRING_SHIFT | string << int — 字符串移位错误 | ✅ |
| 025 | BOOLEAN_SHIFT | boolean >> int — 布尔移位错误 | ✅ |
| 026 | STRING_BITWISE | string & string — 字符串按位与错误 | ✅ |
| 027 | BOOLEAN_INT_BITWISE | boolean & int — 混合位运算错误 | ✅ |

### runtime

| # | 用例 ID | 验证内容 | 结果 |
|:--:|---------|---------|:----:|
| 031 | OPERAND_ORDER_NOTE1 | Note 1：操作数顺序不影响结果类型（+/×） | ✅ |
| 032 | SHIFT_LHS_NOTE2 | Note 2：移位结果类型取决于 LHS | ✅ |
| 033 | SHORT_CIRCUIT_AND_OR | &&/|| 短路求值（副作用计数器验证） | ✅ |
| 034 | EXTENDED_CONDITIONAL_NOTE5 | Note 5：Extended Conditional truthy/falsy 语义 | ✅ |
| 035 | EXPONENTIATION_DOUBLE | 幂运算 int→number(double), bigint→bigint | ✅ |

## 执行过程异常修复记录

1. **幂运算 `**` 返回 `double` 类型**：最初使用 `int` 类型接收幂运算结果导致类型错误（`Type 'Double' cannot be assigned to type 'Int'`），修复为 `double` 类型。
2. **一元负号与幂运算的语法歧义**：`-2 ** 3 ** 2` 被 ArkTS 编译器要求加括号，改为 `(-2) ** 3 ** 2`。
3. **`as long` 转换弃用**：`as` 表达式用于数值类型转换已被弃用，改为调用 `.toLong()` 方法。

## 后续运行命令

```bash
SECTIONS="7.22_Binary_Expressions" bash run_expressions_cases_wsl.sh
```
