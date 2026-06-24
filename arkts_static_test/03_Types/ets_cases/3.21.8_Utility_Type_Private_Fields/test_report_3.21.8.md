# 3.21.8 Utility Type Private Fields - 测试执行报告

| 分类 | 总数 | 通过 |
|------|------|------|
| compile-pass | 3 | 3 |
| compile-fail | 2 | 2 |
| runtime | 2 | 2 |
| **总计** | **7** | **7** |

## 覆盖点

- 原类实例含 private 字段可赋值给 Readonly<T>
- Readonly<T> object literal 只包含 public 字段合法
- object literal 包含 private 字段名失败
- private 字段不可直接访问
- 运行时验证原对象 private state 保留
