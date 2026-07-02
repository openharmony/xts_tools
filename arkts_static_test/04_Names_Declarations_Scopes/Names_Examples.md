# 04 名称、声明与作用域示例

ArkTS 名称、声明与作用域（Names, Declarations and Scopes）的参考示例，覆盖 04_Names_Declarations_Scopes 章节中的所有语法。

---

## 简单名称

```ets
// 声明一个变量并使用简单名称引用
let simpleName: number = 42;
let result: number = simpleName;
```

## 限定名称

```ets
// 使用限定名称访问类静态成员
class MathUtils {
    static PI: number = 3.14159;
    static abs(x: number): number { return x >= 0 ? x : -x; }
}
let pi: number = MathUtils.PI;
let absValue: number = MathUtils.abs(-5);

// 使用限定名称访问实例成员
class Person {
    name: string;
    constructor(name: string) { this.name = name; }
}
let p: Person = new Person("Alice");
let name: string = p.name;
```

## 不同名称声明可共存

```ets
// 不同名称的声明可以在同一作用域共存
const PI: number = 3.14;
const pi: number = 3;
function Pi(): void {}
type IP = number[];

class A {
    static method(): void {}
    method(): void {}
    field: number = PI;
    static field: number = PI + pi;
}
```

## 函数重载（通过签名区分）

```ets
// 同名函数通过不同签名区分
function foo(): void {}
function foo(x: number): void {}
function foo(x: number[]): void {}
function foo(x: string): void {}

// 类方法重载
class Calculator {
    add(a: number, b: number): number { return a + b; }
    add(a: string, b: string): string { return a + b; }
}
```

## 模块级作用域

```ets
// 模块级变量在函数内可访问
let moduleVar: number = 10;
function readModuleVar(): number {
    return moduleVar;
}

// 模块级函数可在模块内任何地方调用
function helper(): void {}
function main(): void {
    helper();
}
```

## 类级作用域

```ets
class Example {
    // 实例成员
    instanceField: number = 0;
    instanceMethod(): void {
        // 使用 this 访问实例成员
        this.instanceField = 1;
    }
    
    // 静态成员
    static staticField: number = 0;
    static staticMethod(): void {
        // 使用类名访问静态成员
        Example.staticField = 1;
    }
}
```

## 块作用域

```ets
function testBlock(): void {
    let x: number = 1;
    if (true) {
        let y: number = x + 1;  // 可以访问外部变量
        let x: number = 2;      // 遮蔽外部的 x
        console.log(x);         // 输出 2
    }
    console.log(x);             // 输出 1
}
```

## 变量声明

```ets
// 带类型注解的变量声明
let a: number = 1;

// 类型推断的变量声明
let b = 1;  // 类型推断为 number

// 多个变量声明
let c: number = 6, d = 1, e = "hello";

// Lambda 类型推断
let f = (p: number) => b + p;
```

## 常量声明

```ets
// 带类型注解的常量声明
const a_num: number = 1;

// 类型推断的常量声明
const b_num = 1;  // 类型推断为 number

// 多个常量声明
const c: number = 1, d = 2, e = "hello";
```

## 函数声明

```ets
// 基本函数声明
function add(a: number, b: number): number {
    return a + b;
}

// 函数类型推断
let multiply = (a: number, b: number): number => a * b;

// 可选参数
function greet(name: string, greeting?: string): string {
    return greeting ? greeting + " " + name : "Hello " + name;
}

// 剩余参数
function sum(...numbers: number[]): number {
    let total: number = 0;
    for (let n of numbers) {
        total += n;
    }
    return total;
}
```

## 类型别名声明

```ets
// 数组类型别名
type Matrix = number[][];
let m: Matrix = [[1, 2], [3, 4]];

// 函数类型别名
type Handler = (s: string, no: number) => string;

// 泛型类型别名
type Predicate<T> = (x: T) => boolean;

// 联合类型别名
type NullishNumber = number | undefined;

// 递归类型别名
type A = A[];  // OK：用作数组元素类型
type D = string | Array<D>;  // OK
```

## 可访问性

```ets
// 模块级实体可在整个模块访问
let moduleLevel: number = 10;
function moduleFunction(): void {}

// 块级实体只能在块内访问
function test(): void {
    if (true) {
        let blockVar: number = 1;
        console.log(blockVar);  // OK
    }
    // console.log(blockVar);  // 编译错误：blockVar 不在作用域内
}
```

## 编译错误示例

```ets
// 错误 1：声明不可区分（相同名称）
// const PI = 3.14;
// function PI() { return 3.14; }  // 编译错误：常量和函数同名

// 错误 2：类与变量同名
// class Person {}
// let Person: Person;  // 编译错误

// 错误 3：字段与方法同名
// class C {
//     counter: number;
//     counter(): number { return this.counter; }  // 编译错误
// }

// 错误 4：与预定义类型同名
// let number: number = 1;  // 编译错误
// let String = true;       // 编译错误

// 错误 5：变量声明无类型无初始化
// let x;  // 编译错误：必须指定类型或初始化

// 错误 6：常量声明无初始化
// const x;  // 编译错误：常量必须初始化

// 错误 7：在声明前访问变量
// function foo() {
//     let x = y;  // 编译错误：y 还未声明
//     let y = 1;
// }

// 错误 8：块外访问块内变量
// if (true) {
//     let blockVar = 1;
// }
// console.log(blockVar);  // 编译错误

// 错误 9：类型别名直接自引用
// type E = E;  // 编译错误
// type F = string | F;  // 编译错误

// 错误 10：函数重载等价签名
// function foo(x: number): void {}
// function foo(y: number): void {}  // 编译错误：签名等价
```
