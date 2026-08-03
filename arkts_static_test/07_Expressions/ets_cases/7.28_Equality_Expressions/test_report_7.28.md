# 7.28 相等表达式 - 测试执行报告

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
| | EXP_07_28_001_PASS_EQUALITY_BASIC | 基本相等运算（== === != !==） | ✅ 通过 |
| | EXP_07_28_002_PASS_EQUALITY_COMMUTATIVE | 相等运算交换律验证 | ✅ 通过 |
| | EXP_07_28_003_PASS_EQUALITY_PRECEDENCE | 相等运算符优先级（低于关系运算符） | ✅ 通过 |

### compile-fail（10 用例，✅ 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_28_004_FAIL_EQUALITY_INCOMPATIBLE | 不兼容类型相等比较应产生编译错误 | ✅ 通过 |

### runtime（10 用例，✅ 通过）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| | EXP_07_28_005_RUNTIME_OBJECT_EQUALITY | 对象引用相等运行时验证 | ✅ 通过 |
| | EXP_07_28_006_RUNTIME_UNION_EQUALITY | 联合类型相等运行时验证 | ✅ 通过 |

---

## 后续运行命令

```bash
cd /home/nnd/projects/arkts/ARKTS_STATIC_TEST/07_Expressions
SECTIONS="7.28_Equality_Expressions" bash run_expressions_cases_wsl.sh
```
