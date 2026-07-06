# 9.5.2 Protected访问修饰符 - 测试执行报告

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
| 001 | CLS_09_05_2_001_PASS_PROTECTED_ACCESS_IN_CLASS | 类内访问protected | PASS |
| 002 | CLS_09_05_2_002_PASS_PROTECTED_ACCESS_IN_SUBCLASS | 子类访问protected | PASS |

### compile-fail（2/2）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 003 | CLS_09_05_2_003_FAIL_PROTECTED_ACCESS_OUTSIDE | 外部访问protected | PASS |
| 004 | CLS_09_05_2_004_FAIL_PROTECTED_FIELD_OUTSIDE | 外部访问protected字段 | PASS |

### runtime（2/2）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 005 | CLS_09_05_2_005_RUNTIME_PROTECTED_IN_SUBCLASS | protected子类访问 | PASS |
| 006 | CLS_09_05_2_006_RUNTIME_PROTECTED_METHOD_DISPATCH | protected方法派发 | PASS |

---

## 后续运行

```bash
SECTIONS="9.5.2_Protected_Access_Modifier" bash run_classes_cases_wsl.sh
```
