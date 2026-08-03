# 7.2.3 Order of Expression Evaluation - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 12 | 12 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime | 11 | 11 | 0 | 100% |
| **总计** | **25** | **25** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_02_03_001_PASS_BINARY_LEFT_RIGHT | 二元运算左到右求值 | ✅ |
| 002 | EXP_07_02_03_002_PASS_TERNARY_FIRST | 三元条件优先求值 | ✅ |
| 003 | EXP_07_02_03_003_PASS_SHORT_AND_TRUE | && true 路径 | ✅ |
| 004 | EXP_07_02_03_004_PASS_SHORT_OR_FALSE | \|\| false 路径 | ✅ |
| 005 | EXP_07_02_03_005_PASS_ASSIGN_RIGHT_ASSOC_ORDER | 赋值右结合求值顺序 | ✅ |
| 006 | EXP_07_02_03_006_PASS_FUNC_ARGS_LEFT_RIGHT | 函数参数从左到右 | ✅ |
| 007 | EXP_07_02_03_007_PASS_INT_ASSOCIATIVE | 整数加乘可结合 | ✅ |
| 008 | EXP_07_02_03_008_PASS_PAREN_OVERRIDE | 括号覆盖优先级 | ✅ |
| 009 | EXP_07_02_03_009_PASS_MIXED_COMPOUND | 混合复合表达式 | ✅ |
| 010 | EXP_07_02_03_010_PASS_NULLISH_COALESCING | nullish 合并求值顺序 | ✅ |
| 011 | EXP_07_02_03_011_PASS_CHAINED_LOGICAL | 链式逻辑运算 | ✅ |
| 012 | EXP_07_02_03_012_PASS_MULTI_BINARY | 多层二元运算 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 013 | EXP_07_02_03_013_FAIL_NULLISH_MIXED_AND | ?? 与 && 混合无括号 | ✅ | |
| 014 | EXP_07_02_03_014_FAIL_NULLISH_MIXED_OR | ?? 与 \|\| 混合无括号 | ✅ | |

### runtime

| # | 用例 ID | 验证内容 | 断言 | 结果 |
|---|---------|---------|------|------|
| 015 | EXP_07_02_03_015_RUNTIME_BINARY_ORDER | 二元运算左到右顺序 | trace=="LR"/"AB"/"XY" | ✅ |
| 016 | EXP_07_02_03_016_RUNTIME_TERNARY_BRANCH | 三元条件+仅一分支 | trace=="CT"/"cf" | ✅ |
| 017 | EXP_07_02_03_017_RUNTIME_SHORT_AND | && 短路跳过右 | trace=="trueR"/"false"/"false" | ✅ |
| 018 | EXP_07_02_03_018_RUNTIME_SHORT_OR | \|\| 短路跳过右 | trace=="falseR"/"true"/"true" | ✅ |
| 019 | EXP_07_02_03_019_RUNTIME_ASSIGN_RIGHT_ASSOC | 赋值右结合+值传播 | trace=="leftmidright", result | ✅ |
| 020 | EXP_07_02_03_020_RUNTIME_FUNC_ARGS_ORDER | 函数参数左到右顺序 | trace=="LMR"/"ABC" | ✅ |
| 021 | EXP_07_02_03_021_RUNTIME_ARGS_ABRUPT | 参数异常跳过右侧 | ArithmeticError | ✅ |
| 022 | EXP_07_02_03_022_RUNTIME_CHAINED_LOGICAL | 链式逻辑短路 | trace验证 | ✅ |
| 023 | EXP_07_02_03_023_RUNTIME_PAREN_OVERRIDE_ORDER | 括号改变求值顺序 | a=6, b=8, trace=="XYZ" | ✅ |
| 024 | EXP_07_02_03_024_RUNTIME_FLOAT_NON_ASSOC | 浮点数非结合性 | 输出验证 | ✅ |
| 025 | EXP_07_02_03_025_RUNTIME_NULLISH_SHORT | nullish 短路 | trace=="R"/"" | ✅ |

## 执行过程异常修复记录

### 修复 1: Box 类名冲突

`class Box` 与 stdlib 已定义的 `Box` 类冲突，重命名为 `TagBox`。

**影响文件：** EXP_07_02_03_005_PASS_ASSIGN_RIGHT_ASSOC_ORDER

### 修复 2: 链式逻辑测试断言错误

`||` 链式 "all false" 测试使用 `track("U")` 返回 true（因 "U" != "false"），导致短路提前。改用 `trackTrue`/`trackFalse` 专用函数明确控制返回值。

**影响文件：** EXP_07_02_03_022_RUNTIME_CHAINED_LOGICAL

## 后续运行命令

```bash
SECTIONS="7.2.3_Order_of_Expression_Evaluation" bash run_expressions_cases_wsl.sh
```
