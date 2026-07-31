# Test Execution Report: 16.5.1 Asynchronous Lock

## Summary
| Metric | Value |
|--------|-------|
| compile-pass | 13 |
| compile-fail | 2 |
| runtime | 8 |
| **Total** | **23** |
| Pass Rate | 100% |

## Detailed Results

### compile-pass
| # | File | Description |
|---|------|-------------|
| 001 | CCY_16_05_01_001_PASS_async_lock_decl | AsyncLock 声明和锁请求 |
| 002 | CCY_16_05_01_002_PASS_async_lock_exclusive | EXCLUSIVE 模式 |
| 003 | CCY_16_05_01_003_PASS_async_lock_shared | SHARED 模式 |
| 004 | CCY_16_05_01_004_PASS_async_lock_critical_section | 临界区保护（S16.5.1 例） |
| 005 | CCY_16_05_01_005_PASS_async_sync_lock | async 函数内使用 AsyncLock |
| 006 | CCY_16_05_01_006_PASS_launch_with_lock | launch job 内使用 AsyncLock |
| 007 | CCY_16_05_01_007_PASS_producer_consumer_async_lock | 生产者-消费者模型 |
| 008 | CCY_16_05_01_008_PASS_atm_withdrawal | ATM 存取款模型 |
| 009 | CCY_16_05_01_009_PASS_deadlock_detection | 死锁避免（一致锁顺序） |
| 010 | CCY_16_05_01_010_PASS_race_condition_sync | 竞态条件防护 |
| 011 | CCY_16_05_01_011_PASS_bank_transfer | 银行转账 |
| 012 | CCY_16_05_01_012_PASS_dining_philosophers | 哲学家就餐 |

### compile-fail
| # | File | Description |
|---|------|-------------|
| 090 | CCY_16_05_01_090_FAIL_async_lock_double_lock | 双重加锁（嵌套 lockAsync） |
| 091 | CCY_16_05_01_091_FAIL_wrong_lock_api | 错误使用 AsyncLock（lock/unlock） |
| 092 | CCY_16_05_01_092_FAIL_dining_wrong_api | 哲学家就餐错误 API |

### runtime
| # | File | Description |
|---|------|-------------|
| 020 | CCY_16_05_01_020_RUNTIME_lock_exclusive | EXCLUSIVE 模式运行 |
| 021 | CCY_16_05_01_021_RUNTIME_lock_shared | SHARED 模式运行 |
| 022 | CCY_16_05_01_022_RUNTIME_lock_critical_section | 临界区保护（含 await） |
| 023 | CCY_16_05_01_023_RUNTIME_async_lock | async + AsyncLock 交叉集成 |
| 024 | CCY_16_05_01_024_RUNTIME_launch_lock | launch + AsyncLock 交叉集成 |
| 025 | CCY_16_05_01_025_RUNTIME_producer_consumer | 生产者-消费者运行 |
| 026 | CCY_16_05_01_026_RUNTIME_atm_withdrawal | ATM 取款运行 |
| 027 | CCY_16_05_01_027_RUNTIME_bank_transfer | 银行转账运行 |
