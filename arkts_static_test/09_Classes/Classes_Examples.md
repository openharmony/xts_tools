# 09 Classes 示例代码

本章收录 ArkTS §09 类特性的最小可编译示例，用于快速理解规则的语法和预期诊断。

---

## §9.1 Class Declarations

```typescript
// 基本类声明
class Point {
  x: int = 0
  y: int = 0
}

// 泛型类
class Box<T> {
  value: T
  constructor(v: T) { this.value = v }
}

// 抽象类
abstract class Shape {
  abstract area(): double
}
```

---

## §9.2 Class Extension Clause

```typescript
class Animal {
  name: string = ""
}

class Dog extends Animal {
  bark(): void { console.log("woof") }
}
// class C extends C {}  // 错误：不能 extends 自身
// class X extends 42 {}  // 错误：extends 必须是类
```

---

## §9.3 Class Implementation Clause

```typescript
interface Printable {
  print(): void
}

class Document implements Printable {
  print(): void { console.log("doc") }
}
```

---

## §9.4 Class Members

```typescript
class Counter {
  // static 成员与实例成员可同名（不同命名空间）
  static count: int = 0
  count: int = 0
  // constructor、方法、字段分属不同命名空间
  constructor() { Counter.count++ }
}
```

---

## §9.5 Access Modifiers

```typescript
class AccessDemo {
  public pubField: int = 1      // 处处可见
  private privField: int = 2    // 仅当前类内可见
  protected protField: int = 3  // 当前类 + 子类可见

  private secretMethod(): void {}  // 私有方法

  // 无修饰符 → 默认 public
  implicitPublic: string = ""
}
```

---

## §9.6 Field Declarations

```typescript
class Fields {
  // static 字段
  static counter: int = 0
  // readonly 常量字段
  readonly PI: double = 3.14159
  // optional 字段
  nickname?: string
  // late init 字段
  late data: string
  // 普通实例字段
  name: string = "default"
}
```

---

## §9.7 Method Declarations

```typescript
class Calculator {
  // static 方法
  static add(a: int, b: int): int { return a + b }
  // 实例方法
  multiply(a: int, b: int): int { return a * b }
  // abstract 方法（需在 abstract 类中）
  // abstract calculate(): int   // 仅在 abstract class 中合法
  // async 方法
  async fetchData(): Promise<string> { return "ok" }
  // 返回 this 的方法（链式调用）
  setX(x: int): this {
    this.x = x
    return this
  }
}

// override 方法
class BaseCalc {
  compute(): int { return 0 }
}
class DerivedCalc extends BaseCalc {
  override compute(): int { return 42 }  // 必须标注 override
}
```

---

## §9.8 Class Accessor Declarations

```typescript
class Temperature {
  private _celsius: double = 0

  get celsius(): double { return this._celsius }
  set celsius(v: double): void {
    if (v < -273.15) return
    this._celsius = v
  }

  get fahrenheit(): double { return this._celsius * 9/5 + 32 }
}
```

---

## §9.9 Constructor Declaration

```typescript
class Person {
  name: string
  age: int

  // 主构造器
  constructor(name: string, age: int) {
    this.name = name
    this.age = age
  }
  // 默认构造器（无显式构造器时编译器自动生成）
}

class Employee extends Person {
  id: int
  constructor(name: string, age: int, id: int) {
    super(name, age)   // 必须显式调用 super
    this.id = id
  }
}
```

---

## §9.10 Inheritance

```typescript
class Vehicle {
  speed: int = 0
  accelerate(delta: int): void { this.speed += delta }
}

class Car extends Vehicle {
  brand: string = "unknown"
  override accelerate(delta: int): void {
    super.accelerate(delta)       // 可调用父类方法
    console.log("Car now at " + this.speed)
  }
}

// instanceof 检查
function check(v: Vehicle): void {
  if (v instanceof Car) {
    console.log("It's a car!")
  }
}
```

---

## 关联文档

- 完整规范：[spec_original.md](spec_original.md)
- 测试设计：[test_design_mindmap.md](test_design_mindmap.md)
- 测试用例目录：[test_case_catalog.md](test_case_catalog.md)
- 问题报告：[issue_report.md](issue_report.md)
