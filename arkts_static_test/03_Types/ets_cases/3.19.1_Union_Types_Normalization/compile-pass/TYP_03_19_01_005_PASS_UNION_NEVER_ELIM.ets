/**
 * @id TYP_03_19_01_005_PASS_UNION_NEVER_ELIM
 * @expect compile-pass
 * @section 3.19.1
 * @design never 类型消除：never | number → number
 * @note 正向用例：验证联合类型中 never 被消除
 */
type WithNever = never | number

function main(): void {
  let x: WithNever = 42
  console.log("verified")
}