# 7.35.1 Lambda Signature - 测试执行报告

> 最后编译验证：2026-06-23，es2panda `--extension=ets`，Linux native

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **12** | **12** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_35_01_001_PASS_SINGLE_PARAM_INFERRED | 单参数类型从目标类型上下文推断（int/string/boolean/double/long） | ✅ |
| 002 | EXP_07_35_01_002_PASS_TYPED_PARAMETERS | 显式类型注解参数（int/string/boolean/long/double） | ✅ |
| 003 | EXP_07_35_01_003_PASS_MULTI_PARAM_WITH_TYPES | 多参数带显式类型注解（同类型 + 混合类型 + 三个参数） | ✅ |
| 004 | EXP_07_35_01_004_PASS_NO_PARAMS | 空参数列表 `() => expr`（int/string/boolean/double + 块体） | ✅ |
| 005 | EXP_07_35_01_005_PASS_RETURN_TYPE_ANNOTATION | 显式返回类型注解（单参数/多参数/无参/不同返回类型） | ✅ |
| 006 | EXP_07_35_01_006_PASS_GENERIC_LAMBDA_INFERENCE | 泛型函数上下文推断参数类型（apply<int/string/boolean/double> + combine） | ✅ |
| 007 | EXP_07_35_01_007_PASS_MULTI_PARAM_INFERRED | 多参数类型从目标类型上下文推断（参数名可不同于目标类型） | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 008 | EXP_07_35_01_008_FAIL_DUPLICATE_PARAM_NAME | 两个形式参数同名 `(x: int, x: int) => x + x` | ✅ (expected error) | |
| 009 | EXP_07_35_01_009_FAIL_TRIPLE_DUPLICATE_PARAM_NAME | 三个参数中两个同名（头尾相同）`(a: int, b: int, a: int) => ...` | ✅ (expected error) | |
| 010 | EXP_07_35_01_010_FAIL_NO_TYPE_NO_INFERENCE | 单参数无类型注解且无推断上下文 `const f = x => x` | ✅ (expected error) | |
| 011 | EXP_07_35_01_011_FAIL_MULTI_PARAM_NO_INFERENCE | 多参数无类型注解且无推断上下文 `const f = (a, b) => a + b` | ✅ (expected error) | |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 012 | EXP_07_35_01_012_RUNTIME_SEMANTICS | 类型推断参数/显式类型参数/多参数/无参/返回类型注解/混合类型 | 7 | ✅ |

## 执行过程异常修复记录

**修复 1：`string.length` 是属性而非方法**
- **涉及用例**：EXP_07_35_01_002（验证显式类型）、EXP_07_35_01_005（验证返回类型注解）
- **症状**：`Semantic error ESE0002: Type 'Int' has no call signatures.`
- **原因**：`s.length()` 中 `length` 是 `string` 的 `int` 类型属性，不能加括号调用
- **修复**：将 `s.length()` 改为 `s.length`

## 后续运行命令

```bash
cd /mnt/e/harmonyText/xts/xuqiu/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.35.1_Lambda_Signature" bash run_expressions_cases_wsl.sh
```
