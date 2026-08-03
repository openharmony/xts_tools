# 7.16 instanceof Expression - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime | 4 | 4 | 0 | 100% |
| **总计** | **14** | **14** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_16_001_PASS_BASIC_INSTANCEOF | 基本 instanceof 类层次结构 | ✅ |
| 002 | EXP_07_16_002_PASS_INSTANCEOF_SMART_CAST | if 子句中 smart cast | ✅ |
| 003 | EXP_07_16_003_PASS_GENERIC_TYPE_NAME | 泛型类名（擦除）检查 | ✅ |
| 004 | EXP_07_16_004_PASS_UNRELATED_TYPE | 不相关类型 instanceof | ✅ |
| 005 | EXP_07_16_005_PASS_SUPERCLASS_CHECK | 子类 instanceof 父类 | ✅ |
| 006 | EXP_07_16_006_PASS_BOOLEAN_EXPRESSION | 布尔表达式中的 instanceof | ✅ |
| 007 | EXP_07_16_007_PASS_ALWAYS_TRUE_WARNING | 始终 true 编译警告 | ✅ (W1001506) |
| 008 | EXP_07_16_008_PASS_ALWAYS_FALSE_WARNING | 始终 false 编译警告 | ✅ (W1001506) |

**编译时警告验证**：
- **007**: `Warning W1001506: the value of the instanceof expression is known at compile-time as true`
- **008**: `Warning W1001506: the value of the instanceof expression is known at compile-time as false`

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 009 | EXP_07_16_009_FAIL_GENERIC_TYPE_ARG | 泛型参数 B\<T\> 未保留 | ✅ (expected error) | Syntax error ESY18871 |
| 010 | EXP_07_16_010_FAIL_TYPE_PARAM_DIRECT | 类型参数 T 直接使用 | ✅ (expected error) | Semantic error ESE38251 |

**错误详情**：
- **009**: `Syntax error ESY18871: Type parameter is erased from type 'B' when used in instanceof expression.`
- **010**: `Semantic error ESE38251: Type 'T' cannot be used on the right hand side of an 'instanceof' expression`

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 011 | EXP_07_16_011_RUNTIME_TRUE_CASE | 子类 instanceof 为 true | 1 | ✅ |
| 012 | EXP_07_16_012_RUNTIME_FALSE_CASE | 不相关类型 instanceof 为 false | 1 | ✅ |
| 013 | EXP_07_16_013_RUNTIME_NULL_INSTANCEOF | undefined instanceof 为 false | 1 | ✅ |
| 014 | EXP_07_16_014_RUNTIME_INTERFACE_INSTANCEOF | 接口引用 instanceof 类 | 2 | ✅ |

## 执行过程异常修复记录

无异常。14/14 用例全部正确通过，0 个 D 类 Spec 不一致。

## 后续运行命令

```bash
SECTIONS="7.16_instanceof_Expression" bash run_expressions_cases_wsl.sh
```
