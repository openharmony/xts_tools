# 10 接口示例

ArkTS 接口（Interface）的参考示例，覆盖 10_Interfaces 章节中的所有接口语法。

---

## 基本接口声明

```ets
// 声明一个基本接口
interface Shape {
    area(): number;
    perimeter(): number;
}

// 接口不能直接实例化
// let s: Shape = new Shape();  // 编译错误
```

## 泛型接口声明

```ets
// 声明一个泛型接口
interface Container<T> {
    get(): T;
    set(v: T): void;
}

// 使用泛型接口
let box: Container<number> = {
    get(): number { return 42; },
    set(v: number): void {}
};
```

## 接口继承（`extends`）

```ets
// 单继承
interface Named {
    name: string;
}
interface Person extends Named {
    age: number;
}

// 多继承
interface X {
    x(): void;
}
interface Y {
    y(): void;
}
interface Z extends X, Y {
    z(): void;
}
```

## 接口继承链

```ets
interface A {
    common(): void;
}
interface B extends A {
    b(): void;
}
interface C extends B {
    c(): void;
}

// 类只需实现最终接口，继承链上的成员也会被继承
class Impl implements C {
    common(): void {}
    b(): void {}
    c(): void {}
}
```

## 菱形继承

```ets
interface A {
    common(): void;
}
interface B extends A {
    b(): void;
}
interface C extends A {
    c(): void;
}
interface D extends B, C {
    d(): void;
}

// 菱形继承合并相同成员，common() 只出现一次
class ImplD implements D {
    common(): void {}
    b(): void {}
    c(): void {}
    d(): void {}
}
```

## 接口成员声明

```ets
interface Example {
    // 属性成员
    prop: number;
    
    // 方法成员
    method(): void;
    
    // 带参数的方法
    methodWithArgs(x: number, y: string): boolean;
    
    // 带返回值的方法
    getValue(): number;
    
    // void 方法
    doAction(): void;
}
```

## 必需属性（Required Properties）

```ets
// 字段形式（隐式定义 getter/setter）
interface Style {
    color: string;       // 隐式定义 getter + setter
    readonly id: number;  // 隐式定义 getter  only
}

// 等价于：
interface StyleEquiv {
    get color(): string;
    set color(s: string);
    get id(): number;
}
```

## 可选属性（Optional Properties）

```ets
// 使用 ? 声明可选属性
interface Options {
    required: string;
    optional?: number;
}

// 等价于：
interface OptionsEquiv {
    required: string;
    optional: number | undefined;
}

// 可选属性的默认 setter 会抛出 InvalidStoreAccessError
// 需要在实现类中覆盖
```

## Getter / Setter 访问器

```ets
interface ReadWrite {
    get value(): number;
    set value(v: number);
}

interface ReadOnly {
    get data(): string;
}

interface WriteOnly {
    set output(s: string);
}
```

## 接口方法声明

```ets
// 抽象方法（无方法体）
interface Sayable {
    say(): string;
}

// 带参数的方法
interface Calculator {
    add(a: number, b: number): number;
    subtract(a: number, b: number): number;
}

// 返回 void 的方法
interface Action {
    execute(): void;
}
```

## 接口默认方法（实验特性）

```ets
// 接口方法可以带默认实现体（experimental）
interface Shape {
    area(): number { return 0; }
    perimeter(): number { return 0; }
}
```

## 类实现接口（`implements`）

```ets
interface Sayable {
    say(): string;
}

// 类实现单个接口
class Greeter implements Sayable {
    say(): string { return "hello"; }
}

// 类实现多个接口
interface A {
    foo(): void;
}
interface B {
    bar(): void;
}
class C implements A, B {
    foo(): void {}
    bar(): void {}
}
```

## 类继承 + 实现接口

```ets
interface Animal {
    speak(): void;
}
class LivingBeing {
    breathe(): void {}
}
class Dog extends LivingBeing implements Animal {
    speak(): void { console.log("Woof!"); }
}
```

## 接口类型变量

```ets
interface Animal {
    speak(): void;
}
class Dog implements Animal {
    speak(): void { console.log("Woof!"); }
}
class Cat implements Animal {
    speak(): void { console.log("Meow!"); }
}

// 接口类型变量可引用任何实现该接口的类实例
let pet: Animal = new Dog();
pet = new Cat();  // 允许
```

## 接口继承中的属性合并

```ets
interface I1 {
    prop1: number;
    set prop2(p: number);
    get prop3(): number;
}
interface I2 {
    prop1: number;
    set prop2(p: number);
    get prop3(): number;
}
interface I3 extends I1, I2 {}

// I3 中 prop1、prop2、prop3 各只有一个
function foo(i3: I3): void {
    i3.prop1 = 5;         // 调用 prop1 的 setter
    let x = i3.prop1;     // 调用 prop1 的 getter
    i3.prop2 = 5;         // 调用 prop2 的 setter
    // let y = i3.prop2;  // 编译错误：prop2 没有 getter
    // i3.prop3 = 5;      // 编译错误：prop3 没有 setter
    let z = i3.prop3;     // 调用 prop3 的 getter
}
```

## 编译错误示例

```ets
// 错误 1：接口不能直接实例化
interface Shape { area(): number; }
// let s: Shape = new Shape();  // 编译错误

// 错误 2：extends 非接口类型
// interface Bad extends number {}  // 编译错误

// 错误 3：接口继承循环
// interface A extends B {}
// interface B extends A {}  // 编译错误

// 错误 4：成员名重复
// interface Bad {
//     foo: number;
//     foo(): void;  // 编译错误：属性名和方法名不能相同
// }

// 错误 5：未实现接口成员
// interface Sayable { say(): string; }
// class Incomplete implements Sayable {}  // 编译错误

// 错误 6：只读属性不可赋值
interface ReadOnly {
    readonly id: number;
}
// let r: ReadOnly = { id: 1 };
// r.id = 2;  // 编译错误
```
