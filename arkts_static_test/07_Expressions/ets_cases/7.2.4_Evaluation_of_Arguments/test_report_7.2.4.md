# 7.2.4 Evaluation of Arguments - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 4 | 4 | 0 | 100% |
| compile-fail | 0 | 0 | 0 | — |
| runtime | 5 | 5 | 0 | 100% |
| **总计** | **9** | **9** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_02_04_001_PASS_FUNC_ARGS_LTR | 函数调用参数左到右基本编译 | ✅ |
| 002 | EXP_07_02_04_002_PASS_METHOD_ARGS_LTR | 方法调用参数左到右基本编译 | ✅ |
| 003 | EXP_07_02_04_003_PASS_CONSTRUCTOR_ARGS_LTR | 构造函数参数左到右基本编译 | ✅ |
| 004 | EXP_07_02_04_004_PASS_MIXED_CALL_TYPES | 三种调用类型混合编译 | ✅ |

### compile-fail

无

### runtime

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 005 | EXP_07_02_04_005_RUNTIME_FUNC_ARGS_ORDER | 函数参数 L→M→R 顺序 | ✅ |
| 006 | EXP_07_02_04_006_RUNTIME_METHOD_ARGS_ORDER | 方法参数 A→B→C 顺序 | ✅ |
| 007 | EXP_07_02_04_007_RUNTIME_CONSTRUCTOR_ARGS_ORDER | 构造参数 X→Y→Z 顺序 | ✅ |
| 008 | EXP_07_02_04_008_RUNTIME_LEFT_ABRUPT_SKIP_RIGHT | 左参数错误→右参数跳过 | ✅ (ArithmeticError) |
| 009 | EXP_07_02_04_009_RUNTIME_NESTED_FUNC_ARGS_ORDER | 嵌套函数调用参数顺序 | ✅ |

## 执行过程异常修复记录

无。本次运行即 100% 通过。

## 后续运行命令

```bash
SECTIONS="7.2.4_Evaluation_of_Arguments" bash run_expressions_cases_wsl.sh
```
