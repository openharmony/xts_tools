# 7.6.3 Object Literal of Record Type - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime | 3 | 3 | 0 | 100% |
| **总计** | **17** | **17** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 001 | EXP_07_06_03_001_PASS_BASIC_STRING_NUMBER | Record<string, number> 基本键值对 | PASS |
| 002 | EXP_07_06_03_002_PASS_OBJECT_VALUES | Record<string, PersonInfo> 对象值 | PASS |
| 003 | EXP_07_06_03_003_PASS_NUMERIC_KEYS | Record<number, string> 数值键 | PASS |
| 004 | EXP_07_06_03_004_PASS_BOOLEAN_VALUES | Record<string, boolean> 布尔值 | PASS |
| 005 | EXP_07_06_03_005_PASS_LITERAL_UNION_ALL | 字面量 union Key 全部提供 | PASS |
| 006 | EXP_07_06_03_006_PASS_SINGLE_ENTRY | 单条目 | PASS |
| 007 | EXP_07_06_03_007_PASS_TRAILING_COMMA | 尾部逗号 | PASS |
| 008 | EXP_07_06_03_008_PASS_INT_VALUES | Record<string, int> 整数值 | PASS |
| 009 | EXP_07_06_03_009_PASS_ARRAY_VALUES | Record<string, string[]> 数组值 | PASS |
| 010 | EXP_07_06_03_010_PASS_THREE_LITERAL_KEYS | 三变体 union Key 全部提供 | PASS |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|----------|------|
| 011 | EXP_07_06_03_011_FAIL_MISSING_LITERAL_KEY | 字面量 union Key 缺少变体 | PASS (expected error) |
| 012 | EXP_07_06_03_012_FAIL_KEY_TYPE_MISMATCH | Key 类型不兼容 | PASS (expected error) |
| 013 | EXP_07_06_03_013_FAIL_VALUE_TYPE_MISMATCH | Value 类型不兼容 | PASS (expected error) |
| 014 | EXP_07_06_03_014_FAIL_INVALID_KEY_TYPE | Key 类型不合法（boolean） | PASS (expected error) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|----------|--------|------|
| 015 | EXP_07_06_03_015_RUNTIME_STRING_INDEXING | Record 字符串索引取值 | 2 | PASS |
| 016 | EXP_07_06_03_016_RUNTIME_OBJECT_VALUES | Record 对象值嵌套访问 | 2 | PASS |
| 017 | EXP_07_06_03_017_RUNTIME_NUMERIC_INDEXING | Record 数值索引访问 | 2 | PASS |

## 执行过程异常修复记录

| 问题 | 修复 |
|------|------|
| 016 RUNTIME_OBJECT_VALUES: "Value is possibly nullish" — Record 索引返回 `T \| undefined` | 索引表达式后加 `!` 非空断言：`map["John"]!.age` |

## 后续运行命令

```bash
# 运行当前子章节所有用例
SECTIONS="7.6.3_Object_Literal_of_Record_Type" bash run_expressions_cases_wsl.sh

# 运行全部章节用例
bash run_expressions_cases_wsl.sh
```
