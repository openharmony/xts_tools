# 6.1 Assignment-like Contexts - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 15 | 15 | 0 | 100% |
| compile-fail | 15 | 15 | 0 | 100% |
| runtime（真实执行） | 12 | 12 | 0 | 100% |
| **总计** | **42** | **42** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | CON_06_01_001_PASS_DECLARATION_VAR_BASIC | 变量声明的赋值上下文（let + 类型标注） | PASS |
| 2 | CON_06_01_002_PASS_DECLARATION_CONST_BASIC | const 常量声明的赋值上下文 | PASS |
| 3 | CON_06_01_003_PASS_DECLARATION_FIELD_BASIC | 类字段声明的赋值上下文 | PASS |
| 4 | CON_06_01_004_PASS_ASSIGNMENT_VAR_BASIC | 变量赋值上下文 | PASS |
| 5 | CON_06_01_005_PASS_ASSIGNMENT_FIELD_BASIC | 字段赋值上下文 | PASS |
| 6 | CON_06_01_006_PASS_CALL_ARGUMENT_BASIC | 函数调用实参到形参的赋值上下文 | PASS |
| 7 | CON_06_01_007_PASS_METHOD_ARGUMENT_BASIC | 方法调用实参到形参的赋值上下文 | PASS |
| 8 | CON_06_01_008_PASS_CONSTRUCTOR_ARGUMENT_BASIC | 构造器调用实参到形参的赋值上下文 | PASS |
| 9 | CON_06_01_009_PASS_RETURN_BASIC | return 语句返回值赋值上下文 | PASS |
| 10 | CON_06_01_010_PASS_COMPOSITE_ARRAY_BASIC | 数组字面量元素赋值上下文 | PASS |
| 11 | CON_06_01_011_PASS_COMPOSITE_OBJECT_BASIC | 对象字面量字段赋值上下文 | PASS |
| 12 | CON_06_01_012_PASS_DECLARATION_WIDENING | 声明中利用隐式 widening 转换 | PASS |
| 13 | CON_06_01_013_PASS_GENERIC_DECLARATION | 泛型声明上下文 | PASS |
| 14 | CON_06_01_014_PASS_CALL_WIDENING | 调用中利用隐式 widening 转换 | PASS |
| 15 | CON_06_01_015_PASS_RETURN_WIDENING | return 中利用隐式 widening 转换 | PASS |

### compile-fail
| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 16 | CON_06_01_016_FAIL_DECLARATION_VAR_MISMATCH | 变量声明类型不匹配 | PASS |
| 17 | CON_06_01_017_FAIL_DECLARATION_CONST_MISMATCH | const 声明类型不匹配 | PASS |
| 18 | CON_06_01_018_FAIL_DECLARATION_FIELD_MISMATCH | 字段声明类型不匹配 | PASS |
| 19 | CON_06_01_019_FAIL_ASSIGNMENT_VAR_MISMATCH | 变量赋值类型不匹配 | PASS |
| 20 | CON_06_01_020_FAIL_ASSIGNMENT_FIELD_MISMATCH | 字段赋值类型不匹配 | PASS |
| 21 | CON_06_01_021_FAIL_CALL_ARGUMENT_MISMATCH | 函数调用实参类型不匹配 | PASS |
| 22 | CON_06_01_022_FAIL_METHOD_ARGUMENT_MISMATCH | 方法调用实参类型不匹配 | PASS |
| 23 | CON_06_01_023_FAIL_CONSTRUCTOR_ARGUMENT_MISMATCH | 构造器调用实参类型不匹配 | PASS |
| 24 | CON_06_01_024_FAIL_RETURN_MISMATCH | return 类型不匹配 | PASS |
| 25 | CON_06_01_025_FAIL_COMPOSITE_ARRAY_MISMATCH | 数组字面量元素类型不匹配 | PASS |
| 26 | CON_06_01_026_FAIL_COMPOSITE_OBJECT_MISMATCH | 对象字面量字段类型不匹配 | PASS |
| 27 | CON_06_01_027_FAIL_DECLARATION_NARROWING | 声明中 number -> int narrowing | PASS |
| 28 | CON_06_01_028_FAIL_ASSIGNMENT_NARROWING | 赋值中 number -> int narrowing | PASS |
| 29 | CON_06_01_029_FAIL_RETURN_NARROWING | return 中 double -> int narrowing | PASS |
| 30 | CON_06_01_030_FAIL_CALL_NARROWING | 调用中 number -> int narrowing | PASS |

### runtime
| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 31 | CON_06_01_031_RUNTIME_DECLARATION_CONTEXT | 变量声明上下文运行时行为 | 4 | PASS |
| 32 | CON_06_01_032_RUNTIME_ASSIGNMENT_CONTEXT | 赋值上下文运行时行为 | 4 | PASS |
| 33 | CON_06_01_033_RUNTIME_CALL_CONTEXT | 调用上下文运行时行为 | 3 | PASS |
| 34 | CON_06_01_034_RUNTIME_RETURN_CONTEXT | 返回上下文运行时行为 | 3 | PASS |
| 35 | CON_06_01_035_RUNTIME_COMPOSITE_ARRAY | 数组字面量运行时行为 | 5 | PASS |
| 36 | CON_06_01_036_RUNTIME_COMPOSITE_OBJECT | 对象字面量运行时行为 | 3 | PASS |
| 37 | CON_06_01_037_RUNTIME_WIDENING_ASSIGNMENT | widening 转换值保留 | 3 | PASS |
| 38 | CON_06_01_038_RUNTIME_CONST_DECLARATION | const 常量运行时行为 | 4 | PASS |
| 39 | CON_06_01_039_RUNTIME_FIELD_DECLARATION_CONTEXT | 字段声明运行时行为 | 3 | PASS |
| 40 | CON_06_01_040_RUNTIME_METHOD_CALL_CONTEXT | 方法调用运行时行为 | 3 | PASS |
| 41 | CON_06_01_041_RUNTIME_CONSTRUCTOR_CALL_CONTEXT | 构造器调用运行时行为 | 4 | PASS |
| 42 | CON_06_01_042_RUNTIME_ALL_CONTEXTS_INTEGRATION | 集成综合验证 | 5 | PASS |

## 执行过程异常修复记录
无

## 后续运行命令
```bash
cd /mnt/d/111/ARKTS_STATIC_TEST/06_Contexts_Conversions
SECTIONS="6.1_Assignment_like_Contexts" bash run_contexts_conversions_cases_wsl.sh
```
