/**
 * @id TYP_03_06_04_001_PASS_LITERAL
 * @expect compile-pass
 * @section 3.6.4
 * @design boolean 字面量 true/false
 * @note 正向用例：基本声明
 */
function testBooleanLiteral(): void {
  let t: boolean = true
  let f: boolean = false
  let cap: Boolean = true
}