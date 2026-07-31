# Test Execution Report: 16.3.2 Asynchronous Lambdas

## Summary
| Metric | Value |
|--------|-------|
| compile-pass | 5 |
| compile-fail | 1 |
| runtime | 3 |
| **Total** | **9** |
| Pass Rate | 100% |

## Detailed Results

### compile-pass
| # | File | Description |
|---|------|-------------|
| 001 | CCY_16_03_02_001_PASS_async_lambda_variable | async lambda 作为变量 |
| 002 | CCY_16_03_02_002_PASS_async_lambda_argument | async lambda 作为参数 |
| 003 | CCY_16_03_02_003_PASS_async_lambda_no_suspension | async lambda 无悬挂点 |
| 004 | CCY_16_03_02_004_PASS_async_lambda_trailing | async lambda trailing lambda 语法 |
| 005 | CCY_16_03_02_005_PASS_async_lambda_closure | async lambda 闭包捕获外部变量 |

### compile-fail
| # | File | Description |
|---|------|-------------|
| 090 | CCY_16_03_02_090_FAIL_await_non_async_lambda | await 在非 async lambda 中 |

### runtime
| # | File | Description |
|---|------|-------------|
| 020 | CCY_16_03_02_020_RUNTIME_async_lambda_execution | async lambda 执行 → Promise resolved |
| 021 | CCY_16_03_02_021_RUNTIME_async_lambda_await | async lambda 内含 await 悬挂 |
| 022 | CCY_16_03_02_022_RUNTIME_async_lambda_no_suspension | async lambda 无悬挂点立即返回 |
