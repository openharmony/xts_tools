# 9.6 字段声明 - 测试执行报告

**测试日期：** 2026-06-22
**编译器：** es2panda
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

### compile-pass（3/3）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | CLS_09_06_0001_PASS_FIELD_BASIC | 基本字段声明 | PASS |
| 002 | CLS_09_06_0002_PASS_FIELD_INITIALIZER | 字段初始化器 | PASS |
| 003 | CLS_09_06_0003_PASS_STATIC_INSTANCE_FIELD | static/instance字段 | PASS |

### compile-fail（3/3）

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 004 | CLS_09_06_0004_FAIL_DUPLICATE_FIELD_MODIFIER | 重复字段修饰符 | PASS |
| 005 | CLS_09_06_0005_FAIL_FIELD_METHOD_SAME_NAME | 字段方法同名 | PASS |
| 006 | CLS_09_06_0006_FAIL_FIELD_IMPL_TYPE_MISMATCH | 接口属性类型不匹配 | PASS |

### runtime（2/2）

| # | 用例 ID | 验证内容 | 结果 |
|---|---------|---------|------|
| 007 | CLS_09_06_0007_RUNTIME_FIELD_ACCESS | 字段访问 | PASS |
| 008 | CLS_09_06_0008_RUNTIME_FIELD_INITIALIZER_EXEC | 初始化器执行 | PASS |

---

## 后续运行

```bash
SECTIONS="9.6_Field_Declarations" bash run_classes_cases_wsl.sh
```
