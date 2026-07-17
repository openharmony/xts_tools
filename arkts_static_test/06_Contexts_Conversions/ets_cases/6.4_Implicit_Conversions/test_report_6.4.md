# 6.4 Implicit Conversions - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime（真实执行） | 8 | 8 | 0 | 100% |
| **总计** | **23** | **23** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | CON_06_04_001_PASS_WIDENING_IN_DECLARATION | int→number/long, byte→short/int/long | PASS |
| 2 | CON_06_04_002_PASS_ENUM_TO_NUMERIC | 数值枚举→int/long/double | PASS |
| 3 | CON_06_04_003_PASS_ENUM_TO_STRING | string 枚举 + 字符串拼接 | PASS |
| 4 | CON_06_04_004_PASS_WIDENING_TO_UNION | int→(int\|long), int→(int\|double) | PASS |
| 5 | CON_06_04_005_PASS_MULTI_CONVERSION_COEXIST | 三种转换共存 | PASS |
| 6 | CON_06_04_006_PASS_WIDENING_IN_CALL | int 实参→long/double 形参 | PASS |
| 7 | CON_06_04_007_PASS_WIDENING_IN_RETURN | return int→long/double | PASS |
| 8 | CON_06_04_008_PASS_CONVERSION_CHAIN | enum→int→long→double | PASS |
| 9 | CON_06_04_009_PASS_NULLISH_CONVERSION | null/undefined + string | PASS |
| 10 | CON_06_04_010_PASS_BOOL_STRING_CONVERSION | true/false + string | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 11 | CON_06_04_011_FAIL_NARROWING_NUMBER_TO_INT | number→int narrowing 失败 | PASS |
| 12 | CON_06_04_012_FAIL_STRING_ENUM_IN_NUMERIC | string enum 用于算术失败 | PASS |
| 13 | CON_06_04_013_FAIL_DOUBLE_TO_INT | double→int narrowing 失败 | PASS |
| 14 | CON_06_04_014_FAIL_NUMERIC_ENUM_IN_STRING | 数值枚举直接赋给 string 失败 | PASS |
| 15 | CON_06_04_015_FAIL_WIDENING_WRONG_CONTEXT | string 赋值给 int 字段失败 | PASS |

### runtime
| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 16 | CON_06_04_016_RUNTIME_WIDENING_VALUES | int→long, int→double, byte→int | PASS |
| 17 | CON_06_04_017_RUNTIME_ENUM_TO_NUMERIC_VALUES | enum→int/long 值正确 | PASS |
| 18 | CON_06_04_018_RUNTIME_ENUM_TO_STRING_VALUES | string enum→string 值正确 | PASS |
| 19 | CON_06_04_019_RUNTIME_WIDENING_TO_UNION | int→union 值不变 | PASS |
| 20 | CON_06_04_020_RUNTIME_CONVERSION_CHAIN | enum→int→long→double 链 | PASS |
| 21 | CON_06_04_021_RUNTIME_NULLISH_STRING_VALUES | null→"null", undefined→"undefined" | PASS |
| 22 | CON_06_04_022_RUNTIME_BOOL_STRING_VALUES | true→"true", false→"false" | PASS |
| 23 | CON_06_04_023_RUNTIME_ALL_CONVERSIONS_INTEGRATION | 全部转换集成验证 | PASS |

## 隐式转换覆盖矩阵

| 转换类型 | 声明 | 赋值 | 调用 | 返回 | 复合 | String |
|----------|:--:|:--:|:--:|:--:|:--:|:--:|
| Widening Numeric | 001 | — | 006 | 007 | — | — |
| Enum→Numeric | 002 | — | — | — | — | — |
| Enum→String | — | — | — | — | — | 003 |
| Widening→Union | 004 | — | — | — | — | — |
| null/undefined | — | — | — | — | — | 009 |
| boolean | — | — | — | — | — | 010 |

## 后续运行命令
```bash
cd /mnt/d/111/ARKTS_STATIC_TEST/06_Contexts_Conversions
SECTIONS="6.4_Implicit_Conversions" bash run_contexts_conversions_cases_wsl.sh
```
