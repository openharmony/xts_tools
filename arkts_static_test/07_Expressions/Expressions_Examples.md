# 07 Expressions 示例代码

本章收录 ArkTS §07 表达式特性（覆盖 §7.26–§7.36.1）的最小可编译示例，用于快速理解规则的语法和预期诊断。所有示例均经 `es2panda --extension=ets`（Linux native，2026-06-26）编译验证。

---

## §7.26 Shift Expressions

```typescript
// 整数移位：结果类型随左操作数提升
let a: int = 16
let s: int = 2
let r1: int = a << s      // 64
let r2: int = a >> s      // 4
let r3: int = a >>> s     // 4（无符号右移）
// bigint 移位：两操作数须同为 bigint
let b: bigint = 1n
let r4: bigint = b << 3n  // 8n
// ⚠️ spec §7.26：float/double 操作数应先截断为 int/long（es2panda 当前未实现，报 ESE0318）
// let f: float = 16.7; let bad = f << s   // 期望编译通过，实际报错（D 类差异，见 issue_report 7.26-001）
```

---

## §7.27 Relational Expressions

```typescript
// 数值关系：<, <=, >, >=
let x: int = 3; let y: int = 5
let b1: boolean = x < y    // true
// bigint 关系
let bg: bigint = 100n
let b2: boolean = bg > 50n // true
// 字符串关系：按字典序
let b3: boolean = "apple" < "banana" // true
// 枚举关系：两操作数须为同一枚举类型，否则 compile-time error（spec §7.27.6）
enum Color { Red, Green, Blue }
let c1: Color = Color.Red; let c2: Color = Color.Green
let b4: boolean = c1 < c2  // true（按底层数值）
```

---

## §7.28 Equality Expressions

```typescript
// 数值相等（==, !=, ===, !==）
let b1: boolean = 3 == 3     // true
let b2: boolean = 3 !== 4    // true
// char 与 numeric 相等
let ch: char = c'A'; let b3: boolean = ch == 65   // true
// 扩展相等（null / undefined）
let b4: boolean = null == undefined  // false（== 与 === 仅在此处不同）
// ⚠️ 类型不匹配组合（如 int == bigint、Object == int）spec 要求报错，es2panda 当前编译通过（D 类，见 issue_report 7.28-* / 7.28.1-*）
```

---

## §7.29 Bitwise and Logical Expressions

```typescript
// 整数按位：&, |, ^, ~
let n: int = 6; let m: int = 3
let r1: int = n & m   // 2
let r2: int = n | m   // 7
let r3: int = ~n      // -7
// bigint 按位：两操作数须同为 bigint
let r4: bigint = 1n ^ 3n  // 2n
// 布尔逻辑：&&, ||
let b1: boolean = true && false  // false
let b2: boolean = true || false  // true
```

---

## §7.30 / §7.31 Conditional And / Or Expression

```typescript
// && 与 || 短路求值，结果为 boolean
let a: boolean = true; let b: boolean = false
let r1: boolean = a && b   // false
let r2: boolean = a || b   // true
// 短路：右侧仅在需要时求值
function sideEffect(): boolean { console.log("called"); return true }
let r3: boolean = false && sideEffect()  // sideEffect 不被调用
```

---

## §7.32 Assignment

```typescript
// 简洁赋值
let x: int = 10
x = 20
// 复合赋值：+=, -=, *=, /=, %=, <<=, >>=, >>>=, &=, |=, ^=, **=
let y: int = 5
y += 3        // 8
y <<= 1       // 16
// ⚠️ readonly 数组/tuple 不能被赋值为非 readonly 数组/tuple（spec §7.32.1）；es2panda 当前放过（D 类，见 issue_report 7.32.1-001/002）
```

---

## §7.33 Ternary Conditional Expressions

```typescript
// 条件 ? 真分支 : 假分支；右结合
let x: int = 5
let s: string = x > 0 ? "positive" : "non-positive"
// 嵌套三元（右结合）
let sign: int = x > 0 ? 1 : (x < 0 ? -1 : 0)
```

---

## §7.34 String Interpolation Expressions

```typescript
let name: string = "ArkTS"
let version: int = 1
// 模板字符串插值
let msg: string = `${name} v${version}`     // "ArkTS v1"
// 表达式插值
let a: int = 3; let b: int = 4
let sum: string = `sum = ${a + b}`          // "sum = 7"
```

---

## §7.35 Lambda Expressions

```typescript
// 类型推断的 lambda
let add = (a: int, b: int): int => a + b
let r1: int = add(2, 3)                       // 5
// 捕获外部变量（引用捕获，非拷贝）
let factor: int = 10
let scale = (x: int): int => x * factor
let r2: int = scale(5)                        // 50
// 显式函数类型
type BinOp = (a: int, b: int) => int
let mul: BinOp = (a, b) => a * b
// ⚠️ 捕获未初始化的局部变量 spec 要求报错（§7.35.2）；es2panda 当前编译通过（D 类，见 issue_report 7.35.2-001）
```

---

## §7.36 / §7.36.1 Constant Expressions

```typescript
// 编译期常量表达式（字面量 + 常量折叠）
const BASE: int = 10
let r1: int = BASE * 2 + 1          // 21（编译期折叠）
// 类型提升在常量表达式中同样适用
let r2: double = 2.0 ** 10.0        // 1024.0
// 常量表达式可用于常量初始化器、case 标签、数组长度等场景
const MASK: int = 0xFF << 2         // 1020
```

---

> 以上示例仅覆盖 §7.26–§7.36.1 范围（本轮自审范围）。完整用例见 `test_case_catalog.md`（2110 例，96 节）。标注 ⚠️ 处为 spec 与 es2panda 实现已知差异，详见 `issue_report.md`。
