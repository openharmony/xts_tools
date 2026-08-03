# 7.6.1 Object Literal of Class Type - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 8 | 8 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **21** | **21** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_06_01_001_PASS_VAR_TYPE_CONTEXT | 变量类型上下文推断类类型 | ✅ |
| 002 | EXP_07_06_01_002_PASS_FUNC_PARAM_CONTEXT | 函数参数上下文推断类类型 | ✅ |
| 003 | EXP_07_06_01_003_PASS_SKIP_FIELDS_DEFAULTS | 跳过所有有默认值的字段 | ✅ |
| 004 | EXP_07_06_01_004_PASS_SKIP_EXPLICIT_INITIALIZER | 跳过有显式初始化的字段 | ✅ |
| 005 | EXP_07_06_01_005_PASS_IMPLICIT_DEFAULT_CTOR | 隐式默认构造器 | ✅ |
| 006 | EXP_07_06_01_006_PASS_EXPLICIT_PARAMLESS_CTOR | 显式无参构造器 | ✅ |
| 007 | EXP_07_06_01_007_PASS_OPTIONAL_PARAM_CTOR | 全可选参数构造器 | ✅ |
| 008 | EXP_07_06_01_008_PASS_DEFAULT_VALUE_FIELD | 值类型字段默认值跳过 | ✅ |
| 009 | EXP_07_06_01_009_PASS_SETTER_ACCESSOR | setter 访问器作为对象字面量字段 | ✅ |
| 010 | EXP_07_06_01_010_PASS_PARTIAL_FIELDS | 部分字段提供，其余用默认值 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 011 | EXP_07_06_01_011_FAIL_PRIVATE_FIELD | 对象字面量中 private 字段 | ✅ (expected error) | |
| 012 | EXP_07_06_01_012_FAIL_PROTECTED_FIELD | 对象字面量中 protected 字段 | ✅ (expected error) | |
| 013 | EXP_07_06_01_013_FAIL_TYPE_MISMATCH | 字段表达式类型不兼容 | ✅ (expected error) | |
| 014 | EXP_07_06_01_014_FAIL_MISSING_REQUIRED_FIELD | 必需字段未提供 | ✅ (expected error) | |
| 015 | EXP_07_06_01_015_FAIL_NO_PARAMLESS_CTOR | 无无参构造器 | ✅ (expected error) | |
| 016 | EXP_07_06_01_016_FAIL_PRIVATE_CTOR | private 构造器不可访问 | ✅ (expected error) | |
| 017 | EXP_07_06_01_017_FAIL_READONLY_FIELD | 显式设置 readonly 字段 | ✅ (expected error) | |
| 018 | EXP_07_06_01_018_FAIL_GETTER_ONLY_ACCESSOR | getter-only 访问器作为字段 | ✅ (expected error) | |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 019 | EXP_07_06_01_019_RUNTIME_BASIC_VALUES | name 和 age 字段值正确 | 2 | ✅ |
| 020 | EXP_07_06_01_020_RUNTIME_SETTER_ACCESSOR | setter 通过对象字面量调用 | 1 | ✅ |
| 021 | EXP_07_06_01_021_RUNTIME_DEFAULT_VALUES | 跳过字段使用正确默认值 | 3 | ✅ |

## 执行过程异常修复记录

1. **019 和 021 runtime 用例中 class 定义在 main() 内部**：将类定义移到文件级（ArkTS 不支持嵌套类）。

## 后续运行命令

```bash
SECTIONS="7.6.1_Object_Literal_of_Class_Type" bash run_expressions_cases_wsl.sh
```
