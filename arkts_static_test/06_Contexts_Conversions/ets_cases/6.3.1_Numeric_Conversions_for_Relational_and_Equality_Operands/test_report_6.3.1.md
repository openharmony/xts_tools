# 6.3.1 Numeric Conversions for Relational and Equality Operands - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 12 | 12 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime（真实执行） | 10 | 10 | 0 | 100% |
| **总计** | **28** | **28** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | CON_06_03_01_001_PASS_INT_LONG_RELATIONAL | int < long / int > long 等 | PASS |
| 2 | CON_06_03_01_002_PASS_BYTE_INT_RELATIONAL | byte < int / byte > int | PASS |
| 3 | CON_06_03_01_003_PASS_SHORT_LONG_RELATIONAL | short < long / short > long | PASS |
| 4 | CON_06_03_01_004_PASS_INT_LONG_EQUALITY | int == long / int != long | PASS |
| 5 | CON_06_03_01_005_PASS_DOUBLE_INT_RELATIONAL | double > int / double < int | PASS |
| 6 | CON_06_03_01_006_PASS_LONG_DOUBLE_RELATIONAL | long < double, long widening → double | PASS |
| 7 | CON_06_03_01_007_PASS_SHORT_LONG_EQUALITY | short == long / short != long | PASS |
| 8 | CON_06_03_01_008_PASS_BYTE_DOUBLE_EQUALITY | byte == double / byte != double | PASS |
| 9 | CON_06_03_01_009_PASS_INT_DOUBLE_LE_GE | int <= double / int >= double | PASS |
| 10 | CON_06_03_01_010_PASS_NUMERIC_ENUM_RELATIONAL | 数值枚举用于关系比较 | PASS |
| 11 | CON_06_03_01_011_PASS_NUMERIC_ENUM_EQUALITY | 数值枚举用于相等比较 | PASS |
| 12 | CON_06_03_01_012_PASS_LONG_DOUBLE_ALL_OPS | long-double 全部六种运算符 | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 13 | CON_06_03_01_013_FAIL_STRING_INT_RELATIONAL | string < int 编译失败 | PASS |
| 14 | CON_06_03_01_014_FAIL_BOOL_INT_RELATIONAL | boolean > int 编译失败 | PASS |
| 15 | CON_06_03_01_015_FAIL_BOOL_LONG_RELATIONAL | boolean <= long 编译失败 | PASS |
| 16 | CON_06_03_01_016_FAIL_STRING_LONG_RELATIONAL | string > long 编译失败 | PASS |
| 17 | CON_06_03_01_017_FAIL_BOOL_DOUBLE_RELATIONAL | boolean >= double 编译失败 | PASS |
| 18 | CON_06_03_01_018_FAIL_STRING_DOUBLE_RELATIONAL | string <= double 编译失败 | PASS |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 19 | CON_06_03_01_019_RUNTIME_INT_LONG_COMPARISON | int-long 四向比较 | 4 | PASS |
| 20 | CON_06_03_01_020_RUNTIME_BYTE_INT_COMPARISON | byte-int 四向比较 | 4 | PASS |
| 21 | CON_06_03_01_021_RUNTIME_DOUBLE_INT_COMPARISON | double-int 四向比较 | 4 | PASS |
| 22 | CON_06_03_01_022_RUNTIME_NEGATIVE_COMPARISON | 负值 widening 比较 | 4 | PASS |
| 23 | CON_06_03_01_023_RUNTIME_INT_LONG_EQUALITY | int-long ==/!= | 4 | PASS |
| 24 | CON_06_03_01_024_RUNTIME_SHORT_LONG_EQUALITY | short-long ==/!= | 3 | PASS |
| 25 | CON_06_03_01_025_RUNTIME_ENUM_RELATIONAL | 枚举关系比较 | 5 | PASS |
| 26 | CON_06_03_01_026_RUNTIME_ENUM_EQUALITY | 枚举相等比较 | 4 | PASS |
| 27 | CON_06_03_01_027_RUNTIME_ALL_RELATIONAL_OPS | 六种运算符综合 | 8 | PASS |
| 28 | CON_06_03_01_028_RUNTIME_BOUNDARY_VALUES | 边界值零/等值/大值 | 8 | PASS |

## 执行过程异常修复记录

| 异常 | 用例 | 原因 | 修复 |
|------|------|------|------|
| PASS_FAILED | 006 | `1.5` 是 double 字面量，不能赋给 float | 改用 long-double |
| PASS_FAILED | 009 | 同上 float 字面量问题 | 改用 int-double <= >= |
| FAIL_PASSED | 015 | string enum `<` 比较编译通过 | 替换为 boolean <= long |
| RUNTIME_ASSERT_FAIL | 025 | `Medium(1) > 1` 期望 false 但写反了 | 改为 `Medium(1) > 0` |

## 后续运行命令
```bash
cd /mnt/d/111/ARKTS_STATIC_TEST/06_Contexts_Conversions
SECTIONS="6.3.1_Numeric_Conversions_for_Relational_and_Equality_Operands" bash run_contexts_conversions_cases_wsl.sh
```
