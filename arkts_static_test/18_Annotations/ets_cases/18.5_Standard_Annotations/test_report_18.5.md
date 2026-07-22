# 18.5 Standard Annotations - 测试执行报告

## 总体统计

| 分类 | 总数 | 通过 | 失败 | 通过率 |
|------|------|------|------|--------|
| compile-pass | 3 | 3 | 0 | 100% |
| compile-fail | 3 | 3 | 0 | 100% |
| runtime | 1 | 1 | 0 | 100% |
| **总计** | **7** | **7** | **0** | **100%** |

## 详细执行结果

### compile-pass
| # | ID | 测试内容 | 结果 |
|---|----|---------|------|
| 1 | 001 | `@Retention("SOURCE")` on @interface | ✅ |
| 2 | 002 | `@Target({targets: [AnnotationTargets.CLASS]})` on @interface | ✅ |
| 3 | 003 | `@Retention` + `@Target` 同时使用 | ✅ |

### compile-fail
| # | ID | 测试内容 | 错误码 | 结果 |
|---|----|---------|--------|------|
| 1 | 004 | @Retention 在 class 上 | ESE1122645 | ✅ |
| 2 | 005 | @Target 在 class 上 | ESE1122645 | ✅ |
| 3 | 006 | @Retention 无效策略 | ESE0004 | ✅ |

### runtime
| # | ID | 验证内容 | 结果 |
|---|----|---------|------|
| 1 | 007 | 标准注解运行时编译执行 | ✅ |
