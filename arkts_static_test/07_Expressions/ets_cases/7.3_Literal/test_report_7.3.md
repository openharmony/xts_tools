# 7.3 Literal - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **11** | **11** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_03_001_PASS_INTEGER_LITERAL | 整数字面量所有进制（十进制、十六进制、八进制、二进制）编译通过 | ✅ |
| 002 | EXP_07_03_002_PASS_FLOAT_BIGINT_LITERAL | 浮点数字面量（double/float/scientific）和 bigint 字面量编译通过 | ✅ |
| 003 | EXP_07_03_003_PASS_STRING_BOOL_NULL | 字符串（双引号、单引号、转义序列）、布尔、null、undefined 字面量编译通过 | ✅ |
| 004 | EXP_07_03_004_PASS_NUMERIC_TYPE_INFERENCE | 数值字面量类型推断（int → int, long → long, f → float, n → bigint） | ✅ |
| 005 | EXP_07_03_005_PASS_UNDERSCORE_CHAR_LITERAL | 下划线分隔数值字面量（整型/浮点型）编译通过 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 006 | EXP_07_03_006_FAIL_INTEGER_TOO_LARGE | 整数字面量超出 long 范围 → compile-time error | ✅ |
| 007 | EXP_07_03_007_FAIL_FLOAT_TOO_LARGE | 浮点数字面量超出 float 范围 → compile-time error | ✅ |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 008 | EXP_07_03_008_RUNTIME_INTEGER_VALUES | 不同进制整数字面量值正确性（十进制、十六进制、八进制、二进制） | 6 | ✅ |
| 009 | EXP_07_03_009_RUNTIME_FLOAT_VALUES | 浮点数字面量值正确性（double、科学计数法、float、前导点） | 4 | ✅ |
| 010 | EXP_07_03_010_RUNTIME_BIGINT_STRING_VALUES | bigint 字面量和字符串字面量值正确性 | 4 | ✅ |
| 011 | EXP_07_03_011_RUNTIME_BOOLEAN_NULL_ASSIGN | 布尔字面量 true/false 值正确性 | 4 | ✅ |

## 执行过程异常修复记录

| 问题 | 原因 | 修复 |
|------|------|------|
| 003 字符串 newline 错误 | `"unicode\"` 末尾反斜杠转义了引号导致字符串未闭合 | 改为 `"unicodeA"` |
| 005 值超出 int 范围 | `0xFFFF_FFFF`(4294967295) > max int(2147483647) | 类型改为 `long` |
| 005 char 类型不匹配 | `'A'` 在 ArkTS 中为字符串字面量类型而非 char | 移除 char 行（char 为实验特性） |

## 后续运行命令

```bash
cd /mnt/e/harmonyText/xts/xuqiu/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.3_Literal" bash run_expressions_cases_wsl.sh
```
