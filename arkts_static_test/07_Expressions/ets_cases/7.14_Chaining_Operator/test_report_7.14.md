# 7.14 Chaining Operator - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 8 | 8（均报预期错误） | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **20** | **20** | **0** | **100%** |

> 注：0 个 D 类 Spec 不一致，20/20 全部通过。新增 019/020 this?./super?. 编译错误测试。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_14_001_PASS_NULLISH_FIELD_ACCESS | nullish 字段访问 `?.` | ✅ |
| 002 | EXP_07_14_002_PASS_NULLISH_METHOD_CALL | nullish 方法调用 `?.()` | ✅ |
| 003 | EXP_07_14_003_PASS_NULLISH_INDEXING | nullish 索引 `?.[0]` | ✅ |
| 004 | EXP_07_14_004_PASS_NON_NULLISH_NO_EFFECT | 非 nullish 类型无效果 | ✅ |
| 005 | EXP_07_14_005_PASS_MIX_NULLISH_NON_NULLISH | nullish + 非 nullish 混合 | ✅ |
| 006 | EXP_07_14_006_PASS_INSTANCE_METHOD_OK | 实例方法 ?. 合法 | ✅ |
| 007 | EXP_07_14_007_PASS_NESTED_CHAINING | 嵌套链式 | ✅ |
| 008 | EXP_07_14_008_PASS_FUNC_CALL_CHAINING | 函数链式调用 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 009 | EXP_07_14_009_FAIL_STATIC_METHOD | 静态方法 `?.` | ✅ (expected error) | |
| 010 | EXP_07_14_010_FAIL_ASSIGNMENT_LHS | `?.` 在赋值左侧 | ✅ (expected error) | |
| 011 | EXP_07_14_011_FAIL_POSTFIX_INCREMENT | `?.` 在后置递增 | ✅ (expected error) | |
| 012 | EXP_07_14_012_FAIL_PREFIX_INCREMENT | `?.` 在前置递增 | ✅ (expected error) | |
| 013 | EXP_07_14_013_FAIL_POSTFIX_DECREMENT | `?.` 在后置递减 | ✅ (expected error) | |
| 014 | EXP_07_14_014_FAIL_PREFIX_DECREMENT | `?.` 在前置递减 | ✅ (expected error) | |
| 019 | EXP_07_14_019_FAIL_THIS_CHAINING | `this?.` 链式操作 | ✅ (expected error) | |
| 020 | EXP_07_14_020_FAIL_SUPER_CHAINING | `super?.` 链式操作 | ✅ (expected error) | | |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 015 | EXP_07_14_015_RUNTIME_NULLISH_UNDEFINED | nullish 链式返回 undefined | 2 | ✅ |
| 016 | EXP_07_14_016_RUNTIME_NON_NULLISH_VALUE | 非 nullish 返回值 | 2 | ✅ |
| 017 | EXP_07_14_017_RUNTIME_NESTED_CHAINING | 嵌套链式运行时 | 2 | ✅ |
| 018 | EXP_07_14_018_RUNTIME_METHOD_CHAINING | 方法链式运行时 | 2 | ✅ |

## 执行过程异常修复记录

1. 无异常修复记录。本节 0 个 D 类 Spec 不一致问题，所有用例按预期通过。
2. **修复编号冲突**：015/016 FAIL_THIS_CHAINING、FAIL_SUPER_CHAINING 编号与 runtime 015/016 冲突，重编号为 019/020。同步更新 @id 和文件名。

## 后续运行命令

```bash
SECTIONS="7.14_Chaining_Operator" bash run_expressions_cases_wsl.sh
```
