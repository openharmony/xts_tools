/**
 * @id TYP_03_09_009_RUNTIME_OBJECT_INSTANCEOF
 * @expect runtime
 * @section 3.9
 * @design Object 上的 instanceof 检查
 * @note 运行时用例
 */
class Animal9 {}
class Dog9 extends Animal9 {}

function main(): void {
  let d: Object = new Dog9()
  if (!(d instanceof Animal9)) {
    throw new Error("Dog should be instance of Animal")
  }
  if (!(d instanceof Dog9)) {
    throw new Error("d should be Dog9")
  }
  if (!(d instanceof Object)) {
    throw new Error("d should be Object")
  }

  let s: Object = "hello"
  if (!(s instanceof string)) {
    throw new Error("string instanceof failed")
  }

  console.log("Object instanceof verified")
}