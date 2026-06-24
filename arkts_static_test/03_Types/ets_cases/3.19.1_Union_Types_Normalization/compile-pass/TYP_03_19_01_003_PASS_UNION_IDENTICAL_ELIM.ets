/**
 * @id TYP_03_19_01_003_PASS_UNION_IDENTICAL_ELIM
 * @expect compile-pass
 * @section 3.19.1
 * @design 相同类型消除：number | number → number
 * @note 正向用例：验证联合类型中相同类型被消除
 */
type Same = number | number

function main(): void {
  let x: Same = 42
  console.log("verified")
}