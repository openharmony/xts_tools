# 9.6.1 静态和实例字段 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda
**运行时：** ark VM

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 3 | 3 | 0 | 100% |
| compile-fail | 2 | 2 | 0 | 100% |
| runtime | 2 | 2 | 0 | 100% |
| **总计** | **7** | **7** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（3/3）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | CLS_09_06_1_001_PASS_STATIC_FIELD_BASIC | static字段基本 | PASS |
| 002 | CLS_09_06_1_002_PASS_INSTANCE_FIELD_BASIC | instance字段基本 | PASS |
| 003 | CLS_09_06_1_003_PASS_STATIC_FIELD_ACCESS_BY_CLASSNAME | 类名访问static | PASS |

### compile-fail（2/2）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 004 | CLS_09_06_1_004_FAIL_STATIC_FIELD_GENERIC_PARAM | static使用泛型参数 | PASS |
| 005 | CLS_09_06_1_005_FAIL_INSTANCE_ACCESS_STATIC | 实例访问static | PASS |

### runtime（2/2）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 006 | CLS_09_06_1_006_RUNTIME_STATIC_FIELD_SHARED | static字段共享 | PASS |
| 007 | CLS_09_06_1_007_RUNTIME_INSTANCE_FIELD_PER_OBJ | instance字段独立 | PASS |

---

## 后续运行

```bash
SECTIONS="9.6.1_Static_and_Instance_Fields" bash run_classes_cases_wsl.sh
```
