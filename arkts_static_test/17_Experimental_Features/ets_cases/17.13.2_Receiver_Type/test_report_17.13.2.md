# 17.13.2 Receiver Type - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 5 | 3 | 2 (SPEC不一致) | 60%* |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **14** | **12** | **2** | **85.7%** |

> *compile-fail 2个SPEC不一致已标记为D类并根据规范保留为FAIL用例

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | EXP2_17_13_2_001_PASS_CLASS_RECEIVER_TYPE | 类类型作为接收者 | 通过 |
| 2 | EXP2_17_13_2_002_PASS_INTERFACE_RECEIVER_TYPE | 接口类型作为接收者 | 通过 |
| 3 | EXP2_17_13_2_003_PASS_ARRAY_RECEIVER_TYPE | 数组类型作为接收者 | 通过 |
| 4 | EXP2_17_13_2_004_PASS_ARRAY_RECEIVER_OPERATIONS | 数组接收者操作 | 通过 |
| 5 | EXP2_17_13_2_005_PASS_GENERIC_CLASS_RECEIVER | 泛型类接收者 | 通过 |
| 6 | EXP2_17_13_2_006_PASS_GENERIC_INTERFACE_RECEIVER | 泛型接口接收者 | 通过 |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 7 | EXP2_17_13_2_007_FAIL_PRIMITIVE_INT_RECEIVER | int作为接收者 | ⚠️ SPEC不一致（实际编译通过） |
| 8 | EXP2_17_13_2_008_FAIL_PRIMITIVE_STRING_RECEIVER | string作为接收者 | ⚠️ SPEC不一致（实际编译通过） |
| 9 | EXP2_17_13_2_009_FAIL_UNION_TYPE_RECEIVER | 联合类型作为接收者 | 通过（ESE0082） |
| 10 | EXP2_17_13_2_010_FAIL_FUNCTION_TYPE_RECEIVER | 函数类型作为接收者 | 通过（ESE0082） |
| 11 | EXP2_17_13_2_011_FAIL_ENUM_TYPE_RECEIVER | 枚举类型作为接收者 | 通过（ESE0082） |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 12 | EXP2_17_13_2_012_RUNTIME_ARRAY_RECEIVER_VERIFY | 数组接收者函数验证 | 2 | 通过 |
| 13 | EXP2_17_13_2_013_RUNTIME_CLASS_RECEIVER_VERIFY | 类接收者函数验证 | 3 | 通过 |
| 14 | EXP2_17_13_2_014_RUNTIME_INTERFACE_RECEIVER_VERIFY | 接口接收者函数验证 | 2 | 通过 |

## SPEC 不一致记录
- **EXP2_17_13_2_007**: spec要求原始类型(int)不能作为接收者类型，但es2panda实际编译通过
- **EXP2_17_13_2_008**: spec要求原始类型(string)不能作为接收者类型，但es2panda实际编译通过
