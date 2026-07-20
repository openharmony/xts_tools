# 13.4.6 Several Bindings for One Import Path - 测试执行报告

**测试日期：** 2026-06-27
**编译器：** es2panda (ArkTS Static Compiler)

---

## 总体统计

| 分类 | 总数 | 可验证 | 通过 | C类 | 通过率 |
|------|------|--------|------|-----|--------|
| compile-pass | 1 | 0 | — | 1 | — |
| compile-fail | 1 | 1 | 1 | 0 | 100% |
| **总计** | **2** | **1** | **1** | **1** | 100% |

---

## 详细执行结果

### compile-fail（1/1 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 002 | NSM_13_04_6_002_FAIL_SEVERAL_BINDINGS_NAME_CONFLICT | 多绑定名称不可区分 | PASS |

### compile-pass（0/1 — C类）

| 用例 ID | 原因 |
|---------|------|
| NSM_13_04_6_001 | Fatal error F0014 |

---

## 后续运行

```bash
cd /mnt/d/Sourcetree/spec_test/13_Namespaces_Modules
SECTIONS="13.4.6_Several_Bindings_for_One_Import_Path" bash run_namespaces_modules_cases_wsl.sh
```
