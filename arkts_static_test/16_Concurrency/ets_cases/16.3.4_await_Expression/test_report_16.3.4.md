# Test Execution Report: 16.3.4 await Expression

## Summary
| Metric | Value |
|--------|-------|
| compile-pass | 13 |
| compile-fail | 1 |
| runtime | 5 |
| **Total** | **19** |
| Pass Rate | 100% |

## Detailed Results

### compile-pass
| # | File | Description |
|---|------|-------------|
| 001 | CCY_16_03_04_001_PASS_await_promise | await Promise 表达式 |
| 002 | CCY_16_03_04_002_PASS_await_non_promise | await 非 Promise 值 |
| 003 | CCY_16_03_04_003_PASS_await_optional_chaining | await 可选链操作 |
| 004 | CCY_16_03_04_004_PASS_await_promise_variable | await Promise 变量 |
| 005 | CCY_16_03_04_005_PASS_await_multiple | 连续 await 多个表达式 |
| 006 | CCY_16_03_04_006_PASS_await_union_type | await 联合类型 Promise<T> \| T |
| 007 | CCY_16_03_04_007_PASS_await_in_for_loop | await 在 for 循环中 |
| 008 | CCY_16_03_04_008_PASS_await_in_while_loop | await 在 while 循环中 |
| 009 | CCY_16_03_04_009_PASS_await_in_try_catch | await 在 try/catch 中 |
| 010 | CCY_16_03_04_010_PASS_await_in_try_catch_finally | await 在 try/catch/finally 中 |
| 011 | CCY_16_03_04_011_PASS_await_in_if_else | await 在 if/else 中 |
| 012 | CCY_16_03_04_012_PASS_await_nested_expression | 嵌套 await 表达式 |
| 013 | CCY_16_03_04_013_PASS_await_awaited_type | Awaited<T> 结果类型验证 |

### compile-fail
| # | File | Description |
|---|------|-------------|
| 090 | CCY_16_03_04_090_FAIL_await_outside_async | await 在非 async 函数中 |

### runtime
| # | File | Description |
|---|------|-------------|
| 020 | CCY_16_03_04_020_RUNTIME_await_promise_resolve | await 挂起→恢复获取 resolved 值 |
| 021 | CCY_16_03_04_021_RUNTIME_await_non_promise | await 非 Promise 立即返回 |
| 022 | CCY_16_03_04_022_RUNTIME_await_rejected_throw | await rejected Promise 抛出异常 |
| 023 | CCY_16_03_04_023_RUNTIME_await_optional_chain | await 可选链条件悬挂 |
| 024 | CCY_16_03_04_024_RUNTIME_await_multiple_sequential | 连续 await 顺序执行 |
