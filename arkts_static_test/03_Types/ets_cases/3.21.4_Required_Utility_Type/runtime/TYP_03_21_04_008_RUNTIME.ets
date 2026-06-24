/**
 * @id TYP_03_21_04_008_RUNTIME
 * @expect runtime
 * @section 3.21.4
 * @design Required 字段赋值正常运行时
 * @note 运行时用例
 */
interface R8 {
  name?: string
  value?: int
}
type RequiredR8 = Required<R8>

function main(): void {
  let r: RequiredR8 = {name: "test", value: 42}
  if (r.name != "test") throw new Error("name failed")
  if (r.value != 42) throw new Error("value failed")
  console.log("Required runtime verified")
}