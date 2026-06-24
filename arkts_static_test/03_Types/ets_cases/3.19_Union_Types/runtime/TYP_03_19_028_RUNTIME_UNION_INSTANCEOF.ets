/**
 * @id TYP_03_19_028_RUNTIME_UNION_INSTANCEOF
 * @expect runtime
 * @section 3.19
 * @design 联合类型 instanceof 收窄运行时验证
 * @note 运行时用例：验证 instanceof 正确收窄联合类型
 */
class Cat28 { sleep(): void {} meow(): string { return "meow" } }
class Dog28 { sleep(): void {} bark(): string { return "bark" } }
class Frog28 { sleep(): void {} leap(): string { return "leap" } }

type Animal28 = Cat28 | Dog28 | Frog28

function main(): void {
  let animal: Animal28 = new Cat28()
  if (animal instanceof Frog28) {
    throw new Error("Should not be Frog")
  } else if (animal instanceof Cat28) {
    let cat: Cat28 = animal as Cat28
    if (cat.meow() != "meow") {
      throw new Error("cat.meow() should be 'meow'")
    }
  }
  animal.sleep()
  console.log("verified")
}