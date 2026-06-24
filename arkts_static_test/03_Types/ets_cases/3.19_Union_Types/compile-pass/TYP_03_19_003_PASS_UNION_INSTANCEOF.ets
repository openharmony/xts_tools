/**
 * @id TYP_03_19_003_PASS_UNION_INSTANCEOF
 * @expect compile-pass
 * @section 3.19
 * @design 联合类型通过 instanceof 收窄
 * @note 正向用例：验证 instanceof 收窄联合类型
 */
class Cat { sleep(): void {} meow(): void {} }
class Dog { sleep(): void {} bark(): void {} }
class Frog { sleep(): void {} leap(): void {} }

type Animal = Cat | Dog | Frog

function main(): void {
  let animal: Animal = new Cat()
  if (animal instanceof Frog) {
    let frog: Frog = animal as Frog
    frog.leap()
  }
  animal.sleep()
  console.log("verified")
}