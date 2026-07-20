# 13.7.1 Selective Export Directive - 测试执行报告

**测试日期：** 2026-06-27
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 2 | 2 | 0 | 100% |
| compile-fail | 1 | 1 | 0 | 100% |
| runtime | 1 | 1 | 0 | 100% |
| **总计** | **4** | **4** | **0** | 100% |

---

## 详细执行结果

### compile-pass（2/2 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | NSM_13_07_1_001_PASS_SELECTIVE_EXPORT | export {d1, d2 as d3} | PASS |
| 002 | NSM_13_07_1_002_PASS_SELECTIVE_EXPORT_ALIAS_LOCAL_ACCESS | alias后原名同一模块内仍可用 | PASS |

### compile-fail（1/1 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 004 | NSM_13_07_1_004_FAIL_SELECTIVE_EXPORT_ALIAS_CLASH | export {bar as foo}与已导出同名 | PASS |

### runtime（1/1 通过）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 003 | NSM_13_07_1_003_RUNTIME_SELECTIVE_EXPORT | 选择性导出运行时 | PASS |

---

## 执行过程异常

**无异常。**（002 曾为A类问题 — alias后原名不可访问，已修复为PASS）

---

## 后续运行

```bash
cd /mnt/d/Sourcetree/spec_test/13_Namespaces_Modules
SECTIONS="13.7.1_Selective_Export_Directive" bash run_namespaces_modules_cases_wsl.sh
```
