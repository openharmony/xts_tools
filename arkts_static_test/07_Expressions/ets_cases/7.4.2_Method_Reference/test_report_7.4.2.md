# 7.4.2 Method Reference - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 3 | 3 | 0 | 100% |
| **总计** | **11** | **11** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_04_02_001_PASS_STATIC_METHOD_REF | 静态方法引用 C.foo | ✅ |
| 002 | EXP_07_04_02_002_PASS_INSTANCE_METHOD_REF | 实例方法引用 new C().bar | ✅ |
| 003 | EXP_07_04_02_003_PASS_METHOD_REF_BINDING | 实例绑定引用 m1/c1, m2/c2 | ✅ |
| 004 | EXP_07_04_02_004_PASS_GENERIC_METHOD_REF | 泛型方法引用显式类型参数 | ✅ |
| 005 | EXP_07_04_02_005_PASS_INDIVIDUAL_OVERLOAD_METHOD_REF | 显式重载单方法引用 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 | 说明 |
|---|---------|---------|------|------|
| 006 | EXP_07_04_02_006_FAIL_GENERIC_METHOD_REF_NO_ARGS | 泛型方法引用无类型参数 | ✅ (expected error) | |
| 007 | EXP_07_04_02_007_FAIL_IMPLICIT_OVERLOADED_METHOD_REF | 隐式重载方法名引用 | ✅ (expected error) | |
| 008 | EXP_07_04_02_008_FAIL_EXPLICIT_OVERLOAD_METHOD_REF | 显式重载方法名引用 | ✅ (expected error) | |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 009 | EXP_07_04_02_009_RUNTIME_INSTANCE_BINDING | m1()=42, m2()=123 实例绑定隔离 | 2 | ✅ |
| 010 | EXP_07_04_02_010_RUNTIME_STATIC_METHOD_REF_CALL | Calc.add(10,20)==30 | 1 | ✅ |
| 011 | EXP_07_04_02_011_RUNTIME_GENERIC_METHOD_REF_CALL | identity<int>(99)==99 | 1 | ✅ |

## 执行过程异常修复记录

| 问题 | 修复 |
|------|------|
| EXP_07_04_02_011 中 `Box` 与 stdlib 类名冲突 | 类名 `Box` → `Wrapper` |

## 后续运行命令

```bash
SECTIONS="7.4.2_Method_Reference" bash run_expressions_cases_wsl.sh
```
