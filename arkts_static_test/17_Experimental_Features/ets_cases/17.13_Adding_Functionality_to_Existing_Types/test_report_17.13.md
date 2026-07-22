# 17.13 Adding Functionality to Existing Types - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 4 | 4 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime（真实执行） | 2 | 2 | 0 | 100% |
| **总计** | **8** | **8** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | EXP2_17_13_001_PASS_BASIC_CLASS_RECEIVER | 基本类接收者函数定义，方法调用和普通调用 | 通过 |
| 2 | EXP2_17_13_002_PASS_INTERFACE_RECEIVER | 接口类型接收者函数 | 通过 |
| 3 | EXP2_17_13_003_PASS_MULTIPLE_RECEIVER_FUNCTIONS | 同一类型的多个接收者函数 | 通过 |
| 4 | EXP2_17_13_004_PASS_ORDINARY_CALL_SYNTAX | 接收者函数的普通函数调用语法 | 通过 |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 5 | EXP2_17_13_005_FAIL_INCOMPATIBLE_RECEIVER_TYPE | 接收者类型不兼容 | 通过（产生ESE0127/ESE0046） |
| 6 | EXP2_17_13_006_FAIL_ORDINARY_CALL_WRONG_RECEIVER | 普通调用传入错误类型 | 通过（产生ESE0127/ESE0046） |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 7 | EXP2_17_13_007_RUNTIME_CLASS_RECEIVER_INVOCATION | 类接收者函数两种调用语法 | 3 | 通过 |
| 8 | EXP2_17_13_008_RUNTIME_INTERFACE_RECEIVER | 接口接收者函数两种调用语法 | 2 | 通过 |

## SPEC 不一致记录
无
