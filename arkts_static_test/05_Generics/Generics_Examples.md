# 05 泛型示例

ArkTS 泛型（Generics）的参考示例，覆盖 05_Generics 章节中的所有泛型语法。

---

## 基本泛型类声明

```ets
// 声明一个泛型类
class MyBox<T> {
    value: T;
    constructor(v: T) { this.value = v; }
}

// 使用泛型类
let box: MyBox<number> = new MyBox<number>(42);
let strBox: MyBox<string> = new MyBox<string>("hello");
```

## 泛型接口声明

```ets
// 声明一个泛型接口
interface Container<T> {
    get(): T;
    set(v: T): void;
}

// 实现泛型接口
class StringContainer implements Container<string> {
    private data: string = "";
    get(): string { return this.data; }
    set(v: string): void { this.data = v; }
}
```

## 泛型函数声明

```ets
// 声明一个泛型函数
function identity<T>(arg: T): T {
    return arg;
}

// 调用泛型函数
let num: number = identity<number>(42);
let str: string = identity<string>("hello");
```

## 泛型类型别名

```ets
// 声明一个泛型类型别名
type Wrapper<T> = T;

// 使用泛型类型别名
let x: Wrapper<number> = 42;
```

## 多个类型参数

```ets
// 声明带多个类型参数的泛型类
class Pair<K, V> {
    key: K;
    value: V;
    constructor(k: K, v: V) {
        this.key = k;
        this.value = v;
    }
}

// 使用
let p: Pair<string, number> = new Pair("age", 30);
```

## 类型参数约束（`extends`）

```ets
// 类约束
class Base {}
class Derived extends Base {}

class G<T extends Base> {}
let x: G<Base> = new G<Base>();
let y: G<Derived> = new G<Derived>();
// let z: G<number> = new G<number>();  // 编译错误：number 不满足约束 Base

// 联合类型约束
class SomeType {}
class H<T extends Base | SomeType> {}
let h1: H<Base> = new H<Base>();
let h3: H<SomeType> = new H<SomeType>();

// 字面量类型约束
class Exotic<T extends "aa" | "bb"> {}
let e1: Exotic<"aa"> = new Exotic<"aa">();
// let e2: Exotic<"cc"> = new Exotic<"cc">();  // 编译错误

// keyof 约束
class A {
    f1: number = 0;
    f2: string = "";
}
class B<T extends keyof A> {}
let b1: B<"f1"> = new B<"f1">();
// let b2: B<"f0"> = new B<"f0">();  // 编译错误："f0" 不满足约束 keyof A
```

## 依赖的类型参数

```ets
// 后声明的类型参数可以依赖先声明的类型参数
class G<T, S extends T> {}

class Base {}
class Derived extends Base {}

let x: G<Base, Derived> = new G<Base, Derived>();  // OK
// let y: G<Base, SomeType> = new G<Base, SomeType>();  // 编译错误：SomeType 不依赖 Base
```

## 类型参数默认值

```ets
// 类类型参数默认值
interface Interface<T1 = string> {}
class Base<T2 = number> {}
class Derived1 extends Base implements Interface {}  // 等价于 Derived2
class Derived2 extends Base<number> implements Interface<string> {}

// 函数类型参数默认值
function foo<T = number>(input: T): T { return input; }
foo(1);           // 等价于 foo<number>(1)
foo<number>(1);   // 显式指定

// 多个类型参数默认值（无默认值的参数不能在有默认值的参数之后）
class C2<T1, T2 = number, T3 = string> {}
let c1: C2<number> = new C2<number>();                   // C2<number, number, string>
let c2: C2<number, string> = new C2<number, string>();   // C2<number, string, string>
let c3: C2<number, Object, number> = new C2<number, Object, number>();  // 全部指定
```

## 类型参数方差（`in` / `out`）

