# 17.13.1 Functions with Receiver - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **15** | **15** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | EXP2_17_13_1_001_PASS_METHOD_CALL_SYNTAX | 基本接收者函数方法调用语法 | 通过 |
| 2 | EXP2_17_13_1_002_PASS_ORDINARY_CALL_SYNTAX | 接收者函数普通调用语法 | 通过 |
| 3 | EXP2_17_13_1_003_PASS_GENERIC_RECEIVER_FUNCTION | 泛型接收者函数 | 通过 |
| 4 | EXP2_17_13_1_004_PASS_ACCESS_PUBLIC_MEMBER | 通过this访问公有成员 | 通过 |
| 5 | EXP2_17_13_1_005_PASS_ADDITIONAL_PARAMETERS | 带额外参数的接收者函数 | 通过 |
| 6 | EXP2_17_13_1_006_PASS_NAMESPACE_RECEIVER | 命名空间中的接收者函数 | 通过 |
| 7 | EXP2_17_13_1_007_PASS_MULTIPLE_TYPES_RECEIVER | 多类型接收者函数 | 通过 |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 8 | EXP2_17_13_1_008_FAIL_ACCESS_PRIVATE_MEMBER | 访问私有成员 | 通过（ESE0293） |
| 9 | EXP2_17_13_1_009_FAIL_THIS_NOT_FIRST_PARAM | this不是第一个参数 | 通过（ESY0158） |
| 10 | EXP2_17_13_1_010_FAIL_MISSING_THIS_PARAM | 缺少this参数 | 通过（ESE0203） |
| 11 | EXP2_17_13_1_011_FAIL_WRONG_THIS_NAME | this参数名称错误(self) | 通过（ESE0087） |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 12 | EXP2_17_13_1_012_RUNTIME_METHOD_CALL_VERIFY | 方法调用语法正确执行 | 1 | 通过 |
| 13 | EXP2_17_13_1_013_RUNTIME_ORDINARY_CALL_VERIFY | 普通调用语法正确执行 | 1 | 通过 |
| 14 | EXP2_17_13_1_014_RUNTIME_THIS_BINDING_VERIFY | this绑定正确性 | 3 | 通过 |
| 15 | EXP2_17_13_1_015_RUNTIME_GENERIC_RECEIVER_VERIFY | 泛型接收者函数执行 | 2 | 通过 |

## SPEC 不一致记录
无
