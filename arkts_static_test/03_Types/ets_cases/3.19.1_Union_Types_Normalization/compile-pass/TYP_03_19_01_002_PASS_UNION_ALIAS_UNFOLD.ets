/**
 * @id TYP_03_19_01_002_PASS_UNION_ALIAS_UNFOLD
 * @expect compile-pass
 * @section 3.19.1
 * @design 联合类型别名展开：type D = B | C → number | string
 * @note 正向用例：验证类型别名在联合类型中展开
 */
type B = number
type C = string
type D = B | C

function main(): void {
  let x: D = 42
  x = "hello"
  console.log("verified")
}