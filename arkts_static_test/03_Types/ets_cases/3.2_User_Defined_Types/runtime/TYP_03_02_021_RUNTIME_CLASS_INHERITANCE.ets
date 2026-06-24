/**
 * @id TYP_03_02_021_RUNTIME_CLASS_INHERITANCE
 * @expect runtime
 * @section 3.2
 * @design 类类型继承运行时行为: 子类调用继承的方法、super 调用父类构造、多态方法分发
 * @note 运行时用例：实际执行验证类继承多态行为
 */
class Animal {
  name: string
  constructor(name: string) {
    this.name = name
  }
  speak(): string {
    return "..."
  }
}

class Dog extends Animal {
  constructor(name: string) {
    super(name)
  }
  speak(): string {
    return "woof"
  }
}

function main(): void {
  let a: Animal = new Dog("Buddy")
  let sound: string = a.speak()
  if (sound != "woof") {
    throw new Error("polymorphism failed: " + sound)
  }
  if (a.name != "Buddy") {
    throw new Error("super constructor failed")
  }

  let base: Animal = new Animal("X")
  if (base.speak() != "...") {
    throw new Error("base method failed")
  }

  console.log("Class inheritance verified")
}