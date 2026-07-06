# 9.3.2 实现可选接口属性 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM
**运行脚本：** `09_Classes/run_classes_cases_wsl.sh`

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 3 | 3 | 0 | 100% |
| compile-fail | 1 | 1 | 0 | 100% |
| runtime（真实执行） | 2 | 2 | 0 | 100% |
| **总计** | **6** | **6** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（3/3 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | CLS_09_03_2_001_PASS_NO_IMPL_OPTIONAL | 不实现可选属性 | PASS |
| 002 | CLS_09_03_2_002_PASS_OPTIONAL_FIELD_IMPL | optional字段实现 | PASS |
| 003 | CLS_09_03_2_003_PASS_ACCESSOR_IMPL_OPTIONAL | accessor实现可选属性 | PASS |

### compile-fail（1/1 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 004 | CLS_09_03_2_004_FAIL_NON_OPTIONAL_IMPL_OPTIONAL | 非可选字段实现可选属性 | PASS |

### runtime（2/2 — ark VM 真实执行）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 005 | CLS_09_03_2_005_RUNTIME_OPTIONAL_FIELD_ACCESS | optional字段运行时 | PASS |
| 006 | CLS_09_03_2_006_RUNTIME_DEFAULT_ACCESSOR_UNDEFINED | 默认accessor返回undefined | PASS |

---

## 后续运行

```bash
SECTIONS="9.3.2_Implementing_Optional_Interface_Properties" bash run_classes_cases_wsl.sh
```
