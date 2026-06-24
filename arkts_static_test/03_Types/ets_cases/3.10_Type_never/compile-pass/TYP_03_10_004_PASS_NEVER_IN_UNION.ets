/**
 * @id TYP_03_10_004_PASS_NEVER_IN_UNION
 * @expect compile-pass
 * @section 3.10
 * @design never 在联合类型中（被吸收）
 * @note 正向用例
 */
function testNeverInUnion(): void {
  // never 是 bottom type，T | never = T
  let u: int | never = 1
  u = 2
}