# Test Execution Report: 16.3.3 Asynchronous Methods

## Summary
| Metric | Value |
|--------|-------|
| compile-pass | 3 |
| compile-fail | 3 |
| runtime | 3 |
| **Total** | **9** |
| Pass Rate | 100% |

## Detailed Results

### compile-pass
| # | File | Description |
|---|------|-------------|
| 001 | CCY_16_03_03_001_PASS_async_instance_method | async 实例方法 |
| 002 | CCY_16_03_03_002_PASS_async_static_method | async 静态方法 |
| 003 | CCY_16_03_03_003_PASS_async_method_override_covariant | async 方法覆写与返回类型协变 |

### compile-fail
| # | File | Description |
|---|------|-------------|
| 090 | CCY_16_03_03_090_FAIL_async_abstract_method | async 抽象方法 |
| 091 | CCY_16_03_03_091_FAIL_async_method_static_init | async 方法在静态初始化中调用 |
| 092 | CCY_16_03_03_092_FAIL_async_method_interface | interface 中声明 async 方法 |

### runtime
| # | File | Description |
|---|------|-------------|
| 020 | CCY_16_03_03_020_RUNTIME_async_instance_method | async 实例方法执行 |
| 021 | CCY_16_03_03_021_RUNTIME_async_static_method | async 静态方法执行 |
| 022 | CCY_16_03_03_022_RUNTIME_async_method_chain | async 方法链式调用含 await |
