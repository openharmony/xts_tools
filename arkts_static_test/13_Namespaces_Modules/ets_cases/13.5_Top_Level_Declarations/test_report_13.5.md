# 13.5 Top-Level Declarations - 测试执行报告

**测试日期：** 2026-06-27
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 3 | 3 | 0 | 100% |
| runtime | 1 | 1 | 0 | 100% |
| **总计** | **4** | **4** | **0** | 100% |

---

## 详细执行结果

### compile-pass（3/3 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | NSM_13_05_001_PASS_TOP_DECL_CLASS | 顶层class声明 | PASS |
| 002 | NSM_13_05_002_PASS_TOP_DECL_FUNCTION | 顶层function声明 | PASS |
| 003 | NSM_13_05_003_PASS_TOP_DECL_VARIABLE | 顶层变量声明 | PASS |

### runtime（1/1 通过）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 004 | NSM_13_05_004_RUNTIME_TOP_DECL_ORDER | 顶层声明执行顺序 | 1 | PASS |

---

## 执行过程异常

**无异常。**

---

## 后续运行

```bash
cd /mnt/d/Sourcetree/spec_test/13_Namespaces_Modules
SECTIONS="13.5_Top_Level_Declarations" bash run_namespaces_modules_cases_wsl.sh
```
