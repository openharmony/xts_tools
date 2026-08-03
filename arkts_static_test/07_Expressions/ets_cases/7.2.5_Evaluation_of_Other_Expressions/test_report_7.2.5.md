# 7.2.5 Evaluation of Other Expressions - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 0 | 0 | 0 | — |
| runtime（真实执行） | 6 | 6 | 0 | 100% |
| **总计** | **12** | **12** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_02_05_001_PASS_CLASS_INSTANCE | 类实例创建（new）基本编译 | ✅ |
| 002 | EXP_07_02_05_002_PASS_ARRAY_CREATION | 数组创建基本编译（字面量+new Array） | ✅ |
| 003 | EXP_07_02_05_003_PASS_INDEXING | 索引表达式基本编译 | ✅ |
| 004 | EXP_07_02_05_004_PASS_METHOD_CALL | 方法调用表达式基本编译 | ✅ |
| 005 | EXP_07_02_05_005_PASS_INDEX_ASSIGNMENT | 索引赋值基本编译 | ✅ |
| 006 | EXP_07_02_05_006_PASS_LAMBDA | Lambda 表达式基本编译 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| — | — | 本节无 compile-fail 用例 | — |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 007 | EXP_07_02_05_007_RUNTIME_CLASS_INSTANCE_ARGS | new 参数 AB 顺序 | — | ✅ |
| 008 | EXP_07_02_05_008_RUNTIME_ARRAY_LITERAL_ORDER | 数组字面量元素 XYZ 顺序 | — | ✅ |
| 009 | EXP_07_02_05_009_RUNTIME_INDEXING_ORDER | 数组先于索引求值（AI） | — | ✅ |
| 010 | EXP_07_02_05_010_RUNTIME_METHOD_CALL_ORDER | 对象先于参数求值（OA） | — | ✅ |
| 011 | EXP_07_02_05_011_RUNTIME_INDEX_ASSIGN_ORDER | arr[i]=val 顺序（AIV）+ 复合赋值（XYZ） | — | ✅ |
| 012 | EXP_07_02_05_012_RUNTIME_LAMBDA_LAZY | Lambda 创建时不执行体，调用时求值 | — | ✅ |

## 执行过程异常修复记录

### 修复 1: `double` 是保留关键字

**问题：** `EXP_07_02_05_006_PASS_LAMBDA.ets` 中变量名 `double` 与预定义类型 `double` 冲突。

**修复：** 将 `double` 变量名改为 `dbl`。

**影响文件：** EXP_07_02_05_006_PASS_LAMBDA.ets

## 后续运行命令

```bash
SECTIONS="7.2.5_Evaluation_of_Other_Expressions" bash run_expressions_cases_wsl.sh
```
