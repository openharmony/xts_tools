/**
 * @id TYP_03_03_026_RUNTIME_KEYOF_DISPATCH
 * @expect runtime
 * @section 3.3
 * @design keyof T 在运行时是字符串，可作为字段名查询/分发
 * @note 运行时用例：验证 keyof 类型运行时行为
 */
class C26 {
  name: string = "Alice"
  age: int = 30
}

function main(): void {
  let c: C26 = new C26()

  let k1: keyof C26 = "name"
  if (k1 != "name") {
    throw new Error("keyof value should be 'name'")
  }

  let k2: keyof C26 = "age"
  if (k2 != "age") {
    throw new Error("keyof value should be 'age'")
  }

  console.log("Keyof type runtime verified")
}