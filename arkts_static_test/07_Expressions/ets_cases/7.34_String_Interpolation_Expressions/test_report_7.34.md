# 7.34 String Interpolation Expressions - 测试执行报告

> 最后编译验证：2026-06-23，es2panda `--extension=ets`，Linux native

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **13** | **13** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_34_001_PASS_BASIC_INTERPOLATION.ets | 基本类型变量插值（string/int/long/float/double/boolean） | ✅ |
| 002 | EXP_07_34_002_PASS_ARITHMETIC_INTERPOLATION.ets | 算术表达式插值（+ - * /） | ✅ |
| 003 | EXP_07_34_003_PASS_MULTIPLE_EXPRESSIONS.ets | 多个嵌入表达式（连续、混合） | ✅ |
| 004 | EXP_07_34_004_PASS_METHOD_CALL_INTERPOLATION.ets | 方法/函数调用嵌入 | ✅ |
| 005 | EXP_07_34_005_PASS_BOOLEAN_NULL_INTERPOLATION.ets | 布尔/null/undefined 插值 | ✅ |
| 006 | EXP_07_34_006_PASS_FIELD_ARRAY_INTERPOLATION.ets | 字段访问/数组元素插值 | ✅ |
| 007 | EXP_07_34_007_PASS_NESTED_BACKTICK.ets | 嵌套反引号插值 | ✅ |
| 008 | EXP_07_34_008_PASS_PLAIN_BACKTICK.ets | 纯反引号多行字符串 | ✅ |
| 009 | EXP_07_34_009_PASS_CONCAT_EQUIVALENT.ets | 与字符串拼接等价 | ✅ |
| 010 | EXP_07_34_010_PASS_COMPLEX_EXPRESSIONS.ets | 复杂表达式（三元、substring） | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 011 | EXP_07_34_011_FAIL_TYPE_ERROR_IN_EXPRESSION.ets | 嵌入表达式中的类型错误（int.substring） | ✅ 编译错误 |
| 012 | EXP_07_34_012_FAIL_ASSIGN_TO_NON_STRING.ets | 插值结果赋给 int | ✅ 编译错误 |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 013 | EXP_07_34_013_RUNTIME_SEMANTICS.ets | 变量/算术/多表达式/布尔/方法/字段/数组/拼接等价/无插值 | 12 | ✅ |

## 执行过程异常修复记录

| 问题 | 文件 | 原因 | 修复 |
|------|------|------|------|
| runtime 断言 4 失败 | 013 | 期望值 "1 and 2 and 5" 但变量 a=2（前序测试修改），实际值为 "2 and 3 and 5" | 修正期望值为实际变量值 |

## 后续运行命令

```bash
SECTIONS="7.34_String_Interpolation_Expressions" bash run_expressions_cases_wsl.sh
```
