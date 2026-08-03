# 7.35.4 Runtime Evaluation of Lambda Expressions - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 2 | 2 | 0 | 100% |
| compile-fail | 0 | 0 | 0 | — |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **6** | **6** | **0** | **100%** |

> 测试环境：Linux native (es2panda + ark) | es2panda 版本：ArkCompiler latest | 测试日期：2026-06-23

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_35_04_001_PASS_LAMBDA_EVAL_NO_BODY | Lambda 求值不执行体（定义编译） | ✅ |
| 002 | EXP_07_35_04_002_PASS_VARIABLE_CAPTURE_DECL | 变量捕获声明 | ✅ |

### compile-fail

无 compile-fail 用例。

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 003 | EXP_07_35_04_003_RUNTIME_LAMBDA_EVAL_INSTANCE | Lambda 体延迟执行，多次调用累积状态 | 6 | ✅ |
| 004 | EXP_07_35_04_004_RUNTIME_CAPTURE_SEMANTICS | 捕获语义：非拷贝，修改反映到原始变量 | 6 | ✅ |
| 005 | EXP_07_35_04_005_RUNTIME_FUNCTION_SCOPE_CAPTURE | 函数作用域捕获：func1/func2 独立 | 6 | ✅ |
| 006 | EXP_07_35_04_006_RUNTIME_LOOP_SCOPE_CAPTURE | 循环作用域捕获：每迭代独立 | 8 | ✅ |

## Cross-language 验证

| 语言 | 总数 | 通过 | 失败 | 通过率 |
|:----:|:----:|:----:|:----:|:------:|
| Java | 5 | 5 | 0 | 100% |
| Swift | 5 | 5 | 0 | 100% |

## 执行过程异常修复记录

无异常记录。所有 compile-pass 用例均编译通过，所有 runtime 用例均正确执行并输出 "verified"。

## 后续运行命令

```bash
SECTIONS="7.35.4_Runtime_Evaluation_of_Lambda_Expressions" bash run_expressions_cases_wsl.sh
```
