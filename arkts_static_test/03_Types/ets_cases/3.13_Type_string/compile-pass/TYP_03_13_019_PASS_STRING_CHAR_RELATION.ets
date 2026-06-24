/**
 * @id TYP_03_13_019_PASS_STRING_CHAR_RELATION
 * @expect compile-pass
 * @section 3.13
 * @design 验证 char 与 string 的关系——char 在关系运算中可转为 int
 * @note 正向用例：char 字面量可参与关系比较
 */
function main(): void {
  let c1: char = c'a'
  let c2: char = c'b'
  if (!(c1 < c2)) throw new Error("char relation failed")
  console.log("verified")
}