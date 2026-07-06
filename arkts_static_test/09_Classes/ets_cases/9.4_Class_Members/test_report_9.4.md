# 9.4 类成员 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda (ArkTS Static Compiler)
**运行时：** ark VM

---

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 3 | 3 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime | 2 | 2 | 0 | 100% |
| **总计** | **8** | **8** | **0** | **100%** |

---

## 详细执行结果

### compile-pass（3/3 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | CLS_09_04_001_PASS_STATIC_INSTANCE_SAME_NAME | static/instance同名 | PASS |
| 002 | CLS_09_04_002_PASS_CLASS_WITH_ALL_MEMBER_TYPES | 含所有成员类型 | PASS |
| 003 | CLS_09_04_003_PASS_INHERIT_PUBLIC_PROTECTED | 继承public/protected | PASS |

### compile-fail（3/3 通过）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 004 | CLS_09_04_004_FAIL_FIELD_METHOD_SAME_NAME | 同scope字段方法同名 | PASS |
| 005 | CLS_09_04_005_FAIL_FIELD_FIELD_SAME_NAME | 同scope两字段同名 | PASS |
| 006 | CLS_09_04_006_FAIL_METHOD_METHOD_SAME_NAME | 同scope同签名方法 | PASS |

### runtime（2/2）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 007 | CLS_09_04_007_RUNTIME_STATIC_INSTANCE_DISTINCT | static/instance区分 | PASS |
| 008 | CLS_09_04_008_RUNTIME_MEMBER_ACCESS | 成员访问 | PASS |

---

## 后续运行

```bash
SECTIONS="9.4_Class_Members" bash run_classes_cases_wsl.sh
```
