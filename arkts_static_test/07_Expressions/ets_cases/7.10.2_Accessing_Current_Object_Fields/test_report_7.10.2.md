# 7.10.2 Accessing Current Object Fields - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **12** | **12** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_10_02_001_PASS_BASIC_FIELD_ACCESS | 基本实例字段访问 obj.field | ✅ |
| 002 | EXP_07_10_02_002_PASS_FIELD_ASSIGNMENT | 非 readonly 字段赋值 | ✅ |
| 003 | EXP_07_10_02_003_PASS_READONLY_FIELD_ACCESS | readonly 字段读取 | ✅ |
| 004 | EXP_07_10_02_004_PASS_READONLY_CTOR_ASSIGN | 构造器内 readonly 赋值 | ✅ |
| 005 | EXP_07_10_02_005_PASS_METHOD_RETURN_FIELD | 方法返回值字段访问 | ✅ |
| 006 | EXP_07_10_02_006_PASS_ACCESSOR_GETTER | getter 调用 | ✅ |
| 007 | EXP_07_10_02_007_PASS_ACCESSOR_SETTER | setter 调用 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 008 | EXP_07_10_02_008_FAIL_READONLY_FIELD_OUTSIDE_CTOR | readonly 字段外部赋值 | ✅ (expected error) |
| 009 | EXP_07_10_02_009_FAIL_NULLISH_REF_FIELD_ACCESS | nullish 引用字段访问 | ✅ (expected error) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 010 | EXP_07_10_02_010_RUNTIME_FIELD_VALUE | 实例字段初始值 | 2 | ✅ |
| 011 | EXP_07_10_02_011_RUNTIME_FIELD_MUTATION | 字段修改反映新值 | 2 | ✅ |
| 012 | EXP_07_10_02_012_RUNTIME_STATIC_DISPATCH | 字段覆写语义 | 2 | ✅ |

## 执行过程异常修复记录

| 用例 | 问题 | 修复 |
|------|------|------|
| 012 | 初始版本使用 Java 的字段隐藏语义测试，断言 `b.value == 10` | 修改为 ArkTS 字段覆写语义 `b.value == 20` |

## 后续运行命令

```bash
SECTIONS="7.10.2_Accessing_Current_Object_Fields" bash run_expressions_cases_wsl.sh
```
