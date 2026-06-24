# 3.21.1 Awaited Utility Type - Java & Swift 实测报告

## Java 实测

**文件：** `JavaAwaitedNA.java`

**输出：**
```text
PASS Java has no compile-time Awaited N/A
PASS Java CompletableFuture is runtime only N/A
PASS Java CompletableFuture requires .get() at runtime N/A
SUMMARY pass=3 fail=0
```

**结论：** Java 无 compile-time Awaited，仅运行时 `CompletableFuture`。

## Swift 实测

**文件：** `SwiftAwaitedNA.swift`

**输出：**
```text
PASS Swift has no compile-time Awaited N/A
PASS Swift await is runtime only N/A
SUMMARY pass=2 fail=0
```

**结论：** Swift 无 compile-time Awaited，仅运行时 `async/await`。

## 三语言对比

| 特性 | ArkTS | Java | Swift |
|------|-------|------|-------|
| 编译期 Promise 类型展开 | ✅ Awaited\<T\> | ❌ N/A | ❌ N/A |
| 运行时 Promise 处理 | await / .then() | CompletableFuture | async/await |