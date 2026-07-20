# 13.7.3 Export Type Directive - 测试执行报告

**测试日期：** 2026-06-27
**编译器：** es2panda (ArkTS Static Compiler)

---

## 总体统计

| 分类 | 总数 | 通过 | D类 | 通过率 |
|------|------|------|-----|--------|
| compile-pass | 1 | 1 | 0 | 100% |
| compile-fail | 1 | 0 | 1 | — |
| **总计** | **2** | **1** | **1** | 50% |

---

## 详细执行结果

### compile-pass（1/1 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | NSM_13_07_3_001_PASS_EXPORT_TYPE | export type合法使用 | PASS |

### compile-fail（D类不一致）

| # | 用例 ID | 测试内容 | 预期 | 实际 | 结果 |
|---|---------|---------|------|------|------|
| 002 | NSM_13_07_3_002_FAIL_EXPORT_TYPE_NON_TYPE | export type引用非type | 编译失败 | 编译通过 | ⚠️ D类 |

---

## 执行过程异常

- **D4**: NSM_13_07_3_002 — spec要求export type引用非type应报compile-time error，但编译通过

---

## 后续运行

```bash
cd /mnt/d/Sourcetree/spec_test/13_Namespaces_Modules
SECTIONS="13.7.3_Export_Type_Directive" bash run_namespaces_modules_cases_wsl.sh
```
