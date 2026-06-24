/**
 * @id TYP_03_21_09_006_RUNTIME
 * @expect runtime
 * @section 3.21.9
 * @design Required<Readonly<Issue>> 嵌套类型运行时值正确
 * @note 运行时用例
 */
interface Issue6 {
  title?: string
}
type Nest6 = Required<Readonly<Issue6>>

function main(): void {
  const x: Nest6 = {title: "test"}
  if (x.title != "test") throw new Error("nested utility runtime failed")
  console.log("Nested utility types runtime verified")
}