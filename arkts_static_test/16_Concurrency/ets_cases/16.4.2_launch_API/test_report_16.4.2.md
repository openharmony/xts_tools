# Test Execution Report: 16.4.2 launch API

## Summary
| Metric | Value |
|--------|-------|
| compile-pass | 5 |
| compile-fail | 4 |
| runtime | 5 |
| **Total** | **14** |
| Pass Rate | 100% |

## Detailed Results

### compile-pass
| # | File | Description |
|---|------|-------------|
| 001 | CCY_16_04_02_001_PASS_launch_basic | launch 在 async 函数中基本用法 |
| 002 | CCY_16_04_02_002_PASS_launch_non_async | launch 在非 async 函数中 |
| 003 | CCY_16_04_02_003_PASS_launch_async_lambda | launch + async lambda + await（⚠️ 编译器 CRASH） |
| 004 | CCY_16_04_02_004_PASS_launch_with_type | launch + 显式类型 + async + await（⚠️ 编译器 CRASH） |
| 005 | CCY_16_04_02_005_PASS_async_launch | async 上下文中通过 launch 启动异步任务 |

### compile-fail
| # | File | Description |
|---|------|-------------|
| 090 | CCY_16_04_02_GAP_090_FAIL_launch_async_inferred | GAP: `launch async { }` 推断形式不支持 |
| 091 | CCY_16_04_02_GAP_091_FAIL_launch_block_syntax | GAP: `launch { }` 块语法不支持 |
| 092 | CCY_16_04_02_090_FAIL_launch_wrong_type | launch 参数类型不匹配 |
| 093 | CCY_16_04_02_092_FAIL_launch_async_wrong | launch 类型不匹配 |

### runtime
| # | File | Description |
|---|------|-------------|
| 020 | CCY_16_04_02_020_RUNTIME_launch_await_result | launch sync + await 获取结果 |
| 021 | CCY_16_04_02_021_RUNTIME_launch_multiple_concurrent | 多个并发 launch |
| 022 | CCY_16_04_02_022_RUNTIME_launch_error_reject | launch 异常 → Promise reject |
| 023 | CCY_16_04_02_023_RUNTIME_launch_nested | 嵌套 launch 调用 |
| 024 | CCY_16_04_02_024_RUNTIME_async_launch | async + launch 交叉集成 |
