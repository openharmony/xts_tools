/**
 * @id TYP_03_01_044_RUNTIME_OBJECT_INSTANCEOF
 * @expect runtime
 * @section 3.1
 * @design Object 变量在运行时通过 instanceof 区分实际类型
 * @note 运行时用例：验证 Object 装箱后 instanceof 行为
 */
class Animal {
  name: string = ""
}

class Dog extends Animal {}

function main(): void {
  let o1: Object = "hello"
  if (!(o1 instanceof string)) {
    throw new Error("o1 should be instanceof string")
  }

  let o2: Object = new Dog()
  if (!(o2 instanceof Dog)) {
    throw new Error("o2 should be instanceof Dog")
  }
  if (!(o2 instanceof Animal)) {
    throw new Error("Dog should be instanceof Animal")
  }

  let o3: Object = 42
  // int 装箱后是某种数值对象
  if (!(o3 instanceof Object)) {
    throw new Error("Boxed int should be instanceof Object")
  }

  console.log("Object instanceof verified")
}