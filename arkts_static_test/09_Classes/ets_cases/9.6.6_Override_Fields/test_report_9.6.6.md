# 9.6.6 Override字段 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda
**运行时：** ark VM

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 3 | 3 | 0 | 100% |
| compile-fail | 4 | 4 | 0 | 100% |
| runtime | 2 | 2 | 0 | 100% |
| **总计** | **9** | **9** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（3/3）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | CLS_09_06_6_001_PASS_OVERRIDE_SAME_TYPE_FIELD | override同类型字段 | PASS |
| 002 | CLS_09_06_6_002_PASS_OVERRIDE_FIELD_INITIALIZER | override字段初始化器 | PASS |
| 003 | CLS_09_06_6_003_PASS_OVERRIDE_FIELD_IN_CTOR | 构造器中初始化override | PASS |

### compile-fail（4/4）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 004 | CLS_09_06_6_004_FAIL_OVERRIDE_FIELD_TYPE_MISMATCH | override类型不匹配 | PASS |
| 005 | CLS_09_06_6_005_FAIL_OVERRIDE_FIELD_ACCESS_MISMATCH | override修饰符不匹配 | PASS |
| 006 | CLS_09_06_6_006_FAIL_OVERRIDE_STATIC_FIELD | static+override | PASS |
| 007 | CLS_09_06_6_007_FAIL_OVERRIDE_NO_BASE_FIELD | override不存在字段 | PASS |

### runtime（2/2）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 008 | CLS_09_06_6_008_RUNTIME_OVERRIDE_FIELD_VALUE | override字段值运行时 | PASS |
| 009 | CLS_09_06_6_009_RUNTIME_OVERRIDE_FIELD_INIT_ORDER | override字段初始化顺序 | PASS |

---

## 后续运行

```bash
SECTIONS="9.6.6_Override_Fields" bash run_classes_cases_wsl.sh
```
