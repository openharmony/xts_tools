# 7.32.3 Left Hand Side Expressions - 测试执行报告

> 最后编译验证：2026-06-23，es2panda `--extension=ets`，Linux native

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 14 | 14 | 0 | 100% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **22** | **22** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|:-:|---------|----------|:----:|
| 001 | EXP_07_32_03_001_PASS_VARIABLE_LHS | 变量作为左值（int/long/float/double/string/boolean 6 种类型） | ✅ |
| 002 | EXP_07_32_03_002_PASS_PARAMETER_LHS | 参数（非 this）作为左值（函数参数/方法参数） | ✅ |
| 003 | EXP_07_32_03_003_PASS_FIELD_ACCESS_LHS | 字段访问 as 左值（公有字段/嵌套字段/链式赋值） | ✅ |
| 004 | EXP_07_32_03_004_PASS_ARRAY_INDEX_LHS | 数组索引 as 左值（常量索引/变量索引/表达式索引） | ✅ |
| 005 | EXP_07_32_03_005_PASS_RECORD_INDEX_LHS | 记录索引 as 左值（字面量 key） | ✅ |
| 006 | EXP_07_32_03_006_PASS_COMPOUND_INCREMENT_LHS | 复合赋值/自增自减在左值上 | ✅ |
| 007 | EXP_07_32_03_007_PASS_NESTED_LHS | 嵌套左值表达式（字段+数组组合） | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|:-:|---------|----------|:----:|
| 008 | EXP_07_32_03_008_FAIL_LITERAL_LHS | 字面量作为 LHS（int 字面量）| ✅ 编译错误 |
| 009 | EXP_07_32_03_009_FAIL_METHOD_CALL_LHS | 方法/函数调用作为 LHS | ✅ 编译错误 |
| 010 | EXP_07_32_03_010_FAIL_ARITHMETIC_LHS | 算术表达式作为 LHS | ✅ 编译错误 |
| 011 | EXP_07_32_03_011_FAIL_CHAINING_OP_LHS | 可选链 `?.` 作为 LHS | ✅ 编译错误 |
| 012 | EXP_07_32_03_012_FAIL_READONLY_LHS | const 常量作为 LHS | ✅ 编译错误 |
| 013 | EXP_07_32_03_013_FAIL_LAMBDA_LHS | Lambda 表达式作为 LHS | ✅ 编译错误 |
| 014 | EXP_07_32_03_014_FAIL_ARRAY_LITERAL_LHS | 数组字面量作为 LHS | ✅ 编译错误 |
| 015 | EXP_07_32_03_015_FAIL_OBJECT_LITERAL_LHS | 对象字面量作为 LHS | ✅ 编译错误 |
| 016 | EXP_07_32_03_016_FAIL_TERNARY_LHS | 三元表达式作为 LHS | ✅ 编译错误 |
| 017 | EXP_07_32_03_017_FAIL_NULLISH_COALESCING_LHS | Nullish Coalescing 作为 LHS | ✅ 编译错误 |
| 018 | EXP_07_32_03_018_FAIL_INSTANCEOF_LHS | instanceof 作为 LHS | ✅ 编译错误 |
| 019 | EXP_07_32_03_019_FAIL_TYPEOF_LHS | typeof 作为 LHS | ✅ 编译错误 |
| 020 | EXP_07_32_03_020_FAIL_NEW_EXPRESSION_LHS | new 表达式作为 LHS | ✅ 编译错误 |
| 021 | EXP_07_32_03_021_FAIL_READONLY_FIELD_LHS | readonly 字段作为 LHS | ✅ 编译错误 |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|:-:|---------|----------|:------:|:----:|
| 022 | EXP_07_32_03_022_RUNTIME_SEMANTICS | 变量/参数/字段/数组/记录/复合/自增自减 8 种左值赋值语义验证 | 17 | ✅ |

## 执行过程异常修复记录

| 问题 | 文件 | 原因 | 修复 |
|------|------|------|------|
| compile-fail: Long 类型 | 001, 022 | 使用 `100n`（bigint 字面量）而非 int 字面量赋给 `long` 类型 | 改为 `100`，long 接受 int 字面量隐式扩宽 |
| compile-fail: 局部 type alias | 005 | `type SK = 'x' \| 'y'` 定义在 `main()` 函数内 | 提升到模块级别（top-level）定义 |

## 后续运行命令

```bash
SECTIONS="7.32.3_Left_Hand_Side_Expressions" bash run_expressions_cases_wsl.sh
```
