# 7.13.2 String Indexing Expression - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime | 4 | 4 | 0 | 100% |
| **总计** | **17** | **17** | **0** | **100%** |

> 基本信息：Spec 章节 7.13.2 String Indexing Expression，测试于 WSL (Ubuntu) + ArkCompiler toolchain。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_13_02_001_PASS_INT_LITERAL_INDEX | int 字面量索引字符串 | ✅ |
| 002 | EXP_07_13_02_002_PASS_INT_VARIABLE_INDEX | int 变量索引字符串 | ✅ |
| 003 | EXP_07_13_02_003_PASS_BYTE_INDEX | byte 类型索引（加宽到 int） | ✅ |
| 004 | EXP_07_13_02_004_PASS_SHORT_INDEX | short 类型索引（加宽到 int） | ✅ |
| 005 | EXP_07_13_02_005_PASS_INDEX_FIRST_LAST | 首尾索引（0 和 len-1） | ✅ |
| 006 | EXP_07_13_02_006_PASS_LONG_TO_INT_INDEX | long→.toInt() 显式转换后索引 | ✅ |
| 007 | EXP_07_13_02_007_PASS_CHAINING_SELF_INDEX | 方法返回值链式索引 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 008 | EXP_07_13_02_008_FAIL_IMMUTABLE_ASSIGN | 字符串不可变性修改 | ✅ (expected error) | |
| 009 | EXP_07_13_02_009_FAIL_STRING_INDEX | 字符串作为索引 | ✅ (expected error) | |
| 010 | EXP_07_13_02_010_FAIL_FLOAT_LITERAL_INDEX | 浮点字面量 3.5 索引 | ✅ (expected error) | |
| 011 | EXP_07_13_02_011_FAIL_LONG_INDEX | long 无转换索引 | ✅ (expected error) | |
| 012 | EXP_07_13_02_012_FAIL_FLOAT_INDEX | float 无转换索引 | ✅ (expected error) | |
| 013 | EXP_07_13_02_013_FAIL_DOUBLE_INDEX | double 无转换索引 | ✅ (expected error) | |

### runtime

| # | 用例 ID | 验证内容 | 预期行为 | 结果 |
|---|---------|---------|---------|------|
| 014 | EXP_07_13_02_014_RUNTIME_CHAR_ACCESS | 首/中/尾字符访问验证 | 正确访问 | ✅ |
| 015 | EXP_07_13_02_015_RUNTIME_VARIABLE_INDEX | int 变量索引运行时 | 正确访问 | ✅ |
| 016 | EXP_07_13_02_016_RUNTIME_OUT_OF_BOUNDS | 索引 ≥ 长度越界 | RangeError | ✅ |
| 017 | EXP_07_13_02_017_RUNTIME_NEGATIVE_INDEX | 负索引 | RangeError | ✅ |

## 执行过程异常修复记录

无异常修复记录。17/17 用例全部通过，0 个 D 类 Spec 不一致问题。

## 后续运行命令

```bash
SECTIONS="7.13.2_String_Indexing_Expression" bash run_expressions_cases_wsl.sh
```
