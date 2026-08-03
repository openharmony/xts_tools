# 7.35.3 Lambda Expression Type - 测试执行报告

> 最后编译验证：2026-06-23，es2panda `--extension=ets`，Linux native

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **11** | **11** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_35_03_001_PASS_EXPLICIT_RETURN_TYPE | 显式返回类型标注（int/string/boolean/double/单参/多参） | ✅ |
| 002 | EXP_07_35_03_002_PASS_INFERRED_RETURN_EXPR | 表达式体推断返回类型 | ✅ |
| 003 | EXP_07_35_03_003_PASS_INFERRED_RETURN_BLOCK | 块体推断返回类型 | ✅ |
| 004 | EXP_07_35_03_004_PASS_CONTEXT_INFERRED_PARAM | 上下文推断参数类型 | ✅ |
| 005 | EXP_07_35_03_005_PASS_NO_PARAM_LAMBDA | 无参 lambda 多类型 | ✅ |
| 006 | EXP_07_35_03_006_PASS_VOID_RETURN_TYPE | Void 返回类型 lambda | ✅ |
| 007 | EXP_07_35_03_007_PASS_LAMBDA_AS_PARAM_RETURN | Lambda 作为参数/返回类型 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 008 | EXP_07_35_03_008_FAIL_PARAM_TYPE_MISMATCH | 参数类型不匹配 → compile-time error | ✅ | |
| 009 | EXP_07_35_03_009_FAIL_RETURN_TYPE_MISMATCH | 返回类型不匹配 → compile-time error | ✅ | |
| 010 | EXP_07_35_03_010_FAIL_PARAM_COUNT_MISMATCH | 参数数量不匹配 → compile-time error | ✅ | |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 011 | EXP_07_35_03_011_RUNTIME_SEMANTICS | 显式类型/推断类型/上下文推断/高阶函数返回值正确性 | 9 | ✅ |

## 执行过程异常修复记录

| 异常 | 涉及文件 | 修复方法 |
|------|---------|---------|
| ESY0295: double 是预定义类型不能作为标识符 | EXP_07_35_03_007 | 函数名 `makeMultiplier` 中的变量 `double` → 改为 `timesTwo`；函数重命名为 `makeTimes` |

## 后续运行命令

```bash
SECTIONS="7.35.3_Lambda_Expression_Type" bash run_expressions_cases_wsl.sh
```
