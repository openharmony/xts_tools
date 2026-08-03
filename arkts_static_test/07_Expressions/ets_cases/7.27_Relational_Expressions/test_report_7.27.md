# 7.27 关系表达式 - 测试执行报告

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
| | EXP_07_27_001_PASS_RELATIONAL_BASIC | 基本关系运算 int 类型（< > <= >=） | ✅ 通过 |
| | EXP_07_27_002_PASS_RELATIONAL_NESTED | 嵌套关系表达式（左结合分组） | ✅ 通过 |

### compile-fail（10 用例，✅ 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_003_FAIL_RELATIONAL_INCOMPATIBLE | 不兼容类型关系运算应产生编译错误 | ✅ 通过 |
| | EXP_07_27_004_FAIL_RELATIONAL_OBJECT | Object 类型关系运算应产生编译错误 | ✅ 通过 |

### runtime（10 用例，✅ 通过）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_27_005_RUNTIME_RELATIONAL_NAN | NaN 关系比较始终返回 false | ✅ 通过 |
| | EXP_07_27_006_RUNTIME_RELATIONAL_CHAINING | 关系运算链式比较 | ✅ 通过 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.27_Relational_Expressions" bash run_expressions_cases_wsl.sh
```
