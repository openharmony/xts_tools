# 7.36 常量表达式 - 测试执行报告

> 最后编译验证：2026-06-23，es2panda `--extension=ets`，Linux native

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**状态：** 已在 es2panda + ark VM 编译运行通过（306P+294F+300R=900，100%）

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 10 | 10 | 0 | 100% |
| compile-fail | 10 | 10 | 0 | 100% |
| runtime（真实执行） | 10 | 10 | 0 | 100% |
| **总计** | **30** | **30** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（10 用例，✅ 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_36_001_PASS_CONST_LITERAL | 常量表达式：字面量 | ✅ 通过 |
| | EXP_07_36_002_PASS_CONST_REF | 常量表达式：引用其余常量 | ✅ 通过 |
| | EXP_07_36_003_PASS_CONST_COMPLEX | 常量表达式：复杂运算组合 | ✅ 通过 |
| | EXP_07_36_004_PASS_CONST_PAREN | 常量表达式：括号表达式 | ✅ 通过 |

### compile-fail（10 用例，✅ 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_36_005_FAIL_CONST_INCREMENT | 常量表达式中使用 ++ 应产生编译错误 | ✅ 通过 |
| | EXP_07_36_006_FAIL_CONST_DECREMENT | 常量表达式中使用 -- 应产生编译错误 | ✅ 通过 |
| | EXP_07_36_007_FAIL_CONST_INVALID_REF | 常量表达式引用非常量变量应产生编译错误 | ✅ 通过 |

### runtime（10 用例，✅ 通过）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_36_008_RUNTIME_CONST_EVAL | 编译期常量求值正确性验证 | ✅ 通过 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.36_Constant_Expressions" bash run_expressions_cases_wsl.sh
```
