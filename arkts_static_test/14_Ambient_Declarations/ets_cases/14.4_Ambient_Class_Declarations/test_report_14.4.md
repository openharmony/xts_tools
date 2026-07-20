# 14.4 Ambient Class Declarations — 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 11 | 11 | 0 | 100% |
| compile-fail | 9 | 9 | 0 | 100% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **21** | **21** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | AMB_14_04_001_PASS_EMPTY_CLASS | 空类 | ✅ PASS |
| 2 | AMB_14_04_002_PASS_CLASS_WITH_FIELDS | 多类型字段 | ✅ PASS |
| 3 | AMB_14_04_003_PASS_CLASS_STATIC_FIELDS | static 字段 | ✅ PASS |
| 4 | AMB_14_04_004_PASS_CLASS_READONLY_FIELDS | readonly 字段 | ✅ PASS |
| 5 | AMB_14_04_005_PASS_CLASS_CONSTRUCTOR | 构造器 | ✅ PASS |
| 6 | AMB_14_04_006_PASS_CLASS_METHODS | 方法 | ✅ PASS |
| 7 | AMB_14_04_007_PASS_CLASS_STATIC_METHODS | static 方法 | ✅ PASS |
| 8 | AMB_14_04_008_PASS_CLASS_METHOD_OVERLOAD | 方法重载 | ✅ PASS |
| 9 | AMB_14_04_009_PASS_CLASS_EXTENDS | extends | ✅ PASS |
| 10 | AMB_14_04_010_PASS_CLASS_IMPLEMENTS | implements | ✅ PASS |
| 11 | AMB_14_04_011_PASS_CLASS_ACCESSOR | get/set 访问器 | ✅ PASS |

### compile-fail

| # | 用例 ID | 测试内容 | spec 预期 | 实际 | 结果 |
|---|---------|---------|----------|------|------|
| 1 | AMB_14_04_013_FAIL_FIELD_INITIALIZER | 字段初始化器 | compile-time error | 报错 | ✅ PASS |
| 2 | AMB_14_04_014_FAIL_FIELD_NO_TYPE | 字段无类型 | compile-time error | 报错 | ✅ PASS |
| 3 | AMB_14_04_015_FAIL_CONSTRUCTOR_BODY | 构造器有体 | compile-time error | 报错 | ✅ PASS |
| 4 | AMB_14_04_016_FAIL_METHOD_BODY | 方法有体 | compile-time error | 报错 | ✅ PASS |
| 5 | AMB_14_04_017_FAIL_ACCESSOR_BODY | 访问器有体 | compile-time error | 报错 | ✅ PASS |
| 6 | AMB_14_04_018_FAIL_METHOD_NO_RETURN_TYPE | 方法无返回类型 | compile-time error | 报错 | ✅ PASS |
| 7 | AMB_14_04_019_FAIL_STATIC_FIELD_INIT | static 字段初始化 | compile-time error | 报错 | ✅ PASS |
| 8 | AMB_14_04_020_FAIL_READONLY_FIELD_INIT | readonly 字段初始化 | compile-time error | 报错 | ✅ PASS |
| 9 | AMB_14_04_022_FAIL_STRUCT_NOT_ALLOWED | struct 不支持 | compile-time error | 报错 | ✅ PASS |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | AMB_14_04_021_RUNTIME_AMBIENT_CLASS_CONTEXT | ambient class + main | 1 | ✅ PASS |

## 执行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/14_Ambient_Declarations
SECTIONS="14.4_Ambient_Class_Declarations" bash run_ambient_declarations_cases_wsl.sh
```
