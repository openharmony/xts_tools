# 7.21.1 Postfix Increment - 测试执行报告

| 项目 | 值 |
|------|-----|
| 测试日期 | 2026-06-22 |
| 编译器版本 | es2panda (ArkCompiler) |
| 运行时版本 | ark (ArkCompiler VM) |
| 编译选项 | --extension=ets |

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|:----:|:----:|:----:|:------:|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime | 8 | 8 | 0 | 100% |
| **总计** | **20** | **20** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | INT | int 变量后置递增 | ✅ |
| 002 | SHORT | short 变量后置递增 | ✅ |
| 003 | LONG | long 变量后置递增 | ✅ |
| 004 | BYTE | byte 变量后置递增（类型不提升为 int） | ✅ |
| 005 | FLOAT | float 变量后置递增 | ✅ |
| 006 | DOUBLE | double 变量后置递增 | ✅ |
| 007 | BIGINT | bigint 变量后置递增 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 021 | STRING | string 类型 ++ | ✅ |
| 022 | BOOLEAN | boolean 类型 ++ | ✅ |
| 023 | ENUM | enum 类型 ++ | ✅ |
| 024 | LITERAL | 字面量 5++（非 LHS） | ✅ |
| 025 | FUNC_CALL | 函数调用结果 ++（非 LHS） | ✅ |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 031 | INT_VALUE | int++ 返回 5，x 变为 6 | - | ✅ |
| 032 | SHORT_VALUE | short++ 返回 1，x 变为 2 | - | ✅ |
| 033 | LONG_VALUE | long++ 返回 10000000000，x 变为 10000000001 | - | ✅ |
| 034 | BYTE_VALUE | byte++ 返回 10，x 变为 11（类型保持 byte）| - | ✅ |
| 035 | FLOAT_VALUE | float++ 返回 1.5，x 变为 2.5 | - | ✅ |
| 036 | DOUBLE_VALUE | double++ 返回 1.0，x 变为 2.0 | - | ✅ |
| 037 | BIGINT_VALUE | bigint++ 返回 1n，x 变为 2n | - | ✅ |
| 038 | INT_OVERFLOW | int.MAX_VALUE++ 返回 2147483647，x 变为 -2147483648 | - | ✅ |

## 执行过程异常修复记录

无。

## 后续运行命令

```bash
SECTIONS="7.21.1_Postfix_Increment" bash run_expressions_cases_wsl.sh
```
