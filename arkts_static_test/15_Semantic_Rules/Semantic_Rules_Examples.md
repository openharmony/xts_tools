# 15 语义规则示例

ArkTS 语义规则（Semantic Rules）的参考示例，覆盖 15_Semantic_Rules 章节中的核心语义规则。

---

## 子类型关系（Subtyping）

```ets
// 类继承子类型：子类是父类的子类型
class Base {}
class Derived extends Base {}
let d: Base = new Derived();  // OK：Derived <: Base

// 接口实现子类型：实现类是接口的子类型
interface I {}
class Impl implements I {}
let i: I = new Impl();  // OK：Impl <: I

// 泛型不变性：Holder<Derived> 不是 Holder<Base> 的子类型
class Holder<T> { value: T; constructor(v: T) { this.value = v; } }
let h: Holder<Base> = new Holder<Base>(new Derived());
// let h2: Holder<Base> = new Holder<Derived>(new Derived());  // 编译错误
```

## 字面量类型子类型

```ets
// 字符串字面量是其基础类型 string 的子类型
let s: "hello" = "hello";
let str: string = s;  // OK

// int 可隐式拓宽为 number
let n: number = 42;  // OK：int → number

// 字面量不是不兼容类型的子类型
// let x: int = "hello";   // 编译错误
// let y: string = 42;     // 编译错误
// let z: number = true;   // 编译错误
```

## 元组类型子类型

```ets
// 元组类型协变
let t1: [string, number] = ["a", 1];
let t2: [string, number | string] = t1;  // OK：元素类型兼容
```

## 联合类型子类型

```ets
// 联合成员是其联合的子类型
let a: string = "hello";
let u: string | number = a;  // OK：string <: string | number

// 更小的联合是更大联合的子类型
let s: "a" | "b" = "a";
let u2: string = s;  // OK
```

## 函数类型子类型

```ets
// 函数类型：参数逆变，返回值协变
function f1(x: number | string): string { return ""; }
let f2: (x: number) => string | number = f1;
// f1 参数 number|string 可接受 number（逆变）
// f1 返回值 string 是 string|number 的子类型（协变）
```

## 可赋值性（Assignability）

```ets
// 子类型可赋值
class Base {}
class Derived extends Base {}
let d: Derived = new Derived();
let b: Base = d;  // OK：Derived <: Base

// 数值拓宽
let i: int = 42;
let n: number = i;  // OK：int → number 隐式拓宽

// undefined 可赋值给含 undefined 的联合类型
let u: string | undefined = undefined;  // OK
```

## 智能转换（Smart Casts）

```ets
// instanceof 类型收窄
function foo(x: string | number): void {
    if (x instanceof String) {
        let s: string = x;  // OK：收窄为 string
    }
}

// null 收窄
function bar(x: string | null): void {
    if (x != null) {
        let s: string = x;  // OK：收窄为 string
    }
}
```

## 类型推断（Type Inference）

```ets
// 常量表达式类型推断
let a = 42;      // 推断为 int
let b = 3.14;    // 推断为 double
let c = a + b;   // 推断为 double（数值拓宽）

// 返回类型推断
function add(x: number, y: number) {
    return x + y;  // 返回类型推断为 number
}
```

## 覆写（Overriding）

```ets
class Base {
    foo(): Base { return new Base(); }
}
class Derived extends Base {
    // 返回值协变：子类返回类型可以是父类返回类型的子类型
    foo(): Derived { return new Derived(); }  // OK
}
```

## 类型擦除（Type Erasure）

```ets
// 泛型类型参数在编译后被擦除为有效类型
class Box<T> {
    value: T;
    constructor(v: T) { this.value = v; }
}
// 运行时 Box<number> 和 Box<string> 是同一个类

// 字面量类型擦除为有效类型
type Lit = "hello" | "world";
// 运行时 Lit 被擦除为 string

// 联合类型擦除
type NumOrStr = number | string;
// 运行时 NumOrStr 被擦除为 number | string
```

## 编译错误示例

```ets
// 错误 1：不兼容的类型赋值
// let x: number = "hello";  // 编译错误

// 错误 2：不兼容的参数传递
// function foo(x: number): void {}
// foo("hello");  // 编译错误

// 错误 3：泛型不变性违反
// class Holder<T> { value: T; constructor(v: T) { this.value = v; } }
// let h: Holder<Base> = new Holder<Derived>(new Derived());  // 编译错误

// 错误 4：不存在的方法调用
// class A { foo(): void {} }
// let a: A = new A();
// a.bar();  // 编译错误：不存在 bar 方法

// 错误 5：覆写返回类型不兼容
// class Base {
//     get(): Base { return new Base(); }
// }
// class Derived extends Base {
//     get(): number { return 42; }  // 编译错误：number 不是 Base 的子类型
// }
```
