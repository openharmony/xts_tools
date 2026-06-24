/**
 * @id TYP_03_13_036_PASS_STRING_AS_CLASS_TYPE
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string 是类类型，可在需要类名的地方使用（如泛型参数）
 * @note 正向用例：string 可以用作泛型参数、类字段类型、函数参数类型等
 */
class Container<T> {
  value: T
  constructor(v: T) { this.value = v }
}

function greet(name: string): string {
  return "Hello, " + name
}

let globalStr: string = "world"

function main(): void {
  let c: Container<string> = new Container<string>("test")
  let result: string = greet("ArkTS")
  if (c.value !== "test") throw new Error("container assert failed")
  if (result !== "Hello, ArkTS") throw new Error("greet assert failed")
  console.log("verified")
}