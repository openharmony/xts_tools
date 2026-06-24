/**
 * @id TYP_03_19_03_012_RUNTIME_KEYOF_DISPATCH
 * @expect runtime
 * @section 3.19.3
 * @design keyof 类型作为字段名集合，可用于分支分发
 * @note 运行时用例：根据 keyof 值分发逻辑
 */
class R12 {
  name: string = "Alice"
  age: int = 30
}
type KeysOfR12 = keyof R12

function getValue(obj: R12, key: KeysOfR12): string {
  if (key == "name") {
    return obj.name
  }
  if (key == "age") {
    return "" + obj.age
  }
  return "unreachable"
}

function main(): void {
  let obj: R12 = new R12()
  if (getValue(obj, "name") != "Alice") {
    throw new Error("name dispatch failed")
  }
  if (getValue(obj, "age") != "30") {
    throw new Error("age dispatch failed")
  }
  console.log("keyof dispatch verified")
}