# 7.28.2 Function Type Equality Operators - 测试执行报告

> 最后编译验证：2026-06-23，es2panda `--extension=ets`，Linux native

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 9 | 9 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime（真实执行） | 4 | 4 | 0 | 100% |
| **总计** | **16** | **16** | **0** | **100%** |

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 001 | EXP_07_28_02_001_PASS_SAME_FUNCTION | 同一函数对象 foo == foo 编译通过 | ✅ |
| 002 | EXP_07_28_02_002_PASS_DIFF_FUNCTION | 不同函数对象 foo == bar 编译通过 | ✅ |
| 003 | EXP_07_28_02_003_PASS_DIFF_SIGNATURE | 不同参数签名 foo == goo 编译通过 | ✅ |
| 004 | EXP_07_28_02_004_PASS_SAME_INSTANCE_METHOD | 同一实例同一方法 a.method == a.method 编译通过 | ✅ |
| 005 | EXP_07_28_02_005_PASS_STATIC_METHOD | 静态方法 A.method == A.method 编译通过 | ✅ |
| 006 | EXP_07_28_02_006_PASS_DIFF_INSTANCE_METHOD | 不同实例同名方法 a.method == aa.method 编译通过 | ✅ |
| 007 | EXP_07_28_02_007_PASS_DIFF_METHOD_NAME | 同一实例不同方法 a.method == a.foo 编译通过 | ✅ |
| 008 | EXP_07_28_02_008_PASS_STRICT_EQUALITY_FUNCTION | ===/!== 在函数类型上编译通过 | ✅ |
| 009 | EXP_07_28_02_009_PASS_SPEC_EXAMPLES | 全部 spec 示例代码编译通过 | ✅ |

### compile-fail

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 010 | EXP_07_28_02_010_FAIL_FUNCTION_VS_NUMERIC | 函数 vs int → 编译时错误 | ✅ (expected error) |
| 011 | EXP_07_28_02_011_FAIL_FUNCTION_VS_STRING | 函数 vs string → 编译时错误 | ✅ (expected error) |
| 012 | EXP_07_28_02_012_FAIL_FUNCTION_VS_BOOLEAN | 函数 vs boolean → 编译时错误 | ✅ (expected error) |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 013 | EXP_07_28_02_013_RUNTIME_SAME_FUNCTION | 相同/不同函数对象运行时比较 | 8 | ✅ |
| 014 | EXP_07_28_02_014_RUNTIME_METHOD_REFERENCE | 实例和静态方法引用等值运行时 | 9 | ✅ |
| 015 | EXP_07_28_02_015_RUNTIME_STRICT_EQUALITY_FUNCTION | ===/!== 在函数类型上运行时 | 11 | ✅ |
| 016 | EXP_07_28_02_016_RUNTIME_ALL_SPEC_EXAMPLES | 全部 spec 示例运行时验证 | 8 | ✅ |
| | **合计** | | **36** | |

## 执行过程异常修复记录

无执行过程异常。9/9 compile-pass 全部通过 ✅；3/3 compile-fail 预期错误 ✅；4/4 runtime 36 断言全部通过（包括全部 spec 示例）。无 D 类异常。ArkTS 支持 ===/!== 函数类型比较，与 ==/!= 语义相同。

## 后续运行命令

```bash
SECTIONS="7.28.2_Function_Type_Equality_Operators" bash run_expressions_cases_wsl.sh
```
