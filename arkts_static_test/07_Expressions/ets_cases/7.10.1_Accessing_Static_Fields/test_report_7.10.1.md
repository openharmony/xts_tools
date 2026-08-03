# 7.10.1 Accessing Static Fields - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **11** | **11** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_10_01_001_PASS_STATIC_FIELD_ACCESS | 基本静态字段访问（类名） | ✅ |
| 002 | EXP_07_10_01_002_PASS_STATIC_FIELD_ASSIGNMENT | 非 readonly 静态字段赋值 | ✅ |
| 003 | EXP_07_10_01_003_PASS_READONLY_STATIC_ACCESS | readonly 静态字段读取 | ✅ |
| 004 | EXP_07_10_01_004_PASS_STATIC_FIELD_EXPR | 静态字段在表达式中 | ✅ |
| 005 | EXP_07_10_01_005_PASS_MULTI_CLASS_STATIC | 多类静态字段独立访问 | ✅ |
| 006 | EXP_07_10_01_006_PASS_STATIC_READONLY_INIT_BLOCK | readonly 静态字段声明初始化器 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 007 | EXP_07_10_01_007_FAIL_STATIC_FIELD_INSTANCE_REF | 实例引用访问静态字段 | ✅ (expected error) |
| 008 | EXP_07_10_01_008_FAIL_READONLY_STATIC_ASSIGN | readonly 静态字段赋值 | ✅ (expected error) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 009 | EXP_07_10_01_009_RUNTIME_STATIC_FIELD_VALUE | 静态字段值跨实例一致 | 1 | ✅ |
| 010 | EXP_07_10_01_010_RUNTIME_STATIC_FIELD_MUTATION | 静态字段修改全局可见 | 2 | ✅ |
| 011 | EXP_07_10_01_011_RUNTIME_READONLY_STATIC_VALUE | readonly 静态字段值不变 | 2 | ✅ |

## 执行过程异常修复记录

无异常。

## 后续运行命令

```bash
SECTIONS="7.10.1_Accessing_Static_Fields" bash run_expressions_cases_wsl.sh
```
