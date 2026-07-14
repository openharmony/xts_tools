# 12 Error Handling 示例代码

本章收录 ArkTS §12 错误处理特性的最小可编译示例，用于快速理解规则的语法和预期诊断。

---

## §12.1 Errors

### throw Error 实例

```typescript
function testThrow(): void {
  throw new Error("something went wrong")
}
```

### try-catch 捕获

```typescript
function testTryCatch(): void {
  try {
    throw new Error("err")
  } catch (x) {
    console.log(x.message)
  }
}
```

### try-catch-finally

```typescript
function testTryCatchFinally(): void {
  try {
    throw new Error("err")
  } catch (x) {
    console.log(x.message)
  } finally {
    console.log("cleanup")
  }
}
```

### try-finally（无 catch）

```typescript
function testTryFinally(): void {
  try {
    console.log("work")
  } finally {
    console.log("cleanup")
  }
}
```

### throw 非 Error 类型（编译错误）

```typescript
function testBadThrow(): void {
  throw 42        // compile-time error
  throw "error"   // compile-time error
  throw null      // compile-time error
}
```

### try 无 catch 且无 finally（编译错误）

```typescript
function testBadTry(): void {
  try {           // compile-time error: missing catch or finally
    let x: int = 1
  }
}
```
