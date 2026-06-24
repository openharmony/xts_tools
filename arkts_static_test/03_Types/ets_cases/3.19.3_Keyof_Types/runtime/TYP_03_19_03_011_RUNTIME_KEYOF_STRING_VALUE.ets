/**
 * @id TYP_03_19_03_011_RUNTIME_KEYOF_STRING_VALUE
 * @expect runtime
 * @section 3.19.3
 * @design keyof 值运行时表现为 string 字符串
 * @note 运行时用例：keyof 类型变量可参与字符串比较和拼接
 */
class R11 {
  field: number = 0
  method(): void {}
}
type KeysOfR11 = keyof R11

function main(): void {
  let k: KeysOfR11 = "field"
  if (k != "field") {
    throw new Error("key should be field")
  }
  let s: string = "key=" + k
  if (s != "key=field") {
    throw new Error("key string concat failed")
  }
  k = "method"
  if (k != "method") {
    throw new Error("key should be method")
  }
  console.log("keyof string value verified")
}