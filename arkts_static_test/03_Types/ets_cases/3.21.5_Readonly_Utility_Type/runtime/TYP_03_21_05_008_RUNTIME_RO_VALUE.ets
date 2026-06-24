/**
 * @id TYP_03_21_05_008_RUNTIME_RO_VALUE
 * @expect runtime
 * @section 3.21.5
 * @design Readonly 字段可读取
 * @note 运行时用例
 */
interface I8 {
  value: string
}
type R8 = Readonly<I8>

function main(): void {
  let ro: R8 = {value: "test"}
  if (ro.value != "test") throw new Error("readonly get failed")
  console.log("Readonly runtime verified")
}