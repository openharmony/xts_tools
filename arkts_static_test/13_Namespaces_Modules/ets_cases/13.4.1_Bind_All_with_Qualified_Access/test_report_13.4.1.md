# 13.4.1 Bind All with Qualified Access - 测试执行报告

**测试日期：** 2026-06-27
**编译器：** es2panda (ArkTS Static Compiler)

---

## 总体统计

| 分类 | 总数 | 可验证 | 通过 | C类 | 通过率 |
|------|------|--------|------|-----|--------|
| compile-pass | 2 | 0 | — | 2 | — |
| runtime | 1 | 0 | — | 1 | — |
| **总计** | **3** | **0** | **0** | **3** | — |

> 全部用例因 es2panda 无法解析外部模块路径（Fatal error F0014）而无法验证

---

## 详细执行结果

### compile-pass（0/2 — C类）

| 用例 ID | 测试内容 | 原因 |
|---------|---------|------|
| NSM_13_04_1_001_PASS_IMPORT_ALL_AS | import * as 合法使用 | Fatal error F0014 |
| NSM_13_04_1_002_PASS_IMPORT_ALL_QUALIFIED_ACCESS | A.name访问导出实体 | Fatal error F0014 |

### runtime（0/1 — C类）

| 用例 ID | 测试内容 | 原因 |
|---------|---------|------|
| NSM_13_04_1_003_RUNTIME_IMPORT_ALL_ACCESS | * as运行时访问 | Fatal error F0014 |

---

## 后续运行

```bash
cd /mnt/d/Sourcetree/spec_test/13_Namespaces_Modules
SECTIONS="13.4.1_Bind_All_with_Qualified_Access" bash run_namespaces_modules_cases_wsl.sh
```
