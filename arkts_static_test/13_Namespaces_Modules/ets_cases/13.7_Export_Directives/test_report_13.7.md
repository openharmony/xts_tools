# 13.7 Export Directives - 测试执行报告

**测试日期：** 2026-06-27
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 2 | 2 | 0 | 100% |
| runtime | 1 | 1 | 0 | 100% |
| **总计** | **3** | **3** | **0** | 100% |

---

## 详细执行结果

### compile-pass（2/2 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | NSM_13_07_001_PASS_EXPORT_DIRECTIVE_SELECTIVE | export指令选择性导出 | PASS |
| 002 | NSM_13_07_002_PASS_EXPORT_DIRECTIVE_SINGLE | export指令单名导出 | PASS |

### runtime（1/1 通过）

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 003 | NSM_13_07_003_RUNTIME_EXPORT_DIRECTIVE | export指令运行时 | 1 | PASS |

---

## 执行过程异常

**无异常。**

---

## 后续运行

```bash
cd /mnt/d/Sourcetree/spec_test/13_Namespaces_Modules
SECTIONS="13.7_Export_Directives" bash run_namespaces_modules_cases_wsl.sh
```
