# 7.21.8 Logical Complement - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 3 | 3 | 0 | 100% |
| compile-fail | 5 | 0 | ⚠️ 5 D类 | 0%* |
| runtime | 8 | 8 | 0 | 100% |
| **总计** | **16** | **11** | **⚠️ 5 D类** | **69%** |

> *compile-fail 5 个全为 D 类 Spec 不一致：!int/!string/!Object/!null/!enum 实际编译通过，spec 要求非 boolean/非 Extended Conditional 类型报编译时错误。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_21_08_001_PASS_BASIC | !true / !false 字面量 | ✅ |
| 002 | EXP_07_21_08_002_PASS_VARIABLE | !boolean 变量 | ✅ |
| 003 | EXP_07_21_08_003_PASS_DOUBLE_NEG | !!boolean 双重取反 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 021 | EXP_07_21_08_021_FAIL_INT | !int（非 boolean）| ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |
| 022 | EXP_07_21_08_022_FAIL_STRING | !string | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |
| 023 | EXP_07_21_08_023_FAIL_OBJECT | !Object | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |
| 024 | EXP_07_21_08_024_FAIL_NULL | !null | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |
| 025 | EXP_07_21_08_025_FAIL_ENUM | !enum | ⚠️ UNEXPECTED PASS | D 类：Spec 与实现不一致 |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 031 | EXP_07_21_08_031_RUNTIME_BASIC | !true=false, !false=true | 2 | ✅ |
| 032 | EXP_07_21_08_032_RUNTIME_VARIABLE | boolean 变量取反 | 2 | ✅ |
| 033 | EXP_07_21_08_033_RUNTIME_DOUBLE_NEG | !!x == x 恒等式 | 2 | ✅ |
| 034 | EXP_07_21_08_034_RUNTIME_COMPLEX | De Morgan 定律 | 4 | ✅ |
| 035 | EXP_07_21_08_035_RUNTIME_NONBOOL_INT | !0=true(falsy), !42=false(truthy) | 2 | ✅ |
| 036 | EXP_07_21_08_036_RUNTIME_NONBOOL_STRING | !""=true, !"hello"=false | 2 | ✅ |
| 037 | EXP_07_21_08_037_RUNTIME_NONBOOL_NULL_UNDEFINED | !null=true, !Object=false | 2 | ✅ |
| 038 | EXP_07_21_08_038_RUNTIME_NONBOOL_ALL_TYPES | 综合 truthy/falsy 校验 | 4 | ✅ |

## 执行过程异常修复记录

无。

## 后续运行命令

```bash
SECTIONS="7.21.8_Logical_Complement" bash run_expressions_cases_wsl.sh
```
