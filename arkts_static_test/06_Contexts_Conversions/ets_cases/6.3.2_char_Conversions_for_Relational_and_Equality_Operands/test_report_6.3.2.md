# 6.3.2 char Conversions for Relational and Equality Operands - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 12 | 12 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime（真实执行） | 9 | 9 | 0 | 100% |
| **总计** | **26** | **26** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | CON_06_03_02_001_PASS_CHAR_BYTE_RELATIONAL | char < byte (both→int) | PASS |
| 2 | CON_06_03_02_002_PASS_CHAR_INT_RELATIONAL | char < int (char→int) | PASS |
| 3 | CON_06_03_02_003_PASS_CHAR_LONG_RELATIONAL | char < long (char→long) | PASS |
| 4 | CON_06_03_02_004_PASS_CHAR_DOUBLE_RELATIONAL | char < double (char→double) | PASS |
| 5 | CON_06_03_02_005_PASS_BYTE_CHAR_RELATIONAL | byte < char (both→int) | PASS |
| 6 | CON_06_03_02_006_PASS_INT_CHAR_RELATIONAL | int < char | PASS |
| 7 | CON_06_03_02_007_PASS_CHAR_INT_EQUALITY | char == int / char != int | PASS |
| 8 | CON_06_03_02_008_PASS_CHAR_LONG_EQUALITY | char == long / char != long | PASS |
| 9 | CON_06_03_02_009_PASS_CHAR_CHAR_RELATIONAL | char < char / == (both→int) | PASS |
| 10 | CON_06_03_02_010_PASS_CHAR_BYTE_EQUALITY | char == byte / char != byte | PASS |
| 11 | CON_06_03_02_011_PASS_CHAR_DOUBLE_EQUALITY | char == double / char != double | PASS |
| 12 | CON_06_03_02_012_PASS_CHAR_ALL_OPS | char×所有数值类型全部六种运算符 | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 13 | CON_06_03_02_013_FAIL_CHAR_STRING_RELATIONAL | char < string 编译失败 | PASS |
| 14 | CON_06_03_02_014_FAIL_CHAR_BOOL_RELATIONAL | char < boolean 编译失败 | PASS |
| 15 | CON_06_03_02_015_FAIL_STRING_CHAR_RELATIONAL | string > char 编译失败 | PASS |
| 16 | CON_06_03_02_016_FAIL_BOOL_CHAR_RELATIONAL | boolean >= char 编译失败 | PASS |
| 17 | CON_06_03_02_017_FAIL_CHAR_STRING_EQUALITY | char <= string 编译失败 | PASS |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 18 | CON_06_03_02_018_RUNTIME_CHAR_BYTE_COMPARISON | char vs byte widening→int | 4 | PASS |
| 19 | CON_06_03_02_019_RUNTIME_CHAR_INT_COMPARISON | char vs int widening→int | 4 | PASS |
| 20 | CON_06_03_02_020_RUNTIME_CHAR_LONG_COMPARISON | char vs long widening→long | 4 | PASS |
| 21 | CON_06_03_02_021_RUNTIME_CHAR_DOUBLE_COMPARISON | char vs double widening→double | 3 | PASS |
| 22 | CON_06_03_02_022_RUNTIME_CHAR_CHAR_COMPARISON | char vs char widening→int | 5 | PASS |
| 23 | CON_06_03_02_023_RUNTIME_CHAR_BOUNDARY | char 边界值(\u0000, \uffff) | 4 | PASS |
| 24 | CON_06_03_02_024_RUNTIME_CHAR_ALL_RELATIONAL_OPS | char 六种运算符综合 | 8 | PASS |
| 25 | CON_06_03_02_025_RUNTIME_CHAR_NEGATIVE_COMPARISON | char vs 负值 int/long/double | 3 | PASS |
| 26 | CON_06_03_02_026_RUNTIME_PARAM_CHAR_ALL_TYPES | 函数参数 char vs 全部类型（与spec一致） | 6 | PASS |

## 执行过程异常修复记录

| 异常 | 用例 | 原因 | 修复 |
|------|------|------|------|
| RUNTIME_ASSERT_FAIL | 019 | `'Z'(90) < 80` 永假 | 调整值: `200 > 'Z'` 和 `'Z' > 80` |
| RUNTIME_ASSERT_FAIL | 022 | `if (a != b) throw` 逻辑反了 | 改为 `if (a == b) throw` |

## char Widing 规则验证结果

| 另一操作数 | char 转换为 | 验证 |
|-----------|-----------|------|
| byte | int | ✔ |
| char | int | ✔ |
| int | int | ✔ |
| long | long | ✔ |
| double | double | ✔ |

## 后续运行命令
```bash
cd /mnt/d/111/ARKTS_STATIC_TEST/06_Contexts_Conversions
SECTIONS="6.3.2_char_Conversions_for_Relational_and_Equality_Operands" bash run_contexts_conversions_cases_wsl.sh
```
