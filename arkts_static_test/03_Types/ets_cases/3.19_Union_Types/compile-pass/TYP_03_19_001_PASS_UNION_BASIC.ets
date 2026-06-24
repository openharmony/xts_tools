/**
 * @id TYP_03_19_001_PASS_UNION_BASIC
 * @expect compile-pass
 * @section 3.19
 * @design 联合类型基本声明与赋值
 * @note 正向用例：验证联合类型声明和赋值的正确用法
 */
type StringOrNumber = string | number
type Animal = Cat | Dog | Frog | number

class Cat { sleep(): void {} }
class Dog { sleep(): void {} }
class Frog { sleep(): void {} }

function main(): void {
  let x: StringOrNumber = "hello"
  x = 42

  let a: Animal = new Cat()
  a = new Frog()
  a = 42

  console.log("verified")
}