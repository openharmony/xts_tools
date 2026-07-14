# 11 Enumerations 示例代码

本章收录 ArkTS §11 枚举特性的最小可编译示例。

---

## §11 基本枚举声明

```typescript
enum Color { Red, Green, Blue }
let c: Color = Color.Red
```

## 成员初始化时可省略类型名限定

```typescript
enum Color { Red, Green, Blue, Default = Red }  // 无需写 Color.Red
```

## const enum 暂时不支持

```typescript
const enum E { A, B }  // compile-time error
```

## §11.1 基类型推断

```typescript
enum E1 { A, B }          // 推断为 int
enum E2 { A = 1, B = 2 } // 推断为 int
enum E3 { A = "a", B = "b" } // 推断为 string
enum E4 { A, B = "hello" }   // compile-time error: 混合类型
```

## §11.2 显式基类型

```typescript
enum DoubleEnum: double { A = 0.0, B = 1, C = 3.14159 }
enum ByteEnum: byte { A = 0, B = 1, C = 3 }
enum Wrong: double { A, B }    // compile-time error: 非整数基类型必须显式初始化
enum Bad: Object { A = 1 }     // compile-time error: 非 numeric/string 基类型
```

## §11.3 成员初始化

```typescript
enum E1 { A, B, C }           // A=0, B=1, C=2
enum E2 { Red, Blue = 5, Green } // Red=0, Blue=5, Green=6

function foo(): int { return 1 }
enum Wrong {
  A,
  B = foo(),
  C                         // compile-time error: 非常量后必须显式初始化
}
```

## §11.4 枚举方法

```typescript
enum Color { Red, Green, Blue = 5 }

let colors = Color.values()                // [Red, Green, Blue]
let red = Color.getValueOf("Red")          // Color.Red
let b = Color.fromValue(5)                 // Color.Blue

let c: Color = Color.Green
console.log(c.toString())                  // "10" (Green=10 时)
console.log(c.valueOf())                   // 10
console.log(c.getName())                   // "Green"

let name = Color[Color.Green]              // "Green" (通过值索引名)
```
