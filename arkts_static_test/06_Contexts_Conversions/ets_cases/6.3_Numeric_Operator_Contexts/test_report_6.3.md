# 6.3 Numeric Operator Contexts - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 12 | 12 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime（真实执行） | 9 | 9 | 0 | 100% |
| **总计** | **27** | **27** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | CON_06_03_001_PASS_UNARY_NUMERIC | + - ~ 一元运算 | PASS |
| 2 | CON_06_03_002_PASS_EXPONENTIATION_WIDENING | int**long widening (→double) | PASS |
| 3 | CON_06_03_003_PASS_MULTIPLICATIVE_WIDENING | int*double, int*long, int/long, % | PASS |
| 4 | CON_06_03_004_PASS_ADDITIVE_WIDENING | int+long, int+double, byte+int | PASS |
| 5 | CON_06_03_005_PASS_SHIFT_WIDENING | int<<long, int>>byte | PASS |
| 6 | CON_06_03_006_PASS_BITWISE_WIDENING | int&long, int\|long, int^long | PASS |
| 7 | CON_06_03_007_PASS_CONDITIONAL_AND_OR | && 和 \|\| | PASS |
| 8 | CON_06_03_008_PASS_ENUM_ADDITIVE | enum+int, enum+enum | PASS |
| 9 | CON_06_03_009_PASS_ENUM_MULTIPLICATIVE | enum*int, enum/int | PASS |
| 10 | CON_06_03_010_PASS_COMPOUND_ASSIGNMENT | += -= *= /= <<= >>= &= \|= ^= | PASS |
| 11 | CON_06_03_011_PASS_ENUM_BITWISE | enum\|int, enum&int | PASS |
| 12 | CON_06_03_012_PASS_ENUM_SHIFT_UNARY | enum<<int, enum>>int, ~enum, -enum | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 13 | CON_06_03_013_FAIL_STRING_MULTIPLICATIVE | string * int 编译失败 | PASS |
| 14 | CON_06_03_014_FAIL_BOOL_ADDITIVE | boolean + int 编译失败 | PASS |
| 15 | CON_06_03_015_FAIL_STRING_ENUM_ARITHMETIC | string enum + int 编译失败 | PASS |
| 16 | CON_06_03_016_FAIL_STRING_BITWISE | string & int 编译失败 | PASS |
| 17 | CON_06_03_017_FAIL_BOOL_SHIFT | boolean << int 编译失败 | PASS |
| 18 | CON_06_03_018_FAIL_STRING_ENUM_BITWISE | string enum \| int 编译失败 | PASS |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 19 | CON_06_03_019_RUNTIME_UNARY_NUMERIC | + - ~ 结果 | 4 | PASS |
| 20 | CON_06_03_020_RUNTIME_ADDITIVE_WIDENING | int+long, int+double, byte+int | 4 | PASS |
| 21 | CON_06_03_021_RUNTIME_MULTIPLICATIVE_WIDENING | int*double, int*long, %, int/int | 4 | PASS |
| 22 | CON_06_03_022_RUNTIME_SHIFT_WIDENING | int<<long, int>>byte | 4 | PASS |
| 23 | CON_06_03_023_RUNTIME_BITWISE_WIDENING | int&long, int\|long, int^long | 3 | PASS |
| 24 | CON_06_03_024_RUNTIME_ENUM_ARITHMETIC | enum+, enum*, enum/, enum% | 4 | PASS |
| 25 | CON_06_03_025_RUNTIME_COMPOUND_ASSIGNMENT | += -= *= /= <<= >>= | 6 | PASS |
| 26 | CON_06_03_026_RUNTIME_EXPONENTIATION_WIDENING | 2**3, 5**2, 10**0 | 3 | PASS |
| 27 | CON_06_03_027_RUNTIME_ENUM_BITWISE_SHIFT | enum\|, enum&, enum<<, ~enum | 4 | PASS |

## 执行过程异常修复

| 异常 | 用例 | 原因 | 修复 |
|------|------|------|------|
| PASS_FAILED | 002, 026 | `**` 运算符返回 `Double`，非 `Long`/`Int` | 结果类型改为 `double` |

## 覆盖的数值上下文

| 上下文 | 运算符 | compile-pass | compile-fail | runtime |
|--------|--------|:---:|:---:|:---:|
| Unary | + - ~ | 001 | — | 019 |
| Exponentiation | ** | 002 | — | 026 |
| Multiplicative | * / % | 003 | 013 | 021 |
| Additive | + - | 004 | 014 | 020 |
| Shift | << >> | 005 | 017 | 022 |
| Bitwise | & \| ^ | 006 | 016,018 | 023 |
| Conditional | && \|\| | 007 | — | — |
| Enum Arithmetic | 所有 | 008,009,011,012 | 015 | 024,027 |
| Compound | += -= 等 | 010 | — | 025 |

## 后续运行命令
```bash
cd /mnt/d/111/ARKTS_STATIC_TEST/06_Contexts_Conversions
SECTIONS="6.3_Numeric_Operator_Contexts" bash run_contexts_conversions_cases_wsl.sh
```
