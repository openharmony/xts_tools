/**
 * @id TYP_03_21_04_009_RUNTIME_SUBTYPE
 * @expect runtime
 * @section 3.21.4
 * @design Required 基本运行时值
 * @note 运行时用例
 */
interface Item9 { label?: string; count?: int }
type RequiredItem9 = Required<Item9>

function main(): void {
  let r: RequiredItem9 = {label: "A", count: 1}
  if (r.label != "A") throw new Error("label failed")
  console.log("Required runtime verified")
}