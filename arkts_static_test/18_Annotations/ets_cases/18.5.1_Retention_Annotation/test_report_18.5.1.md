# 18.5.1 Retention Annotation - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 5 | 5 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime | 1 | 1 | 0 | 100% |
| **总计** | **9** | **9** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | ID | 测试内容 | 结果 |
|---|----|---------|------|
| 1 | 001 | `@Retention("SOURCE")` 简写 | ✅ |
| 2 | 002 | `@Retention("BYTECODE")` 简写 | ✅ |
| 3 | 003 | `@Retention("RUNTIME")` 简写 | ✅ |
| 4 | 004 | `@Retention({policy: "RUNTIME"})` 完整形式 | ✅ |
| 5 | 005 | 默认策略（无 @Retention） | ✅ |

### compile-fail
| # | ID | 测试内容 | 错误码 | 结果 |
|---|----|---------|--------|------|
| 1 | 006 | @Retention 在 class 上 | ESE1122645 | ✅ |
| 2 | 007 | 无效策略 "INVALID" | ESE0004 | ✅ |
| 3 | 008 | 空策略 "" | ESE0004 | ✅ |
