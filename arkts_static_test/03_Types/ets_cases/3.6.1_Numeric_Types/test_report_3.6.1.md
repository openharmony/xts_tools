# 3.6.1 Numeric Types - 测试执行报告

**测试日期：** 2026-06-11
**编译器：** es2panda
**运行时：** ark VM + boot files
**运行环境：** WSL2 Ubuntu 22.04
**对应规范：** ArkTS Static Spec §3.6.1 Numeric Types

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 5 | 5 | 0 | 100% |
| runtime（真实执行） | 5 | 5 | 0 | 100% |
| **总计** | **20** | **20** | **0** | **100%** |

**🎯 一次通过率：100%**（首次执行无任何用例失败）

---

## 详细执行结果

### compile-pass（10个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | PASS_NUMERIC_DECLARATION | 6 种数值类型声明 | PASS |
| 002 | PASS_BOUNDARY_VALUES | 各类型最大/最小值 | PASS |
| 003 | PASS_WIDENING_BYTE_TO_LARGER | byte→short/int/long/float/double | PASS |
| 004 | PASS_WIDENING_SHORT_TO_LARGER | short→int/long/float/double | PASS |
| 005 | PASS_WIDENING_INT_LONG_FLOAT | 层次中部各类 widening | PASS |
| 006 | PASS_NUMERIC_AS_OBJECT | 数值作 Object 子类型 | PASS |
| 007 | PASS_NEW_CONSTRUCTOR | new number/byte/int 等 | PASS |
| 008 | PASS_BIGINT_EXPLICIT_CONVERT | BigInt() 显式转换 | PASS |
| 009 | PASS_NUMBER_DOUBLE_ALIAS | number = double 等价 | PASS |
| 010 | PASS_NUMERIC_ARITHMETIC_HIERARCHY | 混合类型算术 widening | PASS |

### compile-fail（5个）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 011 | FAIL_BIGINT_NUMERIC_IMPLICIT | bigint 与数值隐式转换拒绝 | PASS |
| 012 | FAIL_NARROWING_CONVERSION | narrowing 隐式转换拒绝 | PASS |
| 013 | FAIL_LITERAL_OUT_OF_RANGE | 字面量超出范围拒绝 | PASS |
| 014 | FAIL_BIGINT_ASSIGN_NUMERIC | bigint 赋值给数值类型拒绝 | PASS |
| 015 | FAIL_FLOAT_LITERAL_TO_INT | 浮点字面量赋值整数拒绝 | PASS |

### runtime（5个，真实执行 + assert）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 016 | RUNTIME_BOUNDARY_VALUES | 各类型边界值精度保留 | 4 | PASS |
| 017 | RUNTIME_WIDENING_VALUE_PRESERVED | widening 后值正确 | 4 | PASS |
| 018 | RUNTIME_NEW_CONSTRUCTOR_DEFAULT | new T 返回 0 | 7 | PASS |
| 019 | RUNTIME_BIGINT_EXPLICIT | BigInt() 转换运行时 | 3 | PASS |
| 020 | RUNTIME_NUMERIC_AS_OBJECT | 数值装箱为 Object | 3 | PASS |

---

## 执行过程异常

**首次运行无失败用例，无需修复。**

---

## 后续运行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/03_Types
SECTIONS="3.6.1_Numeric_Types" bash run_types_cases_wsl.sh
```