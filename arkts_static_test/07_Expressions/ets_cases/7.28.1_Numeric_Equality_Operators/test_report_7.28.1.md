# 7.28.1 Numeric Equality Operators - 测试执行报告

> 最后编译验证：2026-06-23，es2panda `--extension=ets`，Linux native

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 12 | 12 | 0 | 100% |
| compile-fail | 5 | 2 | 3（SPEC不一致） | 40% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **21** | **18** | **3** | **85.7%** |

> 注：3 个 compile-fail 用例未通过是因为 ArkTS 实现与 spec 不一致（D 类），并非用例设计问题。Spec 对非数值/非 bigint 类型参与数值等值比较要求编译时错误，实现允许通过。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_28_01_001_PASS_INT_EQUALITY | int 类型 ==, !=, ===, !== 编译通过 | ✅ |
| 002 | EXP_07_28_01_002_PASS_LONG_EQUALITY | long 类型 ==, !=, ===, !== 编译通过 | ✅ |
| 003 | EXP_07_28_01_003_PASS_BYTE_SHORT_PROMOTION | byte/short 加宽转换为 int 后等值比较 | ✅ |
| 004 | EXP_07_28_01_004_PASS_FLOAT_EQUALITY | float 类型 ==, != 编译通过（含 NaN/Inf 特殊值） | ✅ |
| 005 | EXP_07_28_01_005_PASS_DOUBLE_EQUALITY | double 类型 ==, != 编译通过（含 NaN/Inf 特殊值） | ✅ |
| 006 | EXP_07_28_01_006_PASS_CHAR_VS_NUMERIC | char 类型与数值类型等值比较 | ✅ |
| 007 | EXP_07_28_01_007_PASS_MIXED_NUMERIC | 混合数值类型（int+long, int+float 等）等值比较 | ✅ |
| 008 | EXP_07_28_01_008_PASS_BIGINT_EQUALITY | bigint ==, !=, ===, !== 编译通过 | ✅ |
| 009 | EXP_07_28_01_009_PASS_BIGINT_VS_NUMERIC | bigint 与数值类型比较（结果 false，编译通过） | ✅ |
| 010 | EXP_07_28_01_010_PASS_OBJECT_WRAPPER | 数值与 Number 包装对象比较（spec 示例） | ✅ |
| 011 | EXP_07_28_01_011_PASS_SPEC_EXAMPLES | spec 示例代码：5==5, 5!=5, 5===5, 5==new Number(5), 5==5.0 | ✅ |
| 012 | EXP_07_28_01_012_PASS_NAN_INF_ZERO | NaN/Infinity/-0.0 在等值比较中编译通过 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 013 | EXP_07_28_01_013_FAIL_BOOLEAN_VS_NUMERIC | boolean == int → 编译时错误 | ✅ (expected error) | |
| 014 | EXP_07_28_01_014_FAIL_STRING_VS_NUMERIC | string == int → 编译时错误 | ✅ (expected error) | |
| 015 | EXP_07_28_01_015_FAIL_OBJECT_VS_NUMERIC | Object == int → 编译时错误 | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |
| 016 | EXP_07_28_01_016_FAIL_ENUM_VS_NUMERIC | enum == int → 编译时错误 | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |
| 017 | EXP_07_28_01_017_FAIL_NULLISH_WITH_NUMERIC | null/undefined == int → 编译时错误 | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 018 | EXP_07_28_01_018_RUNTIME_INT_EQUALITY | int 等值基本值比较（含 spec 示例） | 24 | ✅ |
| 019 | EXP_07_28_01_019_RUNTIME_FLOAT_IEEE754 | IEEE 754 NaN/Inf/-0.0 比较规则 | 22 | ✅ |
| 020 | EXP_07_28_01_020_RUNTIME_MIXED_TYPES | 混合类型（long/float/double/byte/short）等值 | 16 | ✅ |
| 021 | EXP_07_28_01_021_RUNTIME_BIGINT | bigint 等值 + bigint vs numeric 比较 | 23 | ✅ |
| | **合计** | | **85** | |

## 执行过程异常修复记录

1. **3 个 D 类异常**：
   - D-1 (EXP_07_28_01_015): `Object == int` → 实现允许 Object 与数值通过 == 比较（编译时通过）
   - D-2 (EXP_07_28_01_016): `enum == int` → 实现允许枚举通过隐式转换为基类型后比较
   - D-3 (EXP_07_28_01_017): `null == int` → 实现通过 extended equality 允许 null/undefined 与数值比较
2. **12/12 compile-pass 全部通过** ✅：int/long/float/double/char 数值类型和 bigint 的比较均正确。
3. **2/5 compile-fail 预期错误** ✅：boolean 和 string 与数值比较被正确拒绝。
4. **4/4 runtime 85 断言全部通过**：含 IEEE 754 特殊值、混合类型、bigint vs numeric。
5. **bigint vs numeric 编译通过且运行时结果为 false**：符合 spec 要求。
6. **ArkTS 不支持 long 字面量后缀 `L`**：需使用 long 变量或隐式转换。

## 后续运行命令

```bash
SECTIONS="7.28.1_Numeric_Equality_Operators" bash run_expressions_cases_wsl.sh
```
