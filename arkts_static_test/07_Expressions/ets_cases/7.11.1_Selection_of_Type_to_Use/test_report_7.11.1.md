# 7.11.1 Selection of Type to Use - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **12** | **12** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_11_01_001_PASS_TYPEREF_STATIC_METHOD | typeReference 静态方法 | ✅ |
| 002 | EXP_07_11_01_002_PASS_SUPER_METHOD_CALL | super 方法调用 | ✅ |
| 003 | EXP_07_11_01_003_PASS_CLASS_EXPR_METHOD | 类实例方法 | ✅ |
| 004 | EXP_07_11_01_004_PASS_INTERFACE_EXPR_METHOD | 接口引用方法 | ✅ |
| 005 | EXP_07_11_01_005_PASS_UNION_EXPR_METHOD | union 类型方法 | ✅ |
| 006 | EXP_07_11_01_006_PASS_TYPE_PARAM_METHOD | 类型参数方法 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 007 | EXP_07_11_01_007_FAIL_INTERFACE_TYPEREF | 接口 typeReference | ✅ (expected error) |
| 008 | EXP_07_11_01_008_FAIL_PRIMITIVE_EXPR_METHOD | null 表达式调用方法 | ✅ (expected error) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 009 | EXP_07_11_01_009_RUNTIME_STATIC_METHOD | 静态方法运行时 | 1 | ✅ |
| 010 | EXP_07_11_01_010_RUNTIME_SUPER_METHOD | super 方法运行时 | 1 | ✅ |
| 011 | EXP_07_11_01_011_RUNTIME_INTERFACE_METHOD | 接口多态运行时 | 2 | ✅ |
| 012 | EXP_07_11_01_012_RUNTIME_TYPE_PARAM_METHOD | 类型参数方法运行时 | 1 | ✅ |

## 执行过程异常修复记录

| 用例 | 问题 | 修复 |
|------|------|------|
| 008 | `int.toString()` 在 ArkTS 中合法（int 是类类型） | 改为 `null.toString()` |
| 009 | `double` 是 ArkTS 预定义类型关键字 | 改为 `process` |

## 后续运行命令

```bash
SECTIONS="7.11.1_Selection_of_Type_to_Use" bash run_expressions_cases_wsl.sh
```
