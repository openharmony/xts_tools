# 13.7.4 Re-Export Directive - 测试执行报告

**测试日期：** 2026-06-27
**编译器：** es2panda (ArkTS Static Compiler)

---

## 总体统计

| 分类 | 总数 | 可验证 | 通过 | C类 | 通过率 |
|------|------|--------|------|-----|--------|
| compile-pass | 2 | 0 | — | 2 | — |
| compile-fail | 2 | 2 | 2 | 0 | 100% |
| **总计** | **4** | **2** | **2** | **2** | 100% |

---

## 详细执行结果

### compile-fail（2/2 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 003 | NSM_13_07_4_003_FAIL_RE_EXPORT_SELF | re-export引用当前文件 | PASS |
| 004 | NSM_13_07_4_004_FAIL_RE_EXPORT_NOT_DISTINGUISHABLE | re-export实体不可区分 | PASS |

### compile-pass（0/2 — C类）

| 用例 ID | 原因 |
|---------|------|
| NSM_13_07_4_001 | Fatal error F0014 |
| NSM_13_07_4_002 | Fatal error F0014 |

---

## 后续运行

```bash
cd /mnt/d/Sourcetree/spec_test/13_Namespaces_Modules
SECTIONS="13.7.4_Re_Export_Directive" bash run_namespaces_modules_cases_wsl.sh
```
