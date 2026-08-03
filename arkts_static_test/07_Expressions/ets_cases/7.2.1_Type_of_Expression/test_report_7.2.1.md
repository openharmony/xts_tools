# 7.2.1 Type of Expression - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 15 | 15 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime（真实执行） | 5 | 5 | 0 | 100% |
| **总计** | **25** | **25** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_02_01_001_PASS_STANDALONE_INT | standalone int | ✅ |
| 002 | EXP_07_02_01_002_PASS_STANDALONE_STRING | standalone string | ✅ |
| 003 | EXP_07_02_01_003_PASS_STANDALONE_BOOLEAN | standalone boolean | ✅ |
| 004 | EXP_07_02_01_004_PASS_STANDALONE_ARRAY | standalone array | ✅ |
| 005 | EXP_07_02_01_005_PASS_NON_STANDALONE_ANNOTATION | 显式注解 target type | ✅ |
| 006 | EXP_07_02_01_006_PASS_FUNC_PARAM_TARGET | 函数参数 target type | ✅ |
| 007 | EXP_07_02_01_007_PASS_RETURN_TARGET | 返回值 target type | ✅ |
| 008 | EXP_07_02_01_008_PASS_OBJLIT_CLASS_TARGET | 对象字面量 target type | ✅ |
| 009 | EXP_07_02_01_009_PASS_ASSIGNMENT_TARGET | 赋值 target type | ✅ |
| 010 | EXP_07_02_01_010_PASS_WRITABLE_TO_READONLY | writable->readonly | ✅ |
| 011 | EXP_07_02_01_011_PASS_EXPRESSION_STATEMENT | 表达式语句 | ✅ |
| 012 | EXP_07_02_01_012_PASS_READONLY_TO_READONLY | readonly->readonly | ✅ |
| 013 | EXP_07_02_01_013_PASS_GENERIC_TARGET | 泛型推断 | ✅ |
| 014 | EXP_07_02_01_014_PASS_NESTED_EXPR_TARGET | 嵌套表达式 | ✅ |
| 015 | EXP_07_02_01_015_PASS_TERNARY_TARGET | 三目表达式 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 016 | EXP_07_02_01_016_FAIL_STANDALONE_OBJLIT | standalone object literal | ✅ (expected error) | |
| 017 | EXP_07_02_01_017_FAIL_READONLY_TO_WRITABLE | readonly->writable | ✅ (expected error) | |
| 018 | EXP_07_02_01_018_FAIL_TYPE_MISMATCH | 类型不匹配 | ✅ (expected error) | |
| 019 | EXP_07_02_01_019_FAIL_FUNC_ARG_MISMATCH | 函数参数类型不匹配 | ✅ (expected error) | |
| 020 | EXP_07_02_01_020_FAIL_RETURN_TYPE_MISMATCH | 返回值类型不匹配 | ✅ (expected error) | |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 021 | EXP_07_02_01_021_RUNTIME_STANDALONE_TYPES | standalone 类型值 | - | ✅ |
| 022 | EXP_07_02_01_022_RUNTIME_TARGET_TYPE_FUNC | 函数参数 target type | - | ✅ |
| 023 | EXP_07_02_01_023_RUNTIME_READONLY_PARAM | readonly 数组参数 | - | ✅ |
| 024 | EXP_07_02_01_024_RUNTIME_OBJLIT_TARGET | object literal target | - | ✅ |
| 025 | EXP_07_02_01_025_RUNTIME_ARRAY_STANDALONE | standalone 数组 | - | ✅ |

## 执行过程异常修复记录

无

## 后续运行命令

```bash
SECTIONS="7.2.1_Type_of_Expression" bash run_expressions_cases_wsl.sh
```
