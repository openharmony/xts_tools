# Test Execution Report: 16.3 Asynchronous Execution

## Summary
| Metric | Value |
|--------|-------|
| compile-pass | 9 |
| compile-fail | 7 |
| runtime | 3 |
| **Total** | **19** |
| Pass Rate | 100% |

## Detailed Results

### compile-pass
| # | File | Description |
|---|------|-------------|
| 001 | CCY_16_03_001_PASS_ASYNC_FUNC | async 函数声明 |
| 002 | CCY_16_03_002_PASS_ASYNC_MAIN | async 入口函数 |
| 003 | CCY_16_03_003_PASS_ASYNC_LAMBDA | async lambda 表达式 |
| 004 | CCY_16_03_004_PASS_ASYNC_METHOD | async 实例方法 |
| 005 | CCY_16_03_005_PASS_AWAIT_PROMISE | await Promise 表达式 |
| 006 | CCY_16_03_006_PASS_AWAIT_NON_PROMISE | await 非 Promise 值（不挂起） |
| 007 | CCY_16_03_007_PASS_ASYNC_VOID | async 函数返回 Promise<void> |
| 008 | CCY_16_03_008_PASS_ASYNC_INFERRED | async 函数返回类型推断 |
| 009 | CCY_16_03_009_PASS_ASYNC_STATIC_METHOD | async 静态方法 |

### compile-fail
| # | File | Description |
|---|------|-------------|
| 010 | CCY_16_03_010_FAIL_ASYNC_IN_STATIC_INIT | async 函数在静态初始化中调用 |
| 011 | CCY_16_03_011_FAIL_ASYNC_ABSTRACT | async 函数有 abstract 修饰 |
| 012 | CCY_16_03_012_FAIL_ASYNC_NATIVE | async 函数有 native 修饰 |
| 013 | CCY_16_03_013_FAIL_ASYNC_RETURN_TYPE | async 函数返回类型非 Promise |
| 014 | CCY_16_03_014_FAIL_AWAIT_NON_ASYNC | await 在非 async 函数中 |
| 015 | CCY_16_03_015_FAIL_NON_ASYNC_WITH_AWAIT | 非 async 函数含 await |
| 016 | CCY_16_03_016_FAIL_ASYNC_STATIC_METHOD_INIT | async 静态方法在静态初始化中调用 |

### runtime
| # | File | Description |
|---|------|-------------|
| 020 | CCY_16_03_020_RUNTIME_ASYNC_FUNC | async 函数编译和声明 |
| 021 | CCY_16_03_021_RUNTIME_AWAIT_RESOLVE | await Promise resolve 值 |
| 022 | CCY_16_03_022_RUNTIME_AWAIT_THEN | async/await + Promise.then 链式调用 |
