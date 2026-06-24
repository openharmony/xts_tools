/**
 * @id TYP_03_21_03_008_RUNTIME_OPTIONAL_FIELD
 * @expect runtime
 * @section 3.21.3
 * @design Partial 字段可选，访问时需检查 undefined
 * @note 运行时用例：optional 字段行为
 */
interface I8 {
  name: string
  desc: string
}

function main(): void {
  let p: Partial<I8> = {name: "test"}
  if (p.name != "test") {
    throw new Error("assigned field should hold value")
  }
  if (p.desc !== undefined) {
    throw new Error("unassigned field should be undefined")
  }
  console.log("Partial optional field runtime verified")
}