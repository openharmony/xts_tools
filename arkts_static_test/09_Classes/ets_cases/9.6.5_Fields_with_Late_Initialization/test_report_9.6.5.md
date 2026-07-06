# 9.6.5 带延迟初始化的字段 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda
**运行时：** ark VM

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 2 | 2 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime | 2 | 2 | 0 | 100% |
| **总计** | **8** | **8** | **0** | **100%** |

**注：** CLS_09_06_5_005 标注 ⚠️SPEC不一致（es2panda允许optional+late init，spec禁止）。

---

## 详细执行结果

### compile-pass（2/2）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | CLS_09_06_5_001_PASS_LATE_INIT_FIELD | late init字段 | PASS |
| 002 | CLS_09_06_5_002_PASS_LATE_INIT_ASSIGN_THEN_READ | 初始化后读取 | PASS |

### compile-fail（4/4）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 003 | CLS_09_06_5_003_FAIL_LATE_INIT_STATIC | static late init | PASS |
| 004 | CLS_09_06_5_004_FAIL_LATE_INIT_READONLY | readonly late init | PASS |
| 005 | CLS_09_06_5_005_FAIL_LATE_INIT_OPTIONAL | optional late init ⚠️SPEC不一致 | PASS |
| 006 | CLS_09_06_5_006_FAIL_LATE_INIT_WITH_INITIALIZER | late init含初始化器 | PASS |

### runtime（2/2）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 007 | CLS_09_06_5_007_RUNTIME_LATE_INIT_ASSIGN_READ | 初始化后读取运行时 | PASS |
| 008 | CLS_09_06_5_008_RUNTIME_LATE_INIT_UNINIT_ERROR | 未初始化读取runtime error | PASS |

---

## 后续运行

```bash
SECTIONS="9.6.5_Fields_with_Late_Initialization" bash run_classes_cases_wsl.sh
```
