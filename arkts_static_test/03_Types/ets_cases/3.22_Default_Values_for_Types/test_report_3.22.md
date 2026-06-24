# 3.22 Default Values for Types - 测试执行报告

| 分类 | 总数 | 通过 |
|------|------|------|
| compile-pass | 2 | 2 |
| compile-fail | 3 | 3 |
| runtime | 5 | 5 |
| **总计** | **10** | **10** |

## 覆盖点

- value types 默认值：number/byte/short/int/long/float/double/boolean/char
- Any / void / undefined 默认值为 undefined
- class 字段 `T|undefined` / optional 字段默认 undefined
- reference type 无默认值，赋值后使用合法，未初始化使用失败
- enum type 无默认值，未初始化使用失败
- type parameter 无默认值，未初始化使用失败
