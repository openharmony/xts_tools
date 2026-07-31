# Test Execution Report: 16.3.1 Asynchronous Functions

## Summary
| Metric | Value |
|--------|-------|
| compile-pass | 8 |
| compile-fail | 4 |
| runtime | 4 |
| **Total** | **16** |
| Pass Rate | 100% |

## Detailed Results

### compile-pass
| # | File | Description |
|---|------|-------------|
| 001 | CCY_16_03_01_001_PASS_async_declaration | async 函数声明返回 Promise<T> |
| 002 | CCY_16_03_01_002_PASS_async_explicit_promise | async 函数显式返回 Promise<T> 实例 |
| 003 | CCY_16_03_01_003_PASS_async_void_return | async 函数返回 Promise<void> |
| 004 | CCY_16_03_01_004_PASS_async_main_entry | async 入口函数 |
| 005 | CCY_16_03_01_005_PASS_async_inferred_return | async 函数返回类型推断 |
| 006 | CCY_16_03_01_006_PASS_async_void_return_argless | Promise<void> 中无参数 return |
| 007 | CCY_16_03_01_007_PASS_async_modifier_not_part_of_type | async 修饰符不是函数类型的一部分 |
| 008 | CCY_16_03_01_008_PASS_async_return_covariant | async 函数返回类型协变 |

### compile-fail
| # | File | Description |
|---|------|-------------|
| 090 | CCY_16_03_01_090_FAIL_async_abstract | async abstract 方法 |
| 091 | CCY_16_03_01_091_FAIL_async_native | async native 函数 |
| 092 | CCY_16_03_01_092_FAIL_async_return_type | async 函数返回类型非 Promise |
| 093 | CCY_16_03_01_093_FAIL_async_static_init | async 函数在静态初始化中调用 |

### runtime
| # | File | Description |
|---|------|-------------|
| 020 | CCY_16_03_01_020_RUNTIME_async_resolve_value | async 函数正常返回 Promise resolved |
| 021 | CCY_16_03_01_021_RUNTIME_async_throw_reject | async 函数内 throw → Promise rejected |
| 022 | CCY_16_03_01_022_RUNTIME_async_multiple_suspension | async 函数多悬挂点顺序执行 |
| 023 | CCY_16_03_01_023_RUNTIME_async_explicit_promise_return | async 函数显式返回 Promise 实例 |
