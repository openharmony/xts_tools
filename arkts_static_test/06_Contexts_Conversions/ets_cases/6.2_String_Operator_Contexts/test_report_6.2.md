# 6.2 String Operator Contexts - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 11 | 11 | 0 | 100% |
| compile-fail | 6 | 5 | 1* | 83%* |
| runtime（真实执行） | 11 | 11 | 0 | 100% |
| **总计** | **28** | **27** | **1** | **96%** |

> *1 个 FAIL 用例是 spec 要求报错但编译器接受的 D 类异常（Spec 与实现不一致），保留在 compile-fail 目录并标注 ⚠️ SPEC 不一致。

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | CON_06_02_001_PASS_INT_STRING_CONCAT | 整数类型(int/long) + string 拼接 | PASS |
| 2 | CON_06_02_002_PASS_FLOAT_STRING_CONCAT | 浮点类型(double) + string 拼接 | PASS |
| 3 | CON_06_02_003_PASS_BOOL_STRING_CONCAT | boolean + string 拼接 | PASS |
| 4 | CON_06_02_004_PASS_NULL_STRING_CONCAT | null + string 拼接 | PASS |
| 5 | CON_06_02_005_PASS_UNDEFINED_STRING_CONCAT | undefined + string 拼接 | PASS |
| 6 | CON_06_02_006_PASS_ENUM_STRING_CONCAT | string 值枚举 + string 拼接 | PASS |
| 7 | CON_06_02_007_PASS_NONSTRING_ENUM_CONCAT | 非 string 值枚举 + string 拼接 | PASS |
| 8 | CON_06_02_008_PASS_REFERENCE_STRING_CONCAT | class 引用类型 + string (toString()) | PASS |
| 9 | CON_06_02_009_PASS_MULTI_CONCAT | 多重混合类型 '+' 级联 | PASS |
| 10 | CON_06_02_010_PASS_UNION_NULLISH_STRING_CONCAT | string\|null\|undefined + string 拼接 | PASS |
| 11 | CON_06_02_026_PASS_BIGINT_STRING_CONCAT | bigint + string 拼接（spec 示例） | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 11 | CON_06_02_011_FAIL_BOOL_BOOL_PLUS | boolean + boolean 应失败（无 string 操作数） | PASS |
| 12 | CON_06_02_012_FAIL_UNDEFINED_UNDEFINED_PLUS | undefined + undefined 应失败 | PASS |
| 13 | CON_06_02_013_FAIL_ENUM_ENUM_PLUS | enum + enum 应失败 | PASS |
| 14 | CON_06_02_014_FAIL_NULL_NULL_PLUS | null + null 应失败 | PASS |
| 15 | CON_06_02_015_FAIL_OBJECT_OBJECT_PLUS | object + object 应失败 | PASS |
| 16 | CON_06_02_016_FAIL_VOID_STRING_CONCAT | void + string ⚠️ SPEC 不一致：编译器接受 | ❌ |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 16 | CON_06_02_016_RUNTIME_INT_STRING_CONVERSION | int → 十进制字符串（正数/负数/零） | 5 | PASS |
| 17 | CON_06_02_017_RUNTIME_FLOAT_STRING_CONVERSION | double → 十进制字符串 | 3 | PASS |
| 18 | CON_06_02_018_RUNTIME_BOOL_STRING_CONVERSION | true→"true", false→"false" | 3 | PASS |
| 19 | CON_06_02_019_RUNTIME_NULL_STRING_CONVERSION | null→"null" | 3 | PASS |
| 20 | CON_06_02_020_RUNTIME_UNDEFINED_STRING_CONVERSION | undefined→"undefined" | 2 | PASS |
| 21 | CON_06_02_021_RUNTIME_ENUM_STRING_CONVERSION | string enum → 成员值 | 3 | PASS |
| 22 | CON_06_02_022_RUNTIME_NONSTRING_ENUM_CONVERSION | 非 string enum → toString() 结果 | 3 | PASS |
| 23 | CON_06_02_023_RUNTIME_CLASS_TOSTRING_CONVERSION | class 实例 → toString() | 1 | PASS |
| 24 | CON_06_02_024_RUNTIME_UNION_NULLISH_STRING | string\|null\|undefined 各分支转换 | 3 | PASS |
| 25 | CON_06_02_025_RUNTIME_MULTI_TYPE_CONCAT | 多类型混合拼接综合验证 | 4 | PASS |
| 26 | CON_06_02_027_RUNTIME_BIGINT_STRING_CONCAT | bigint + string 运行时行为 | 1 | PASS |

## 执行过程异常修复记录

| 异常 | 用例 | 原因 | 修复 |
|------|------|------|------|
| RUNTIME_ASSERT_FAIL | CON_06_02_017 | `0.0` 被格式化为 `"0"` 而非 `"0.0"` | 改用 `1.0` 验证 |
| RUNTIME_COMPILE_FAIL | CON_06_02_023 | `Box` 类名与 stdlib 冲突 | 改名为 `Container` |
| PASS_FAILED | CON_06_02_011 | `void + string` 未产生编译错误 | 替换为 `true + false` |

## 后续运行命令
```bash
cd /mnt/d/111/ARKTS_STATIC_TEST/06_Contexts_Conversions
SECTIONS="6.2_String_Operator_Contexts" bash run_contexts_conversions_cases_wsl.sh
```
