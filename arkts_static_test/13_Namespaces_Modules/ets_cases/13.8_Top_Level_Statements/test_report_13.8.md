# 13.8 Top-Level Statements - 测试执行报告

**测试日期：** 2026-06-27
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM

---

## 总体统计

| 分类 | 总数 | 通过 | D类 | 通过率 |
|------|------|------|-----|--------|
| compile-pass | 2 | 2 | 0 | 100% |
| compile-fail | 2 | 1 | 1 | 50% |
| runtime | 2 | 2 | 0 | 100% |
| **总计** | **6** | **5** | **1** | 83% |

---

## 详细执行结果

### compile-pass（2/2 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | NSM_13_08_001_PASS_TOP_LEVEL_STATEMENTS | 顶层语句合法使用 | PASS |
| 002 | NSM_13_08_002_PASS_TOP_LEVEL_ORDER | 声明在前语句在后 | PASS |

### compile-fail（1/2 通过，1 D类不一致）

| # | 用例 ID | 测试内容 | 预期 | 实际 | 结果 |
|---|---------|---------|------|------|------|
| 003 | NSM_13_08_003_FAIL_TOP_LEVEL_RETURN | 顶层语句含return | 编译失败 | 编译失败 | PASS |
| 004 | NSM_13_08_004_FAIL_TOP_LEVEL_USE_BEFORE_DECLARE | 变量使用在声明前 | 编译失败 | 编译通过 | ⚠️ D类 |

### runtime（2/2 通过）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 005 | NSM_13_08_005_RUNTIME_TOP_LEVEL_EXEC | 顶层语句执行顺序 | PASS |
| 006 | NSM_13_08_006_RUNTIME_MAIN_AFTER_TOP_LEVEL | main()在top-level之后执行 | PASS |

---

## 执行过程异常

- **D3**: NSM_13_08_004 — spec要求变量使用在声明前应报compile-time error，但编译通过

---

## 后续运行

```bash
cd /mnt/d/Sourcetree/spec_test/13_Namespaces_Modules
SECTIONS="13.8_Top_Level_Statements" bash run_namespaces_modules_cases_wsl.sh
```
