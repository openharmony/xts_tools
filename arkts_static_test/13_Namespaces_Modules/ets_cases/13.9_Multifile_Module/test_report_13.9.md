# 13.9 Multifile Module - 测试执行报告

**测试日期：** 2026-06-27
**编译器：** es2panda (ArkTS Static Compiler)

---

## 总体统计

| 分类 | 总数 | 可验证 | 通过 | C类 | 通过率 |
|------|------|--------|------|-----|--------|
| compile-pass | 1 | 0 | — | 1 | — |
| compile-fail | 2 | 2 | 2 | 0 | 100% |
| **总计** | **3** | **2** | **2** | **1** | 100% |

---

## 详细执行结果

### compile-fail（2/2 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 002 | NSM_13_09_002_FAIL_MULTIFILE_DIFF_EXPORT | 不同export修饰符 | PASS |
| 003 | NSM_13_09_003_FAIL_MULTIFILE_TOP_LEVEL_IN_SEVERAL | 顶层语句在多个文件 | PASS |

### compile-pass（0/1 — C类）

| 用例 ID | 原因 |
|---------|------|
| NSM_13_09_001 | Syntax error ESY0279 |

---

## 后续运行

```bash
cd /mnt/d/Sourcetree/spec_test/13_Namespaces_Modules
SECTIONS="13.9_Multifile_Module" bash run_namespaces_modules_cases_wsl.sh
```
