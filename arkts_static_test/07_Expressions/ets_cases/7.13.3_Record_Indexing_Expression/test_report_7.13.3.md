# 7.13.3 Record Indexing Expression - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 6 | 1（D类 SPEC不一致） | 85.7% |
| compile-fail | 5 | 4 | 1（D类 SPEC不一致） | 80% |
| runtime | 4 | 4 | 0 | 100% |
| **总计** | **16** | **14** | **2** | **87.5%** |

> 注：2 个异常均为 D 类 Spec 不一致，已在 issue_report.md 和 design_issues_report 中记录。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_13_03_001_PASS_CASE1_LITERAL_READ | Case1 字面量联合 Key 合法读取 | ✅ |
| 002 | EXP_07_13_03_002_PASS_CASE1_LITERAL_WRITE | Case1 字面量联合 Key 合法写入 | ✅ |
| 003 | EXP_07_13_03_003_PASS_CASE1_FIELD_ACCESS | Case1 字段访问符号 x.key2 | ⚠️ D类（编译器不支持） |
| 004 | EXP_07_13_03_004_PASS_CASE2_DIRECT_LITERAL_INDEX | Case2 直接字面量索引 | ✅ |
| 005 | EXP_07_13_03_005_PASS_CASE2_NUMBER_KEY | Case2 number 键变量索引 | ✅ |
| 006 | EXP_07_13_03_006_PASS_CASE2_STRING_KEY | Case2 string 键变量索引 | ✅ |
| 007 | EXP_07_13_03_007_PASS_CASE2_UNDEFINED_CHECK | Case2 undefined 检查 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 008 | EXP_07_13_03_008_FAIL_CASE1_INVALID_LITERAL_READ | 无效字面量读取 | ✅ (expected error) | |
| 009 | EXP_07_13_03_009_FAIL_CASE1_INVALID_LITERAL_WRITE | 无效字面量写入 | ✅ (expected error) | |
| 010 | EXP_07_13_03_010_FAIL_CASE1_VARIABLE_INDEX | 变量索引 | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |
| 011 | EXP_07_13_03_011_FAIL_CASE1_NUMERIC_NOT_IN_UNION | 数值不在联合 | ✅ (expected error) | |
| 012 | EXP_07_13_03_012_FAIL_CASE1_INVALID_FIELD_ACCESS | 无效字段访问 | ✅ (expected error) | |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 013 | EXP_07_13_03_013_RUNTIME_CASE1_VALID_KEYS | Case1 有效键值验证 | - | ✅ |
| 014 | EXP_07_13_03_014_RUNTIME_CASE2_MISSING_UNDEFINED | Case2 缺失键返回 undefined | - | ✅ |
| 015 | EXP_07_13_03_015_RUNTIME_CASE2_NARROW_UNDEFINED | Case2 undefined 收窄 | - | ✅ |
| 016 | EXP_07_13_03_016_RUNTIME_CASE1_FIELD_ACCESS_VALUE | Case1 方括号索引运行时 | - | ✅ |

## 执行过程异常修复记录

1. **字段访问符号 `x.key2` 编译器不支持**：EXP_07_13_03_003_PASS_CASE1_FIELD_ACCESS 预期 compile-pass 但实际编译失败（D 类 Spec 不一致）。已记录在 design_issues_report 中。
2. **Case 1 变量索引应报编译错误但编译器允许**：EXP_07_13_03_010_FAIL_CASE1_VARIABLE_INDEX 预期 compile-fail 但实际编译通过（D 类 Spec 不一致）。已记录在 design_issues_report 中。
3. **数值字面量类型不支持**：`type NKeys = 1 | 2 | 3` 语法在 ArkTS 中不被支持。已移除无效测试 EXP_07_13_03_004_PASS_CASE1_NUMERIC_LITERAL_UNION，替换为 Case 2 测试。

## 后续运行命令

```bash
SECTIONS="7.13.3_Record_Indexing_Expression" bash run_expressions_cases_wsl.sh
```
