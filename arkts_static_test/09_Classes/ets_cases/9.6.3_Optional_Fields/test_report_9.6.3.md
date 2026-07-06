# 9.6.3 可选字段 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda
**运行时：** ark VM

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 2 | 2 | 0 | 100% |
| compile-fail | 1 | 1 | 0 | 100% |
| runtime | 2 | 2 | 0 | 100% |
| **总计** | **5** | **5** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（2/2）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | CLS_09_06_3_001_PASS_OPTIONAL_FIELD_NO_INIT | optional无初始化器 | PASS |
| 002 | CLS_09_06_3_002_PASS_OPTIONAL_FIELD_WITH_INIT | optional含初始化器 | PASS |

### compile-fail（1/1）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 003 | CLS_09_06_3_003_FAIL_OPTIONAL_ASSIGN_TO_NONNULLISH | optional赋值给non-nullish | PASS |

### runtime（2/2）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 004 | CLS_09_06_3_004_RUNTIME_OPTIONAL_DEFAULT_UNDEFINED | optional默认undefined | PASS |
| 005 | CLS_09_06_3_005_RUNTIME_OPTIONAL_WITH_VALUE | optional赋值后访问 | PASS |

---

## 后续运行

```bash
SECTIONS="9.6.3_Optional_Fields" bash run_classes_cases_wsl.sh
```
