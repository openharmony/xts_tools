# 7.18 typeof Expression - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 7 | 7 | 0 | 100% |
| compile-fail | 1 | 1 | 0 | 100% |
| runtime | 7 | 7 | 0 | 100% |
| **总计** | **15** | **15** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_18_001_PASS_TYPEOF_STRING_BOOLEAN | typeof string/boolean 编译 | ✅ |
| 002 | EXP_07_18_002_PASS_TYPEOF_BIGINT_NUMBER | typeof bigint/number/double 编译 | ✅ |
| 003 | EXP_07_18_003_PASS_TYPEOF_NUMERIC_BYTE_INT | typeof byte/short/int/long/float 编译 | ✅ |
| 005 | EXP_07_18_005_PASS_TYPEOF_OBJECT_FUNCTION | typeof Object/function 编译 | ✅ |
| 006 | EXP_07_18_006_PASS_TYPEOF_NULL_UNDEFINED | typeof null/undefined 编译 | ✅ |
| 007 | EXP_07_18_007_PASS_TYPEOF_ENUM | typeof int/string 枚举 编译 | ✅ |
| 008 | EXP_07_18_008_PASS_TYPEOF_UNION | typeof union 类型 编译 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 021 | EXP_07_18_021_FAIL_TYPEOF_OVERLOADED_FUNC | typeof 重载函数名 | ✅ (expected error) | |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 031 | EXP_07_18_031_RUNTIME_TYPEOF_STRING_BOOLEAN | string→"string", boolean→"boolean" | 2 | ✅ |
| 032 | EXP_07_18_032_RUNTIME_TYPEOF_NUMERIC | int→"int", byte→"byte", double→"number", bigint→"bigint" | 4 | ✅ |
| 034 | EXP_07_18_034_RUNTIME_TYPEOF_NULL_UNDEFINED | null→"object", undefined→"undefined" | 2 | ✅ |
| 035 | EXP_07_18_035_RUNTIME_TYPEOF_ENUM | int enum→"int", string enum→"string" | 2 | ✅ |
| 036 | EXP_07_18_036_RUNTIME_TYPEOF_OBJECT_RUNTIME | Object 运行时类型 string→"string", int→"int" | 2 | ✅ |
| 037 | EXP_07_18_037_RUNTIME_TYPEOF_UNION | union 运行时类型 string→"string", int→"int" | 2 | ✅ |
| 038 | EXP_07_18_038_RUNTIME_TYPEOF_TYPE_PARAM | 类型参数 T 运行时 int→"int", string→"string" | 2 | ✅ |

## 执行过程异常修复记录

1. **char 类型无法测试**：当前编译器不支持 `as char` 字面量转换（ESE0326: Cannot cast number literal to 'Char'），`toChar()` 方法也不存在，导致无法直接创建 char 类型变量来测试 typeof char 的返回值。
2. **double 类型映射**：`typeof double` 返回 `"number"` 而非 `"double"`，符合 ArkTS 规范设计（double 是 number 的子类型）。

## 后续运行命令

```bash
SECTIONS="7.18_typeof_Expression" bash run_expressions_cases_wsl.sh
```
