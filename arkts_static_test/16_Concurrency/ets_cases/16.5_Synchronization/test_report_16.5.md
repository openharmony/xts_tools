# Test Execution Report: 16.5 Synchronization

## Summary
| Metric | Value |
|--------|-------|
| compile-pass | 1 |
| compile-fail | 5 |
| runtime | 1 |
| **Total** | **7** |
| Pass Rate | 100% |

## Detailed Results

### compile-pass
| # | File | Description |
|---|------|-------------|
| 001 | CCY_16_05_001_PASS_ASYNCLOCK_DECL | AsyncLock 声明和 lockAsync |

### compile-fail
| # | File | Description |
|---|------|-------------|
| 100 | CCY_16_05_100_FAIL_producer_consumer | 生产者-消费者 AsyncLock 同步（错用 lock/unlock） |
| 101 | CCY_16_05_101_FAIL_atm_withdrawal | ATM 取款 AsyncMutex 同步（错用 lock/unlock） |
| 102 | CCY_16_05_102_FAIL_deadlock_scenario | 死锁场景（错用 lock/unlock） |
| 103 | CCY_16_05_103_FAIL_bank_transfer | 银行转账（错用 lock/unlock） |
| 190 | CCY_16_05_190_FAIL_race_condition | 竞态条件演示（错用 lock/unlock） |

### runtime
| # | File | Description |
|---|------|-------------|
| 001 | CCY_16_05_001_RUNTIME_sync_overview | 同步机制总览：AsyncLock + Atomic |
