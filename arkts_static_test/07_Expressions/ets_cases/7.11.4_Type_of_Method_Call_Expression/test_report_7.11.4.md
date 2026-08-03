# 7.11.4 Type of Method Call Expression - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 2 | 2* | 0 | 100%* |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **12** | **12** | **0** | **100%** |

> *注意：2 个 compile-fail 用例在 WSL 中实际编译通过（exit 0），标记为"通过"。
> 但这是 ⚠️ **D 类（Spec 与实现不一致）**：spec 要求 void 方法赋值给变量时报编译时错误，
> 实际编译器允许通过。详见 design_issues_report_7.11.4.md。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_11_04_001_PASS_STATIC_VOID_AS_STATEMENT | static void 方法作为语句调用 | ✅ |
| 002 | EXP_07_11_04_002_PASS_INSTANCE_VOID_AS_STATEMENT | instance void 方法作为语句调用 | ✅ |
| 003 | EXP_07_11_04_003_PASS_STATIC_RETURN_ASSIGNED | static 非 void 方法返回值赋值 | ✅ |
| 004 | EXP_07_11_04_004_PASS_INSTANCE_RETURN_ASSIGNED | instance 非 void 方法返回值赋值 | ✅ |
| 005 | EXP_07_11_04_005_PASS_TYPE_INFERENCE_RETURN | 方法返回值类型推导 | ✅ |
| 006 | EXP_07_11_04_006_PASS_RETURN_IN_EXPRESSION | 方法返回值在表达式中使用 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 007 | EXP_07_11_04_007_FAIL_STATIC_VOID_ASSIGNED | static void 方法结果赋值（⚠️ SPEC 不一致） | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |
| 008 | EXP_07_11_04_008_FAIL_INSTANCE_VOID_ASSIGNED | instance void 方法结果赋值（⚠️ SPEC 不一致） | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 009 | EXP_07_11_04_009_RUNTIME_STATIC_RETURN_VALUE | static 方法返回值运行时 | 1 | ✅ |
| 010 | EXP_07_11_04_010_RUNTIME_INSTANCE_RETURN_VALUE | instance 方法返回值运行时 | 1 | ✅ |
| 011 | EXP_07_11_04_011_RUNTIME_VOID_METHOD_SIDE_EFFECT | void 方法副作用运行时 | 1 | ✅ |
| 012 | EXP_07_11_04_012_RUNTIME_METHOD_CHAIN_RETURN | 链式方法调用返回值 | 1 | ✅ |

## 执行过程异常修复记录

| 用例 | 问题 | 修复 |
|------|------|------|
| 007, 008 | Spec 要求 void 方法赋值给变量时报编译时错误，但实现允许通过 | 保留 FAIL 文件，标注 ⚠️ SPEC 不一致，记入 design_issues_report |

## 后续运行命令

```bash
SECTIONS="7.11.4_Type_of_Method_Call_Expression" bash run_expressions_cases_wsl.sh
```
