# Test Execution Report: 16.5.3 Asynchronous ReadWrite Lock

## Summary
| Metric | Value |
|--------|-------|
| compile-pass | 1 |
| compile-fail | 1 |
| runtime | 3 |
| **Total** | **5** |
| Pass Rate | 100% |

## Detailed Results

### compile-pass
| # | File | Description |
|---|------|-------------|
| 001 | CCY_16_05_03_001_PASS_rwlock_decl | AsyncRWLock 声明 |

### compile-fail
| # | File | Description |
|---|------|-------------|
| 090 | CCY_16_05_03_090_FAIL_rwlock_wrong_api | 错误方法调用 |

### runtime
| # | File | Description |
|---|------|-------------|
| 020 | CCY_16_05_03_020_RUNTIME_rwlock_read | 读锁执行 |
| 021 | CCY_16_05_03_021_RUNTIME_rwlock_write | 写锁执行 |
| 022 | CCY_16_05_03_022_RUNTIME_rwlock_read_then_write | 先读后写 |
