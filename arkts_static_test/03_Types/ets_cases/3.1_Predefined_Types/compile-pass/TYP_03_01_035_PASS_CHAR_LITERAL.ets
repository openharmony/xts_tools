/**
 * @id TYP_03_01_035_PASS_CHAR_LITERAL
 * @expect compile-pass
 * @section 3.1
 * @design char 类型字面量(c'a' 形式)、Char 别名、char 变量声明
 * @note 正向用例：验证 char 实验特性的字面量和声明
 */
function testCharLiteral(): void {
  let a: char = c'a'
  let b: char = c'A'
  let zero: char = c'\u0000'
  let max: char = c'\uFFFF'
  let escape: char = c'\n'

  let alias: Char = c'X'

  // char 与 Object 兼容
  let o: Object = a
}