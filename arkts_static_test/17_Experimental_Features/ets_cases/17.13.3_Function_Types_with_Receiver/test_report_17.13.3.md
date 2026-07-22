# 17.13.3 Function Types with Receiver - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 4 | 3 | 1 (SPEC不一致) | 75%* |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **13** | **12** | **1** | **92.3%** |

> *compile-fail 1个SPEC不一致已标记为D类

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | EXP2_17_13_3_001_PASS_FUNCTION_TYPE_WITH_RECEIVER | 函数类型声明 | 通过 |
| 2 | EXP2_17_13_3_002_PASS_VARIABLE_FUNCTION_TYPE_RECEIVER | 变量使用带接收者函数类型 | 通过 |
| 3 | EXP2_17_13_3_003_PASS_GENERIC_FUNCTION_TYPE_RECEIVER | 泛型函数类型 | 通过 |
| 4 | EXP2_17_13_3_004_PASS_ASSIGN_LAMBDA_TO_RECEIVER_FUNC_TYPE | lambda赋值给接收者函数类型 | 通过 |
| 5 | EXP2_17_13_3_005_PASS_CALL_VIA_FUNC_TYPE_VARIABLE | 通过变量调用 | 通过 |
| 6 | EXP2_17_13_3_006_PASS_FUNC_TYPE_RECEIVER_AS_PARAM | 函数类型作为参数 | 通过 |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 7 | EXP2_17_13_3_007_FAIL_NON_RECEIVER_TO_RECEIVER_FUNC_TYPE | 非接收者函数赋值 | 通过（ESE0318） |
| 8 | EXP2_17_13_3_008_FAIL_INCOMPATIBLE_RECEIVER_TYPE_ASSIGN | 接收者类型不匹配 | 通过（ESE0318） |
| 9 | EXP2_17_13_3_009_FAIL_WRONG_PARAM_COUNT | 参数数量不匹配 | ⚠️ SPEC不一致（实际编译通过） |
| 10 | EXP2_17_13_3_010_FAIL_NO_RECEIVER_METHOD_CALL | 无接收者方法调用 | 通过（ESE0087） |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 11 | EXP2_17_13_3_011_RUNTIME_FUNC_TYPE_RECEIVER_INVOKE | 函数类型变量调用 | 1 | 通过 |
| 12 | EXP2_17_13_3_012_RUNTIME_GENERIC_FUNC_TYPE_RECEIVER | 泛型函数类型调用 | 1 | 通过 |
| 13 | EXP2_17_13_3_013_RUNTIME_ASSIGN_AND_CALL_VARIABLE | 赋值和调用流程 | 3 | 通过 |

## SPEC 不一致记录
- **EXP2_17_13_3_009**: spec要求参数数量不匹配应报错，但es2panda实际编译通过
