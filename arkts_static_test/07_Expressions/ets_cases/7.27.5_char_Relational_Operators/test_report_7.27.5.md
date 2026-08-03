# 7.27.5 char Relational Operators - 测试执行报告

> 最后编译验证：2026-06-23，es2panda `--extension=ets`，Linux native

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **12** | **12** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_27_05_001_PASS_CHAR_BASIC | 四个关系运算符在 char 文字量上编译通过（`c'A' < c'B'` 等） | ✅ |
| 002 | EXP_07_27_05_002_PASS_CHAR_VARIABLES | `let` char 变量之间比较编译通过 | ✅ |
| 003 | EXP_07_27_05_003_PASS_CHAR_CONST | `const` char 常量之间比较编译通过 | ✅ |
| 004 | EXP_07_27_05_004_PASS_CHAR_NUMERIC | char 与数值类型（byte/int/long/double）比较编译通过 | ✅ |
| 005 | EXP_07_27_05_005_PASS_CHAR_EXPRESSION | 表达式/函数返回值作为操作数编译通过 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 006 | EXP_07_27_05_011_FAIL_CHAR_STRING | char + string → 编译时错误 | ✅ (expected error) |
| 007 | EXP_07_27_05_012_FAIL_CHAR_BOOLEAN | char + boolean → 编译时错误 | ✅ (expected error) |
| 008 | EXP_07_27_05_013_FAIL_CHAR_BIGINT | char + bigint → 编译时错误（bigint 非数值类型） | ✅ (expected error) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 009 | EXP_07_27_05_021_RUNTIME_ORDERING | 字符序验证：ASCII 数字/大小写字母，四个运算符全部组合 | 16 | ✅ |
| 010 | EXP_07_27_05_022_RUNTIME_BOUNDARY | 边界值：`\0`（0）、`￿`（65535） | 8 | ✅ |
| 011 | EXP_07_27_05_023_RUNTIME_NUMERIC | char 与 int/long/double 隐式转换比较 | 12 | ✅ |
| 012 | EXP_07_27_05_024_RUNTIME_EDGE | 变量、函数返回值、逻辑表达式场景 | 4 | ✅ |
| | **合计** | | **40** | |

### 跨语言验证

| 语言 | 断言数 | 通过 | 通过率 |
|:----:|:------:|:----:|:------:|
| Java | 32 | 32 | 100% |
| Swift | 24 | 24 | 100% |

## 执行过程异常修复记录

无执行过程异常。12/12 ArkTS 测试全部通过，0 D 类异常。运行时合计 40 个断言全部通过。char + 数值类型隐式转换正确（int/long/double）。非 char/非数值类型（string/boolean/bigint）编译时错误正确。Java 使用原生 char 运算符（同 ArkTS 语义），Swift Character 使用 Comparable 协议。

## 后续运行命令

```bash
SECTIONS="7.27.5_char_Relational_Operators" bash run_expressions_cases_wsl.sh
```
