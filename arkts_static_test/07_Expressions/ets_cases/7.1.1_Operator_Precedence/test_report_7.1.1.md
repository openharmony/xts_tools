# 7.1.1 Operator Precedence - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 20 | 20 | 0 | 100% |
| compile-fail | 4 | 1 | 3（SPEC不一致） | 25% |
| runtime（真实执行） | 11 | 11 | 0 | 100% |
| **总计** | **35** | **32** | **3** | **91.4%** |

> 注：3 个 compile-fail 用例未通过是因为 ArkTS 实现与 spec 不一致（D 类），并非用例设计问题。
>
> 实测验证日期：2026-07-28，es2panda + ark VM，DEV_HOME=/home/ymwangfa/arkcompiler

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_01_01_001_PASS_GROUPING_PAREN | 括号分组优先级最高 | ✅ |
| 002 | EXP_07_01_01_002_PASS_MULTIPLICATIVE_BEFORE_ADDITIVE | 乘法优先于加法 | ✅ |
| 003 | EXP_07_01_01_003_PASS_ADDITIVE_BEFORE_SHIFT | 加法优先于移位 | ✅ |
| 004 | EXP_07_01_01_004_PASS_SHIFT_BEFORE_RELATIONAL | 移位优先于关系 | ✅ |
| 005 | EXP_07_01_01_005_PASS_RELATIONAL_BEFORE_EQUALITY | 关系优先于相等 | ✅ |
| 006 | EXP_07_01_01_006_PASS_BITWISE_AND_XOR_OR | 按位与/异或/或优先级 | ✅ |
| 007 | EXP_07_01_01_007_PASS_LOGICAL_AND_OR | 逻辑与优先于逻辑或 | ✅ |
| 008 | EXP_07_01_01_008_PASS_ASSIGNMENT_RIGHT_ASSOC | 赋值右结合 | ✅ |
| 009 | EXP_07_01_01_009_PASS_EXPONENTIATION_RIGHT_ASSOC | 幂运算右结合 | ✅ |
| 010 | EXP_07_01_01_010_PASS_TERNARY_RIGHT_ASSOC | 三元右结合 | ✅ |
| 011 | EXP_07_01_01_011_PASS_UNARY_MINUS_EXPONENTIATION | 一元与幂运算 | ✅ |
| 012 | EXP_07_01_01_012_PASS_CAST_AND_ADDITIVE | `as` 与加法优先级 | ✅ |
| 013 | EXP_07_01_01_013_PASS_MEMBER_ACCESS_PRECEDENCE | 成员访问优先级 | ✅ |
| 014 | EXP_07_01_01_014_PASS_NULLISH_COALESCING_PRECEDENCE | null 合并优先级 | ✅ |
| 015 | EXP_07_01_01_015_PASS_COMPOUND_ASSIGN_ARITH | 复合赋值与算术 | ✅ |
| 016 | EXP_07_01_01_016_PASS_MIXED_OPERATOR_CHAIN | 多级运算符混合 | ✅ |
| 017 | EXP_07_01_01_017_PASS_POSTFIX_INCREMENT_ARITH | 后置递增与算术 | ✅ |
| 018 | EXP_07_01_01_018_PASS_PREFIX_INCREMENT_EXPONENT | 前置递增与幂运算 | ✅ |
| 019 | EXP_07_01_01_019_PASS_STRING_CONCAT_ADDITION | 字符串拼接与加法 | ✅ |
| 020 | EXP_07_01_01_020_PASS_COMPLEX_EXPRESSION | 复杂表达式 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 021 | EXP_07_01_01_021_FAIL_ASSIGN_TO_NON_LVALUE | 加法优先赋值给非左值 | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |
| 022 | EXP_07_01_01_022_FAIL_DOUBLE_POSTFIX_INCREMENT | 双重复增 | ✅ (expected error) | |
| 023 | EXP_07_01_01_023_FAIL_LOGICAL_AND_ASSIGNMENT | 逻辑与后赋值给非左值 | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |
| 024 | EXP_07_01_01_024_FAIL_TERNARY_PRECEDENCE_TYPE | 空合并后三元条件类型 | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 025 | EXP_07_01_01_025_RUNTIME_PAREN_OVERRIDES | 括号覆盖优先级验证 | 3 | ✅ |
| 026 | EXP_07_01_01_026_RUNTIME_ARITH_MIXED | 算术混合优先级验证 | 3 | ✅ |
| 027 | EXP_07_01_01_027_RUNTIME_SHIFT_ARITH_MIXED | 移位和算术混合 | 3 | ✅ |
| 028 | EXP_07_01_01_028_RUNTIME_RELATIONAL_EQUALITY | 关系与相等优先级 | 3 | ✅ |
| 029 | EXP_07_01_01_029_RUNTIME_BITWISE_CHAIN | 按位运算符优先级链 | 3 | ✅ |
| 030 | EXP_07_01_01_030_RUNTIME_LOGICAL_PRECEDENCE | 逻辑运算符优先级 | 3 | ✅ |
| 031 | EXP_07_01_01_031_RUNTIME_ASSIGN_RIGHT_ASSOC | 赋值右结合 | 3 | ✅ |
| 032 | EXP_07_01_01_032_RUNTIME_EXPONENT_RIGHT_ASSOC | 幂运算右结合 | 3 | ✅ |
| 033 | EXP_07_01_01_033_RUNTIME_TERNARY_RIGHT_ASSOC | 三元右结合 | 3 | ✅ |
| 034 | EXP_07_01_01_034_RUNTIME_NULLISH_ARITH | null 合并与加法 | 2 | ✅ |
| 035 | EXP_07_01_01_035_RUNTIME_COMPLEX_OVERALL | 复杂表达式综合验证 | 2 | ✅ |

## 执行过程异常修复记录

1. **幂运算 `**` 返回 `double` 类型**：最初使用 `int` 类型接收幂运算结果导致类型错误（`Type 'Double' cannot be assigned to type 'Int'`），修复为 `double` 类型。
2. **一元负号与幂运算的语法歧义**：`-2 ** 3 ** 2` 被 ArkTS 编译器要求加括号，改为 `(-2) ** 3 ** 2`。
3. **`as long` 转换弃用**：`as` 表达式用于数值类型转换已被弃用，改为调用 `.toLong()` 方法。

## 后续运行命令

```bash
SECTIONS="7.1.1_Operator_Precedence" bash run_expressions_cases_wsl.sh
```
