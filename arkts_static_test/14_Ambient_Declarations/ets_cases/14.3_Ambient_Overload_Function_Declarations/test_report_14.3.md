# 14.3 Ambient Overload Function Declarations — 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 6 | 6 | 0 | 100% |
| compile-fail | 5 | 2 | 3 | 40% |
| runtime（真实执行） | 1 | 1 | 0 | 100% |
| **总计** | **12** | **9** | **3** | **75%** |

> compile-fail 3 个失败为 D 类 Spec 不一致（重载等价签名/空重载集/非 declare 函数引用），编译器未强制执行，用例保留为看护。

## 详细执行结果

### compile-pass

| # | 用例 ID | 测试内容 | 结果 |
|---|---------|---------|------|
| 1 | AMB_14_03_001_PASS_TOP_LEVEL_OVERLOAD | 顶层 ambient overload | ✅ PASS |
| 2 | AMB_14_03_002_PASS_NAMESPACE_OVERLOAD | namespace 内 overload | ✅ PASS |
| 3 | AMB_14_03_003_PASS_THREE_WAY_OVERLOAD | 三重载 | ✅ PASS |
| 4 | AMB_14_03_004_PASS_DIFFERENT_PARAM_COUNT | 不同参数个数 | ✅ PASS |
| 5 | AMB_14_03_005_PASS_MIXED_OPTIONAL | 可选参数混合 | ✅ PASS |
| 6 | AMB_14_03_006_PASS_OVERLOAD_USE_IN_FUNCTION | 函数内调用重载 | ✅ PASS |

### compile-fail

| # | 用例 ID | 测试内容 | spec 预期 | 实际 | 结果 |
|---|---------|---------|----------|------|------|
| 1 | AMB_14_03_007_FAIL_OVERLOAD_UNDEFINED_REF | 引用未定义函数 | compile-time error | 报错 | ✅ PASS |
| 2 | AMB_14_03_008_FAIL_OVERLOAD_DUPLICATE_SIG | 重载等价签名 | compile-time error | 编译通过 | ⚠️ D 类 |
| 3 | AMB_14_03_009_FAIL_OVERLOAD_EMPTY_SET | 空重载集 | compile-time error | 编译通过 | ⚠️ D 类 |
| 4 | AMB_14_03_010_FAIL_OVERLOAD_NO_FUNCS | 未声明标识符 | compile-time error | 报错 | ✅ PASS |
| 5 | AMB_14_03_011_FAIL_OVERLOAD_REF_NON_AMBIENT | 引用非 declare 函数 | compile-time error | 编译通过 | ⚠️ D 类 |

### runtime

| # | 用例 ID | 验证内容 | 断言数 | 结果 |
|---|---------|---------|--------|------|
| 1 | AMB_14_03_012_RUNTIME_AMBIENT_OVERLOAD_CONTEXT | overload + main | 1 | ✅ PASS |

## 执行命令

```bash
cd /mnt/d/git/ARKTS_STATIC_TEST/14_Ambient_Declarations
SECTIONS="14.3_Ambient_Overload_Function_Declarations" bash run_ambient_declarations_cases_wsl.sh
```
