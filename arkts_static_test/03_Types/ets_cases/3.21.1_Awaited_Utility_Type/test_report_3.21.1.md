# 3.21.1 Awaited Utility Type - 测试执行报告

| 分类 | 总数 | 通过 | 失败 |
|------|------|------|------|
| compile-pass | 8 | 8 | 0 |
| compile-fail | 2 | 2 | 0 |
| runtime | 2 | 2 | 0 |
| **总计** | **12** | **12** | **0** |

## 覆盖点

- Awaited<Promise<string>> → string
- Awaited<Promise<Promise<number>>> → number
- Awaited<Promise<Promise<number>|Promise<string>>> → union
- Awaited<boolean|Promise<number>> → boolean|number
- Awaited<Object> → Object
- Awaited<Promise<(p: Promise<string>)=>Promise<number>>> 遇到函数类型停止递归
- Awaited<Promise<Array<Promise<number>>>> 遇到数组类型停止递归
- Awaited<T> 协变
- 反向：Awaited 结果类型不接受未 unwrap 的 Promise / 错误数组元素类型
