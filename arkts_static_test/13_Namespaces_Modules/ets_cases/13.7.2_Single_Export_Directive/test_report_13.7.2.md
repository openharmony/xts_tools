# 13.7.2 Single Export Directive - 测试执行报告

**测试日期：** 2026-06-27
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM

---

## 总体统计

| 分类 | 总数 | 通过 | D类 | 通过率 |
|------|------|------|-----|--------|
| compile-pass | 4 | 4 | 0 | 100% |
| compile-fail | 2 | 1 | 1 | 50% |
| runtime | 1 | 1 | 0 | 100% |
| **总计** | **7** | **6** | **1** | 86% |

---

## 详细执行结果

### compile-pass（4/4 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | NSM_13_07_2_001_PASS_SINGLE_EXPORT_IDENTIFIER | export identifier | PASS |
| 002 | NSM_13_07_2_002_PASS_EXPORT_DEFAULT_CLASS | export default class | PASS |
| 005 | NSM_13_07_2_005_PASS_EXPORT_AS_DEFAULT | export {A as default} | PASS |
| 006 | NSM_13_07_2_006_PASS_EXPORT_DEFAULT_EXPRESSION | export default expression | PASS |

### compile-fail（1/2 通过，1 D类不一致）

| # | 用例 ID | 测试内容 | 预期 | 实际 | 结果 |
|---|---------|---------|------|------|------|
| 003 | NSM_13_07_2_003_FAIL_EXPORT_DEFAULT_MULTIPLE | 多个export default | 编译失败 | 编译失败 | PASS |
| 007 | NSM_13_07_2_007_FAIL_EXPORT_DEFAULT_EXPR_UNEXPORTED_TYPE | export default new A(A未导出) | Spec合法 | 编译器要求A导出 | ⚠️ D类 |

### runtime（1/1 通过）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 004 | NSM_13_07_2_004_RUNTIME_SINGLE_EXPORT | 单名导出运行时 | PASS |

---

## 执行过程异常

- **D6**: NSM_13_07_2_007 — Spec认为export default new A(A未导出)合法，但es2panda报错要求A导出

---

## 后续运行

```bash
cd /mnt/d/Sourcetree/spec_test/13_Namespaces_Modules
SECTIONS="13.7.2_Single_Export_Directive" bash run_namespaces_modules_cases_wsl.sh
```
