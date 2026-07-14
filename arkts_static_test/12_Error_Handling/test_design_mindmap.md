# 12 Error Handling Test Design Mindmap

## 覆盖汇总

- 总用例数：18（7P + 4F + 7R）
- 覆盖章节：12.1 Errors

## 测试分类策略

### compile-pass（正向编译）
- throw Error 实例
- 自定义 Error 子类
- try-catch 捕获结构
- try-catch-finally 三段式
- try-finally（无 catch）
- RangeError 作为 Error 子类处理
- handleAll(actions, handlingActions) 回调处理模式

### compile-fail（反向编译）
- throw number / string 非 Error 类型
- throw null / undefined
- throw 普通对象非 Error 子类
- try 无 catch 且无 finally

### runtime（运行时行为）
- RangeError 越界捕获并返回 undefined
- catch 参数作为 Error 使用
- UnknownError 包装未知 Error
- handleAll 捕获 action 抛出的 Error 并执行 handling action
- finally 块无论异常与否始终执行
- catch 中重新抛出被外层捕获
- 嵌套 try-catch 各自处理互不干扰
