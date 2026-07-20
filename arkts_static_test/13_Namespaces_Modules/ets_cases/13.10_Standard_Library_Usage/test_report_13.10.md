# 13.10 Standard Library Usage - 测试执行报告

**测试日期：** 2026-06-27
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM

---

## 总体统计

| 分类 | 总数 | 通过 | D类 | 通过率 |
|------|------|------|-----|--------|
| compile-pass | 1 | 1 | 0 | 100% |
| compile-fail | 1 | 0 | 1 | — |
| runtime | 1 | 1 | 0 | 100% |
| **总计** | **3** | **2** | **1** | 67% |

---

## 详细执行结果

### compile-pass（1/1 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | NSM_13_10_001_PASS_STDLIB_CONSOLE | console.log标准库使用 | PASS |

### compile-fail（D类不一致）

| # | 用例 ID | 测试内容 | 预期 | 实际 | 结果 |
|---|---------|---------|------|------|------|
| 002 | NSM_13_10_002_FAIL_STDLIB_NAME_REUSE | 重新定义标准库名 | 编译失败 | 编译通过 | ⚠️ D类 |

### runtime（1/1 通过）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 003 | NSM_13_10_003_RUNTIME_STDLIB_ACCESS | 标准库运行时访问 | PASS |

---

## 执行过程异常

- **D1**: NSM_13_10_002 — spec要求标准库名重定义应报compile-time error，但编译通过

---

## 后续运行

```bash
cd /mnt/d/Sourcetree/spec_test/13_Namespaces_Modules
SECTIONS="13.10_Standard_Library_Usage" bash run_namespaces_modules_cases_wsl.sh
```
