# 06 Contexts and Conversions Test Case Catalog

**总用例数：** 269（112P + 62F + 95R）

| Section | compile-pass | compile-fail | runtime | Total |
|---|---:|---:|---:|---:|
| 6.1 Assignment-like Contexts | 15 | 15 | 12 | 42 |
| 6.2 String Operator Contexts | 11 | 7 | 11 | 29 |
| 6.3 Numeric Operator Contexts | 12 | 6 | 9 | 27 |
| 6.3.1 Numeric Relational/Equality Conversions | 12 | 6 | 10 | 28 |
| 6.3.2 char Relational/Equality Conversions | 12 | 5 | 9 | 26 |
| 6.4 Implicit Conversions | 10 | 5 | 8 | 23 |
| 6.4.1 Widening Numeric Conversions | 10 | 5 | 9 | 24 |
| 6.4.2 Widening Numeric to Union | 8 | 5 | 4 | 17 |
| 6.4.3 Enumeration to Numeric | 9 | 4 | 4 | 17 |
| 6.4.4 Enumeration to string | 5 | 3 | 2 | 10 |
| 6.5 Numeric Casting Conversions | 8 | 2 | 16 | 26 |
| **Total** | **112** | **62** | **95** | **269** |

## 覆盖摘要

- 6.1：声明、赋值、调用、返回、复合 literal、widening/narrowing、运行时集成。
- 6.2：string context 中整数、浮点、boolean、null、undefined、enum、reference、union nullish、bigint 转换。
- 6.3：unary/exponentiation/multiplicative/additive/shift/bitwise/conditional/compound numeric contexts。
- 6.3.1：numeric relational/equality 的 widening、enum relational/equality、边界值。
- 6.3.2：char 与 byte/int/long/double/char 的 relational/equality 转换。
- 6.4：widening numeric、enum numeric/string、union widening、nullish/boolean string conversion 集成。
- 6.4.1：byte/short/int/long/float widening 全表。
- 6.4.2：numeric to union 的 literal inference、subtyping、唯一更大成员、歧义失败。
- 6.4.3：numeric enum 到 int/long/double/number/union/call/return/arithmetic。
- 6.4.4：string enum 到 string/string union/call/return/assignment，非 string 目标失败。
- 6.5：`.toXxx()` numeric casting、向零舍入、NaN/Inf 特殊值、int→short/long→byte 位截断、double→byte/short 两步转换、链式转换。

## 本次新增（spec 覆盖遗漏补充）

| 用例 | 覆盖 spec 规则 |
|---|---|
| CON_06_02_026/027 | bigint+string 编译/运行时（§6.2） |
| CON_06_05_017~024 | NaN/Inf→int/float、int→short、long→byte、double→byte/short（§6.5） |
