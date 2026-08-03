# 7.36.1 Specifics of Constant Expressions Evaluation - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 3 | 3 | 0 | 100% |
| compile-fail | 0 | 0 | 0 | — |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **6** | **6** | **0** | **100%** |

> 测试环境：Linux native (es2panda + ark) | es2panda 版本：ArkCompiler latest | 测试日期：2026-06-23

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_36_01_001_PASS_INT_CONST_FOLDING | 整型常量折叠（加减乘除/移位/位运算/一元/三元） | ✅ |
| 002 | EXP_07_36_01_002_PASS_DOUBLE_FLOAT_PROMOTION | double 提升 + 幂运算（始终 double） | ✅ |
| 003 | EXP_07_36_01_003_PASS_MIXED_CONST_EXPR | 混合常量表达式（关系/逻辑/三元/位运算） | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| — | 无 compile-fail 用例 | — | ✅ |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 004 | EXP_07_36_01_004_RUNTIME_CONST_ARITHMETIC | 运行时常量算术值验证 | 13 | ✅ |
| 005 | EXP_07_36_01_005_RUNTIME_TYPE_PROMOTION | 运行时类型提升值验证 | 9 | ✅ |
| 006 | EXP_07_36_01_006_RUNTIME_MIXED_CONST_EXPR | 运行时混合表达式验证 | 8 | ✅ |

## Cross-language 验证

| 语言 | 总数 | 通过 | 失败 | 通过率 |
|:----:|:----:|:----:|:----:|:------:|
| Java | 30 | 30 | 0 | 100% |
| Swift | 29 | 29 | 0 | 100% |

## 异常记录

| 类型 | 数量 | 说明 |
|:----:|:----:|------|
| D 类（Spec 与实现不一致） | 0 | — |
| 修复记录 | 0 | — |

## 执行过程异常修复记录

无异常记录。所有用例按预期通过。

## 后续运行命令

```bash
SECTIONS="7.36.1_Specifics_of_Constant_Expressions_Evaluation" bash run_expressions_cases_wsl.sh
```
