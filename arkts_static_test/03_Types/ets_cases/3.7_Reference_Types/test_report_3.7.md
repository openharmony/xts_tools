# 3.7 Reference Types - 测试执行报告

| 分类 | 总数 | 通过 |
|------|------|------|
| compile-pass | 8 | 8 |
| compile-fail | 2 | 2 |
| runtime | 3 | 3 |
| **总计** | **13** | **13** |

## 覆盖点

- class/interface/array/tuple/function/union/literal/Any/string/bigint/never/null/void/type parameter 引用类型声明
- 多引用共享对象状态运行时验证
- 值类型 vs 引用类型运行时语义对比
- 反向：class/interface 引用不能赋值给值类型变量
