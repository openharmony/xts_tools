# 9.6.2 只读常量字段 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda
**运行时：** ark VM

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 2 | 2 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime | 2 | 2 | 0 | 100% |
| **总计** | **6** | **6** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（2/2）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | CLS_09_06_2_001_PASS_READONLY_FIELD | readonly字段 | PASS |
| 002 | CLS_09_06_2_002_PASS_STATIC_READONLY | static readonly | PASS |

### compile-fail（2/2）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 003 | CLS_09_06_2_003_FAIL_READONLY_REASSIGN | readonly重新赋值 | PASS |
| 004 | CLS_09_06_2_004_FAIL_STATIC_READONLY_REASSIGN | static readonly重新赋值 | PASS |

### runtime（2/2）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 005 | CLS_09_06_2_005_RUNTIME_READONLY_ACCESS | readonly访问 | PASS |
| 006 | CLS_09_06_2_006_RUNTIME_READONLY_INIT_IN_CTOR | 构造器初始化readonly | PASS |

---

## 后续运行

```bash
SECTIONS="9.6.2_Readonly_Constant_Fields" bash run_classes_cases_wsl.sh
```
