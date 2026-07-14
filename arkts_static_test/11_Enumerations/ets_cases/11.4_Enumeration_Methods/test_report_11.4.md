# 11.4 Enumeration Methods - 测试执行报告

| 分类 | 总数 | 通过 |
|------|------|------|
| compile-pass | 2 | 2 |
| compile-fail | 2 | 2 |
| runtime | 7 | 7 |
| **总计** | **11** | **11** |

## 覆盖

| 方法/规则 | 用例 |
|------|------|
| values/getValueOf/fromValue 类型检查 | 008 ✅ |
| toString/valueOf/getName 类型检查 | 009 ✅ |
| getValueOf 非 string 参数失败 | 010 ✅ |
| fromValue 参数基类型不匹配失败 | 011 ✅ |
| values() | 001 ✅ |
| fromValue 不存在 | 002 ✅ |
| toString/valueOf/getName | 003 ✅ |
| 索引 Color[c] | 004 ✅ |
| 同值后成员优先 | 005 ✅ |
| getValueOf 不存在 | 006 ✅ |
| string 枚举方法 | 007 ✅ |

跨语言: Java ✅ pass=7, Swift ✅ pass=3
