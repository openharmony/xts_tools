# 17.13.4 Lambda Expressions with Receiver - 测试执行报告

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
| 1 | EXP2_17_13_4_001_PASS_BASIC_LAMBDA_WITH_RECEIVER | 基本lambda接收者 | 通过 |
| 2 | EXP2_17_13_4_002_PASS_LAMBDA_METHOD_CALL | lambda普通调用 | 通过 |
| 3 | EXP2_17_13_4_003_PASS_LAMBDA_ORDINARY_CALL | lambda普通调用 | 通过 |
| 4 | EXP2_17_13_4_004_PASS_LAMBDA_ACCESS_RECEIVER_MEMBERS | lambda访问接收者成员 | 通过 |
| 5 | EXP2_17_13_4_005_PASS_LAMBDA_ADDITIONAL_PARAMS | lambda带额外参数 | 通过 |
| 6 | EXP2_17_13_4_006_PASS_LAMBDA_ASSIGN_TO_VARIABLE | lambda赋值给变量 | 通过 |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 7 | EXP2_17_13_4_007_FAIL_LAMBDA_PRIMITIVE_RECEIVER | lambda原始类型接收者 | ⚠️ SPEC不一致（实际编译通过） |
| 8 | EXP2_17_13_4_008_FAIL_OUTER_THIS_IN_RECEIVER_LAMBDA | 外围this在接收者lambda中 | 通过（ESE0202） |
| 9 | EXP2_17_13_4_009_FAIL_RECEIVER_LAMBDA_NON_RECEIVER_CONTEXT | lambda用于无接收者上下文 | 通过（ESE0318） |
| 10 | EXP2_17_13_4_010_FAIL_INVALID_LAMBDA_RECEIVER_SYNTAX | 无效lambda接收者语法 | 通过（ESY0158） |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 11 | EXP2_17_13_4_011_RUNTIME_LAMBDA_RECEIVER_EXECUTION | lambda接收者执行 | 1 | 通过 |
| 12 | EXP2_17_13_4_012_RUNTIME_LAMBDA_THIS_BINDING | this绑定验证 | 2 | 通过 |
| 13 | EXP2_17_13_4_013_RUNTIME_LAMBDA_BOTH_CALL_SYNTAX | 两种调用语法 | 2 | 通过 |

## SPEC 不一致记录
- **EXP2_17_13_4_007**: spec要求原始类型不能作为lambda接收者类型，但es2panda实际编译通过
