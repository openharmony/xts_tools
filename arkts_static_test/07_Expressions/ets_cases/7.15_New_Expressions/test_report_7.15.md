# 7.15 New Expressions - 测试执行报告

**Spec 章节**: 7.15 New Expressions | **测试日期**: 2026-06-22 | **测试环境**: WSL (Ubuntu) + ArkCompiler toolchain

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime | 4 | 4 | 0 | 100% |
| **总计** | **16** | **16** | **0** | **100%** |

> 注：全部 16/16 用例通过，0 个 D 类 Spec 不一致问题。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_15_001_PASS_BASIC_NEW | 基本 new A() 默认构造器 | ✅ |
| 002 | EXP_07_15_002_PASS_NEW_WITH_ARGS | 带参数构造器 new A(42) | ✅ |
| 003 | EXP_07_15_003_PASS_NEW_STORE_VARIABLE | new 结果赋值给变量 | ✅ |
| 004 | EXP_07_15_004_PASS_NEW_METHOD_CHAIN | new A().method() 方法链 | ✅ |
| 005 | EXP_07_15_005_PASS_PAREN_NEW_METHOD | (new A).method() 括号包裹 | ✅ |
| 006 | EXP_07_15_006_PASS_NEW_NO_PARENS | 无括号 new A | ✅ |
| 007 | EXP_07_15_007_PASS_GENERIC_NEW | 泛型类 new MyBox<int>(42) | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 008 | EXP_07_15_008_FAIL_NEW_METHOD_NO_PARENS | new A.method() 缺少括号 | ✅ (expected error) | |
| 009 | EXP_07_15_009_FAIL_NEW_TYPE_PARAM | 类型参数 new T() | ✅ (expected error) | |
| 010 | EXP_07_15_010_FAIL_FIXED_ARRAY_TYPE_PARAM | FixedArray<T> 类型参数 | ✅ (expected error) | |
| 011 | EXP_07_15_011_FAIL_NEW_INTERFACE | 接口实例化 | ✅ (expected error) | |
| 012 | EXP_07_15_012_FAIL_NEW_ABSTRACT | 抽象类实例化 | ✅ (expected error) | |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 013 | EXP_07_15_013_RUNTIME_BASIC_NEW | new A(42) 字段值验证 | 1 | ✅ |
| 014 | EXP_07_15_014_RUNTIME_NEW_METHOD_CHAIN | new A().method() 结果 | 1 | ✅ |
| 015 | EXP_07_15_015_RUNTIME_NEW_NO_PARENS | 无括号 new A 字段值 | 1 | ✅ |
| 016 | EXP_07_15_016_RUNTIME_CTOR_THROWS | 构造器抛出异常 | 1 | ✅ |

## 执行过程异常修复记录

1. **Box 类名冲突**：`Box` 是 ArkTS 标准库预留类名，将用例中的 `Box` 改为 `MyBox` 解决编译错误。

## 后续运行命令

```bash
SECTIONS="7.15_New_Expressions" bash run_expressions_cases_wsl.sh
```
