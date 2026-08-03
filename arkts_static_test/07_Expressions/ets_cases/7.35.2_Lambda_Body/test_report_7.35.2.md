# 7.35.2 Lambda Body - 测试执行报告

> 最后编译验证：2026-06-23，es2panda `--extension=ets`，Linux native

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 8 | 8 | 0 | 100% |
| compile-fail | 3 | 2 | 1 ⚠️ | 66.7% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **12** | **11** | **1** | **91.7%** |

> ⚠️ compile-fail 中 1 个 D 类 Spec 不一致（009: 未初始化局部变量捕获应报错但实际编译通过），非用例设计问题。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_35_02_001_PASS_EXPRESSION_BODY | 单表达式体（int/string/boolean/double） | ✅ |
| 002 | EXP_07_35_02_002_PASS_BLOCK_BODY_RETURN | 块体带显式 return（int/string/boolean） | ✅ |
| 003 | EXP_07_35_02_003_PASS_BLOCK_BODY_MULTI_STMT | 块体多条语句（局部变量 + return） | ✅ |
| 004 | EXP_07_35_02_004_PASS_CAPTURE_LOCAL_VAR | Lambda 捕获外围局部变量 | ✅ |
| 005 | EXP_07_35_02_005_PASS_CAPTURE_INSTANCE_FIELD | Lambda 捕获 this（实例字段） | ✅ |
| 006 | EXP_07_35_02_006_PASS_VOID_CALL_EXPR_BODY | Void 调用表达式作为体 | ✅ |
| 007 | EXP_07_35_02_007_PASS_VOID_EMPTY_BLOCK | void 返回类型 + 空块 | ✅ |
| 008 | EXP_07_35_02_008_PASS_NO_PARAMS_BLOCK_BODY | 无参 lambda 块体 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 009 | EXP_07_35_02_009_FAIL_UNINIT_LOCAL_CAPTURE | 未赋值局部变量在 lambda 中使用 | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |
| 010 | EXP_07_35_02_010_FAIL_MISSING_RETURN_BLOCK | 非 void 返回类型 + 空块体无 return | ✅ (expected error) | |
| 011 | EXP_07_35_02_011_FAIL_VOID_STMT_NO_RETURN | 非 void 返回类型 + 仅 void 语句无 return | ✅ (expected error) | |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 012 | EXP_07_35_02_012_RUNTIME_SEMANTICS | 表达式体/块体/多语句/捕获局部/捕获实例/无参块体/字符串块体 | 7 | ✅ |

## 执行过程异常修复记录

**问题 1**：`EXP_07_35_02_005_PASS_CAPTURE_INSTANCE_FIELD.ets` 类名 `Box` 与 stdlib 冲突
- 错误：`Semantic error ESE0349: Class 'Box' is already defined.`
- 原因：ArkTS stdlib 已含 `Box` 类
- 修复：将 `Box` 重命名为 `LambdaBox`

**问题 2**：`EXP_07_35_02_009_FAIL_UNINIT_LOCAL_CAPTURE.ets` 应为 compile-fail 但实际编译通过
- 分类：**D 类（Spec 与实现不一致）**
- Spec 规则：局部变量在 lambda 体中使用但未在 lambda 中声明且未在之前赋值 → compile-time error
- 实际行为：ArkTS 编译通过（允许未初始化变量在 lambda 中被捕获）
- 处理：保留 FAIL 文件，标记 `⚠️ SPEC 不一致`

## 后续运行命令

```bash
cd /mnt/e/harmonyText/xts/xuqiu/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.35.2_Lambda_Body" bash run_expressions_cases_wsl.sh
```
