# 7.21.4 Prefix Decrement - 测试执行报告

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
| 001 | INT | int 变量前置递减 | ✅ |
| 002 | SHORT | short 变量前置递减（类型保持） | ✅ |
| 003 | LONG | long 变量前置递减 | ✅ |
| 004 | BYTE | byte 变量前置递减（类型保持，不提升为 int） | ✅ |
| 005 | FLOAT | float 变量前置递减 | ✅ |
| 006 | DOUBLE | double 变量前置递减 | ✅ |
| 007 | BIGINT | bigint 变量前置递减 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 021 | STRING | string 类型 -- | ✅ |
| 022 | BOOLEAN | boolean 类型 -- | ✅ |
| 023 | ENUM | enum 类型 -- | ✅ |
| 024 | LITERAL | 字面量 --5（非 LHS） | ✅ |
| 025 | FUNC_CALL | 函数调用结果 --（非 LHS） | ✅ |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 031 | INT_VALUE | --int 返回 4，x 变为 4 | - | ✅ |
| 032 | SHORT_VALUE | --short 返回 0，x 变为 0（类型保持 short） | - | ✅ |
| 033 | LONG_VALUE | --long 返回 10000000000，x 变为 10000000000 | - | ✅ |
| 034 | BYTE_VALUE | --byte 返回 9，x 变为 9（类型保持 byte） | - | ✅ |
| 035 | FLOAT_VALUE | --float 返回 0.5，x 变为 0.5 | - | ✅ |
| 036 | DOUBLE_VALUE | --double 返回 1.0，x 变为 1.0 | - | ✅ |
| 037 | BIGINT_VALUE | --bigint 返回 1n，x 变为 1n | - | ✅ |
| 038 | INT_UNDERFLOW | --int.MIN → 2147483647（回绕行为，返回溢出后新值） | - | ✅ |

## 执行过程异常修复记录

无。

## 后续运行命令

```bash
SECTIONS="7.21.4_Prefix_Decrement" bash run_expressions_cases_wsl.sh
```
