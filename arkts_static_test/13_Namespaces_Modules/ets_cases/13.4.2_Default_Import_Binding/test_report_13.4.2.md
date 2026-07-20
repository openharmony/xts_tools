# 13.4.2 Default Import Binding - 测试执行报告

**测试日期：** 2026-06-27
**编译器：** es2panda (ArkTS Static Compiler)

---

## 总体统计

| 分类 | 总数 | 可验证 | 通过 | C类 | 通过率 |
|------|------|--------|------|-----|--------|
| compile-pass | 2 | 0 | — | 2 | — |
| compile-fail | 1 | 1 | 1 | 0 | 100% |
| **总计** | **3** | **1** | **1** | **2** | 100% |

---

## 详细执行结果

### compile-fail（1/1 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 003 | NSM_13_04_2_003_FAIL_DEFAULT_IMPORT_WRONG_FORM | 非default形式导入default导出 | PASS |

### compile-pass（0/2 — C类）

| 用例 ID | 原因 |
|---------|------|
| NSM_13_04_2_001 | Fatal error F0014 |
| NSM_13_04_2_002 | Fatal error F0014 |

---

## 后续运行

```bash
cd /mnt/d/Sourcetree/spec_test/13_Namespaces_Modules
SECTIONS="13.4.2_Default_Import_Binding" bash run_namespaces_modules_cases_wsl.sh
```
