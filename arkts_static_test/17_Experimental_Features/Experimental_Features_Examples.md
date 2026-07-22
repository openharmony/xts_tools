# 17 Experimental Features 示例代码

本章收录 ArkTS §17 实验特性的最小可编译示例，用于快速理解规则的语法和预期诊断。

---

## §17.1 Type `char`

```typescript
// 16位 Unicode 编码单元，Object 子类型
let a: char = c'A'
let b: char = c'\n'
let c: char = c'\x41'       // 十六进制转义 → 'A'
let d: char = c'\u{FFFF}'   // 最大合法值
let o: Object = a            // char → Object 自动向上转型
```

---

## §17.1.1 `char` Literals

```typescript
let a: char = c'a'       // 合法
let b: char = c'\x7F'    // 合法
// let x: char = c''     // 错误：空字面量
// let y: char = c'ab'   // 错误：多字符
// let z: char = c'\u{FFFFF}'  // 错误：超出 BMP 范围
```

---

## §17.1.2 `char` Operations

```typescript
let a: char = c'A'
let b: char = c'B'
let eq: boolean = a == b        // false
let lt: boolean = a < b         // true（无符号 16 位比较）
let diff: int = a - c'A'        // 0，char 参与数值运算
```

---

## §17.2 Fixed-Size Array Types

```typescript
let arr: FixedArray<int> = [1, 2, 3]
let x: int = arr[0]        // 索引读
arr[1] = 10                // 索引写
let len: int = arr.length  // length 属性只读
// arr.length = 5          // 错误：length 不可变
// arr.push(4)             // 错误：FixedArray 无方法
// let b: int[] = arr      // 错误：与 Array 不兼容
```

---

## §17.2.1 Fixed-Size Array Creation

```typescript
// 字面量创建
let a: FixedArray<int> = [1, 2, 3]
// constructor 创建
let b: FixedArray<string> = FixedArray<string>(3, "hello")
```

---

## §17.3 Value Array Types

```typescript
// T 必须是值类型
let vals: ValueArray<int> = [1, 2, 3]
// let strs: ValueArray<string>  // 错误：string 不是值类型
```

---

## §17.4 Resizable Array Creation

```typescript
// new T[n](elem) 语法
let arr: int[] = new int[5](-1)     // 5 个 -1
let strs: string[] = new string[3]("")
```

---

## §17.5 Indexable Types

```typescript
class IntMap {
  private data: int[] = [0, 0, 0]
  $_get(idx: int): int { return this.data[idx] }
  $_set(idx: int, val: int): void { this.data[idx] = val }
}
function main(): void {
  let m: IntMap = new IntMap()
  m[1] = 42          // 调用 $_set
  let v: int = m[1]  // 调用 $_get
}
```

---

## §17.6 Iterable Types

```typescript
class MyIter {
  private data: int[] = [1, 2, 3]
  $_iterator(): Iterator<int> {
    return this.data.values()
  }
}
function main(): void {
  let it: MyIter = new MyIter()
  for (let x of it) { /* 1, 2, 3 */ }
}
```

---

## §17.7 Callable Types

```typescript
class Factory {
  static $_invoke(): string { return "created" }
}
function main(): void {
  let s: string = Factory()  // 类实例可调用
}
```

---

## §17.8.1 For-of Explicit Type Annotation

```typescript
let arr: int[] = [1, 2, 3]
for (let x: int of arr) { /* int 类型显式标注 */ }
```

---

## §17.9 Explicit Overload Declarations

```typescript
function fi(a: int): string { return "int" }
function fs(a: string): string { return "str" }
overload f { fi, fs }

function main(): void {
  let r1: string = f(42)      // → "int"（按声明顺序匹配）
  let r2: string = f("hi")    // → "str"
}
```

---

## §17.10 Native Functions / Methods

```typescript
// 声明无 body，由平台提供实现
native function getValue(): int

class NativeDemo {
  native nativeMethod(x: int): void
}
```

---

## §17.11 Classes Experimental

```typescript
final class FinalClass {}          // final 类不可继承
// class Sub extends FinalClass {} // 错误

class Base {
  final method(): void {}          // final 方法不可覆盖
}

class NamedCtor {
  constructor Celsius(v: int) {}
  constructor Fahrenheit(v: int) {}
  // new NamedCtor(0)       // 错误：全命名时禁止匿名调用
  // new NamedCtor.Celsius(0)  // spec 要求，编译器暂不支持
}
```

---

## §17.12 Default Interface Method Declarations

```typescript
interface Logger {
  log(msg: string): void
  defaultLog(): void { this.log("default") }  // 接口默认实现
}
class ConsoleLogger implements Logger {
  log(msg: string): void { console.log(msg) }
}
```

---

## §17.13 Functions with Receiver

```typescript
// 顶层函数以 this: Type 为第一参数
function greet(this: StringBuilder): void {
  this.append("Hello")
}
// 两种调用语法：
let sb: StringBuilder = new StringBuilder()
greet(sb)         // 普通调用
// sb.greet()     // 方法调用语法（仅顶层函数支持）
```

---

## §17.14 Trailing Lambdas

```typescript
function execute(cb: () => void): void {
  cb()
}
function main(): void {
  execute() { console.log("trailing!") }  // 尾随 lambda
}
```

---

## §17.15 Accessor Declarations

```typescript
// 顶层 getter/setter
private _value: int = 0

get value(): int {
  return this._value
}
set value(v: int): void {
  this._value = v
}
```

---

## §17.16 Pattern Matching / Destructuring

```typescript
let arr: int[] = [1, 2, 3, 4]
let [a, b, ...rest] = arr   // a=1, b=2, rest=[3,4]

let pair: [int, string] = [42, "hello"]
let [num, str] = pair       // 元组解构

// 注意：嵌套解构 let [[a,b],[c,d]] = arr 当前编译器存在已知崩溃问题
```

---

## 关联文档

- 完整规范：[spec_original.md](spec_original.md)
- 测试设计：[test_design_mindmap.md](test_design_mindmap.md)
- 测试用例目录：[test_case_catalog.md](test_case_catalog.md)
- 问题报告：[issue_report.md](issue_report.md)