```ets
// out：协变，只能用在输出位置（返回值、readonly 字段）
class X<out T> {
    private readonly value: T;
    constructor(v: T) { this.value = v; }
    get(): T { return this.value; }  // OK：T 在返回值位置
    // set(v: T): void {}  // 编译错误：T 在参数位置（in 位置）
}

// in：逆变，只能用在输入位置（参数）
class Y<in T> {
    private value!: T;
    foo(p: T): void {}  // OK：T 在参数位置
    // bar(): T { return this.value; }  // 编译错误：T 在返回值位置（out 位置）
}

// 无修饰符：不变，可以用在任何位置
class Z<T> {
    value: T;
    foo(p: T): T { this.value = p; return p; }  // OK
}

// 混合使用
class Mixed<in T1, out T2, T3> {
    foo(p: T1): T2 { /* ... */ }  // OK：T1 在 in 位置，T2 在 out 位置
}
```

## 函数类型中的方差交错

```ets
class X<in T1, out T2> {
    // 参数位置出现函数类型时，方差交错
    foo(p: (p: T2) => T1): void {}  // OK：T2 在函数参数位置（in），T1 在返回值位置（out）
}
```

## 通配符类型（`instanceof` 推断）

```ets
class X<T> {
    p: T;
    constructor(v: T) { this.p = v; }
}

function main(): void {
    let obj: object = new X<string>("hello");
    if (obj instanceof X) {
        // instanceof 后，类型参数被推断为通配符 *
        // obj 的类型是 X<*>
        let value = obj.p;  // 类型为约束类型（无约束时为 Any）
    }
}
```

## 类型实参

```ets
class G<T> {}

// 有效的类型实参
let a: G<number> = new G<number>();
let b: G<string | number> = new G<string | number>();
let c: G<number[]> = new G<number[]>();
let d: G<[string, number]> = new G<[string, number]>();
let e: G<(x: number) => string> = new G<(x: number) => string>();
```

## 显式泛型实例化

```ets
// 类的显式实例化
class G<T> {}
let x: G<number> = new G<number>();

// 方法的显式实例化
class Box<T> {
    getValue(): T { /* ... */ return {} as T; }
}
let box: Box<string> = new Box<string>();

// 函数的显式实例化
function identity<T>(arg: T): T { return arg; }
let num: number = identity<number>(42);

// 类型别名的显式实例化
type Wrapper<T> = T;
let val: Wrapper<number> = 42;
```

## 隐式泛型实例化（类型推断）

```ets
// 从参数类型推断类型参数
function foo<T>(x: T, y: T): void {}
foo(new Object(), new Object());  // T 被推断为 Object

// 多个类型参数的推断
function pair<K, V>(k: K, v: V): [K, V] { return [k, v]; }
let p = pair("key", 42);  // K 推断为 string，V 推断为 number

// 类方法中的隐式推断
class Container<T> {
    value: T;
    constructor(v: T) { this.value = v; }
}
let c = new Container(42);  // T 推断为 number
```

## 编译错误示例

```ets
// 错误 1：类型参数循环依赖
// class C<T extends T> {}  // 编译错误
// class D<T extends R, R extends T> {}  // 编译错误

// 错误 2：默认值在无默认值的参数之后
// class C1<T1, T2 = number, T3> {}  // 编译错误：T3 无默认值但在 T2 之后

// 错误 3：默认值引用后方定义的类型参数
// function foo<T1 = T2, T2 = number>() {}  // 编译错误：T1 的默认引用 T2

// 错误 4：out 类型参数用在 in 位置
// class X<out T> {
//     foo(p: T): void {}  // 编译错误：T 在参数位置
// }

// 错误 5：in 类型参数用在 out 位置
// class Y<in T> {
//     get(): T { /* ... */ }  // 编译错误：T 在返回值位置
// }

// 错误 6：非泛型类型使用类型实参
// class Foo {}
// let x: Foo<number> = new Foo<number>();  // 编译错误

// 错误 7：类型实参数量不匹配
// class G<T, U> {}
// let x: G<number> = new G<number>();  // 编译错误：需要 2 个类型实参

// 错误 8：约束不满足
// class Base {}
// class G<T extends Base> {}
// let x: G<number> = new G<number>();  // 编译错误：number 不满足约束 Base
```
