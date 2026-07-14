# 12.1 Errors - 测试执行报告

| 分类 | 总数 | 通过 |
|------|------|------|
| compile-pass | 5 | 5 |
| compile-fail | 3 | 3 |
| runtime | 4 | 4 |
| **总计** | **12** | **12** |

## 覆盖

| 场景 | 用例 |
|---|---|
| throw Error / 自定义 Error / try-catch | 001-003 ✅ |
| RangeError 作为 Error 子类 | 007 ✅ |
| handleAll 回调处理模式 | 008 ✅ |
| throw 非 Error/null/undefined/普通对象失败 | 006, 009, 010 ✅ |
| RangeError 捕获返回 undefined | 004 ✅ |
| catch 参数类型 Error | 005 ✅ |
| UnknownError 包装未知 Error | 011 ✅ |
| handleAll 运行时处理动作执行 | 012 ✅ |

跨语言: Java ✅ pass=3, Swift ✅ pass=2
