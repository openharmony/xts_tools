# 7.17.1 Type Inference in Cast Expression - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 6 | 6 | 0 | 100% |
| runtime | 4 | 4 | 0 | 100% |
| **总计** | **16** | **16** | **0** | **100%** |

> 注：0 个 D 类 Spec 不一致问题，全部通过。101 原为 D 类（编译器曾允许 cast to never），当前编译器已修复报错。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_17_01_001_PASS_NUMERIC_LITERAL_BYTE | 数值字面量 `1 as byte` | ✅ |
| 002 | EXP_07_17_01_002_PASS_NUMERIC_LITERAL_DOUBLE | 数值字面量 `1 as double` | ✅ |
| 003 | EXP_07_17_01_003_PASS_ARRAY_LITERAL_DOUBLE | 数组 `[1,2] as double[]` | ✅ |
| 004 | EXP_07_17_01_004_PASS_ARRAY_LITERAL_TUPLE | 数组 `[1,"cc"] as [double,string]` | ✅ |
| 005 | EXP_07_17_01_005_PASS_OBJECT_LITERAL_CLASS | 对象字面量 `{...} as A` | ✅ |
| 006 | EXP_07_17_01_006_PASS_OBJECT_LITERAL_INTERFACE | 对象字面量 `{...} as I` | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 007 | EXP_07_17_01_007_FAIL_NUMERIC_OVERFLOW | `128 as byte` 溢出 | ✅ (expected error: ESE1050320) | |
| 008 | EXP_07_17_01_008_FAIL_WRONG_TARGET_TYPE | `[1,2] as double` | ✅ (expected error: ESE0326) | |
| 009 | EXP_07_17_01_009_FAIL_WRONG_ELEMENT_TYPE | `[1,"cc"] as double[]` | ✅ (expected error: ESE0227) | |
| 010 | EXP_07_17_01_010_FAIL_WRONG_TUPLE_ELEMENT | `[1.0,"cc"] as [int,string]` | ✅ (expected error: ESE0057) | |
| 011 | EXP_07_17_01_011_FAIL_INCOMPATIBLE_TARGET | `[1,2] as string` | ✅ (expected error: ESE0326) | |
| 101 | EXP_07_17_01_101_FAIL_CAST_TO_NEVER | `1 as never` 禁止转换 | ✅ (expected error: ESE0305) | 原D类，编译器已修复 |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 012 | EXP_07_17_01_012_RUNTIME_NUMERIC_CAST | `42 as byte` 值验证 | 2 | ✅ |
| 013 | EXP_07_17_01_013_RUNTIME_ARRAY_CAST | `[1,2] as double[]` 元素值 | 2 | ✅ |
| 014 | EXP_07_17_01_014_RUNTIME_TUPLE_CAST | `[1,"cc"] as [double,string]` 值 | 2 | ✅ |
| 015 | EXP_07_17_01_015_RUNTIME_OBJECT_CAST | `{...} as A` 字段值 | 2 | ✅ |

## 执行过程异常修复记录

无异常。全部 15/15 用例一次性通过，0 个 D 类 Spec 不一致问题。

## 后续运行命令

```bash
SECTIONS="7.17.1_Type_Inference_in_Cast_Expression" bash run_expressions_cases_wsl.sh
```
