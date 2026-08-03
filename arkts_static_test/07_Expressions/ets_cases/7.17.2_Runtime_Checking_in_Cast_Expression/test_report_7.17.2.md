# 7.17.2 Runtime Checking in Cast Expression - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|:----:|:----:|:----:|:------:|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 0 | 0 | 0 | — |
| runtime | 5 | 5 | 0 | 100% |
| **总计** | **11** | **11** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_17_02_001_PASS_OBJECT_AS_STRING | Object 变量 as string | ✅ |
| 002 | EXP_07_17_02_002_PASS_SUBTYPE_AS_SUPERTYPE | D as C（D extends C，always-success 警告） | ✅ |
| 003 | EXP_07_17_02_003_PASS_UNRELATED_AS_WARNING | D as E（不同 C 子类，always-throws 警告） | ✅ |
| 004 | EXP_07_17_02_004_PASS_INSTANCEOF_GUARD_AS | instanceof 守卫后 as | ✅ |
| 005 | EXP_07_17_02_005_PASS_VARIABLE_AS_OBJECT | string as Object（总是成功） | ✅ |
| 006 | EXP_07_17_02_006_PASS_INSTANCEOF_ALTERNATIVE_SMART_CAST | instanceof 直接 smart cast | ✅ |

### compile-fail

无 compile-fail 用例。

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 011 | EXP_07_17_02_011_RUNTIME_SUBTYPE_CAST_OK | D as C（运行时成功） | 2 | ✅ |
| 012 | EXP_07_17_02_012_RUNTIME_NON_SUBTYPE_CLASS_CAST_ERROR | int as string（→ClassCastError） | 1 | ✅ |
| 013 | EXP_07_17_02_013_RUNTIME_INSTANCEOF_PREVENTS_ERROR | instanceof 守卫安全 cast | 2 | ✅ |
| 014 | EXP_07_17_02_014_RUNTIME_UNRELATED_CLASS_CAST_ERROR | A as B 不相关类（→ClassCastError） | 1 | ✅ |
| 015 | EXP_07_17_02_015_RUNTIME_INSTANCEOF_FALSE_AS_ERROR | instanceof false 后 as（→ClassCastError） | 1 | ✅ |

## 执行过程异常修复记录

无异常修复记录。11/11 用例全部通过。

## 后续运行命令

```bash
SECTIONS="7.17.2_Runtime_Checking_in_Cast_Expression" bash run_expressions_cases_wsl.sh
```
