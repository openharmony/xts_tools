# Test Execution Report: 16.2 Overview of Concurrency Features

## Summary
| Metric | Value |
|--------|-------|
| compile-pass | 3 |
| compile-fail | 2 |
| runtime | 2 |
| **Total** | **7** |
| Pass Rate | 100% |

## Detailed Results

### compile-pass
| # | File | Description |
|---|------|-------------|
| 001 | CCY_16_02_001_PASS_ASYNC_AWAIT | 异步执行原语：async/await/Promise 基本用法 |
| 002 | CCY_16_02_002_PASS_LAUNCH_API | 并行执行 API：launch 基本用法 |
| 003 | CCY_16_02_003_PASS_SYNC_LOCK | 同步 API：AsyncLock 基本用法 |

### compile-fail
| # | File | Description |
|---|------|-------------|
| 090 | CCY_16_02_090_FAIL_AWAIT_OUTSIDE_ASYNC | await 必须在 async 函数内使用 |
| 091 | CCY_16_02_091_FAIL_ASYNC_RETURN_NON_PROMISE | async 函数必须返回 Promise<T> |

### runtime
| # | File | Description |
|---|------|-------------|
| 020 | CCY_16_02_020_RUNTIME_ASYNC_EXECUTION | async/await/Promise 运行时行为验证 |
| 021 | CCY_16_02_021_RUNTIME_LAUNCH_EXECUTION | launch API 运行时行为验证 |
