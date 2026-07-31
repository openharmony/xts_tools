# Test Execution Report: 16.5.2 Asynchronous Mutex

## Summary
| Metric | Value |
|--------|-------|
| compile-pass | 3 |
| compile-fail | 1 |
| runtime | 4 |
| **Total** | **8** |
| Pass Rate | 100% |

## Detailed Results

### compile-pass
| # | File | Description |
|---|------|-------------|
| 001 | CCY_16_05_02_001_PASS_async_mutex_decl | AsyncMutex 声明 |
| 002 | CCY_16_05_02_002_PASS_async_mutex_lock_unlock | lock/unlock 模式 |
| 003 | CCY_16_05_02_003_PASS_async_mutex_critical | 临界区保护（S16.5.2 例） |

### compile-fail
| # | File | Description |
|---|------|-------------|
| 090 | CCY_16_05_02_090_FAIL_async_mutex_unlock_without_lock | 未加锁直接 unlock |

### runtime
| # | File | Description |
|---|------|-------------|
| 020 | CCY_16_05_02_020_RUNTIME_basic_lock_unlock | lock/unlock 正常执行 |
| 021 | CCY_16_05_02_021_RUNTIME_critical_section | 临界区保护含 await |
| 022 | CCY_16_05_02_022_RUNTIME_unlock_without_lock_error | 未加锁 unlock 抛异常 |
| 023 | CCY_16_05_02_023_RUNTIME_sequential_locks | 顺序 lock/unlock 多次 |
