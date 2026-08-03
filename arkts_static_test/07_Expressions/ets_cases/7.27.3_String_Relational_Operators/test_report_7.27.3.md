# 7.27.3 String Relational Operators - 测试执行报告

> 最后编译验证：2026-06-23，es2panda `--extension=ets`，Linux native

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime（真实执行） | 8 | 8 | 0 | 100% |
| **总计** | **20** | **20** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_27_03_001_PASS_STRING_BASIC | 四个关系运算符在 "abc"/"def" 上编译通过 | ✅ |
| 002 | EXP_07_27_03_002_PASS_STRING_EMPTY | 空字符串与普通字符串比较编译通过 | ✅ |
| 003 | EXP_07_27_03_003_PASS_STRING_CASE | 大小写敏感性比较编译通过 | ✅ |
| 004 | EXP_07_27_03_004_PASS_STRING_ASCII_ORDER | ASCII 字符顺序比较编译通过 | ✅ |
| 005 | EXP_07_27_03_005_PASS_STRING_EQUAL | 相同字符串比较编译通过 | ✅ |
| 006 | EXP_07_27_03_006_PASS_STRING_VARIABLES | const/let 字符串变量比较编译通过 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 007 | EXP_07_27_03_011_FAIL_STRING_INT | string vs int → 编译时错误 | ✅ (expected error) |
| 008 | EXP_07_27_03_012_FAIL_STRING_BOOLEAN | string vs boolean → 编译时错误 | ✅ (expected error) |
| 009 | EXP_07_27_03_013_FAIL_STRING_BIGINT | string vs bigint → 编译时错误 | ✅ (expected error) |
| 010 | EXP_07_27_03_014_FAIL_STRING_DOUBLE | string vs double → 编译时错误 | ✅ (expected error) |
| 011 | EXP_07_27_03_015_FAIL_STRING_OBJECT | string vs Object → 编译时错误 | ✅ (expected error) |
| 012 | EXP_07_27_03_016_FAIL_STRING_FLOAT | string vs float → 编译时错误 | ✅ (expected error) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 013 | EXP_07_27_03_021_RUNTIME_BASIC | 四个运算符基本运行时行为 | 8 | ✅ |
| 014 | EXP_07_27_03_022_RUNTIME_EMPTY_PREFIX | 空字符串和前缀规则 | 14 | ✅ |
| 015 | EXP_07_27_03_023_RUNTIME_CASE_SENSITIVITY | 大小写敏感性 | 10 | ✅ |
| 016 | EXP_07_27_03_024_RUNTIME_ASCII_ORDER | ASCII 字符顺序 | 12 | ✅ |
| 017 | EXP_07_27_03_025_RUNTIME_EQUAL_STRINGS | 相同字符串比较 | 12 | ✅ |
| 018 | EXP_07_27_03_026_RUNTIME_LEXICOGRAPHIC | 词典序详细规则 | 12 | ✅ |
| 019 | EXP_07_27_03_027_RUNTIME_LONG_STRINGS | 长字符串比较 | 10 | ✅ |
| 020 | EXP_07_27_03_028_RUNTIME_STRING_VARIABLES | 字符串变量比较 | 13 | ✅ |
| | **合计** | | **91** | |

### 跨语言验证

| 语言 | 断言数 | 通过 | 通过率 |
|:----:|:------:|:----:|:------:|
| Java | 80 | 80 | 100% |
| Swift | 76 | 76 | 100% |

## 执行过程异常修复记录

无执行过程异常。20/20 ArkTS 测试全部通过，0 D 类异常。三语言行为在 ASCII 范围内完全一致（Java 通过 compareTo()，Swift 通过原生运算符）。运行时合计 91 个断言全部通过。

## 后续运行命令

```bash
SECTIONS="7.27.3_String_Relational_Operators" bash run_expressions_cases_wsl.sh
```
