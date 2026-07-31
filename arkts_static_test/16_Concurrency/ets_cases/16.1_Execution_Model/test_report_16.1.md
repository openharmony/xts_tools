# Test Execution Report: 16.1 Execution Model

## Summary
| Metric | Value |
|--------|-------|
| compile-pass | 10 |
| compile-fail | 2 |
| runtime | 4 |
| **Total** | **16** |
| Pass Rate | 100% |

## Detailed Results

### compile-pass
| # | File | Description |
|---|------|-------------|
| 001 | CCY_16_01_001_PASS_main_job | 程序入口点 main job |
| 002 | CCY_16_01_002_PASS_async_job | async 函数定义一个可并发执行的 job |
| 003 | CCY_16_01_003_PASS_multiple_jobs | 多个 job 的创建和返回值获取 |
| 004 | CCY_16_01_004_PASS_job_return_value | job 通过 Promise 通信返回值 |
| 005 | CCY_16_01_005_PASS_worker_thread_independence | worker thread 一次只执行一个 job |
| 006 | CCY_16_01_006_PASS_zero_suspension_points | job 可以没有悬挂点（同步函数） |
| 007 | CCY_16_01_007_PASS_one_suspension_point | job 可以有一个悬挂点（await 暂停） |
| 008 | CCY_16_01_008_PASS_multiple_suspension_points | job 可以有多个悬挂点（多次 await） |
| 009 | CCY_16_01_009_PASS_main_job_implicit | 程序隐式定义 main job（入口点） |
| 010 | CCY_16_01_010_PASS_suspension_allows_other_jobs | 悬挂点允许同一 worker thread 上另一个 job 执行 |

### compile-fail
| # | File | Description |
|---|------|-------------|
| 090 | CCY_16_01_090_FAIL_suspension_in_non_async | 非 async 函数中不允许有悬挂点 |
| 099 | CCY_16_01_099_FAIL_execution_model | await 在非 async 函数中 |

### runtime
| # | File | Description |
|---|------|-------------|
| 020 | CCY_16_01_020_RUNTIME_main_job | main job 执行并正确返回 |
| 021 | CCY_16_01_021_RUNTIME_job_completion | job 完成触发 Promise resolve |
| 022 | CCY_16_01_022_RUNTIME_main_job_termination | main job 完成后启动程序终止序列 |
| 023 | CCY_16_01_023_RUNTIME_async_job_suspend_resume | async job 在悬挂点暂停后恢复执行 |
