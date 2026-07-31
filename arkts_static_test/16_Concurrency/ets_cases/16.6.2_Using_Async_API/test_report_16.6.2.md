# Test Execution Report: 16.6.2 Using Async API

## Summary
| Metric | Value |
|--------|-------|
| compile-pass | 3 |
| compile-fail | 1 |
| runtime | 2 |
| **Total** | **6** |
| Pass Rate | 100% |

## Detailed Results

### compile-pass
| # | File | Description |
|---|------|-------------|
| 001 | CCY_16_06_02_001_PASS_async_main | async 函数作为入口点 |
| 002 | CCY_16_06_02_002_PASS_async_chain | 非 async 函数链式调用 async |
| 003 | CCY_16_06_02_003_PASS_async_main_multiple_jobs | async main 启动多个并发 job |

### compile-fail
| # | File | Description |
|---|------|-------------|
| 090 | CCY_16_06_02_090_FAIL_async_chain_wrong | 非 async 函数中 await |

### runtime
| # | File | Description |
|---|------|-------------|
| 020 | CCY_16_06_02_020_RUNTIME_async_main | async main 含 await 执行 |
| 021 | CCY_16_06_02_021_RUNTIME_async_chain | 非 async 函数 Promise.then 链 |
