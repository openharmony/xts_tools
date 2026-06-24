/**
 * @id TYP_03_12_001_PASS_NULL_LITERAL_DECLARE
 * @expect compile-pass
 * @section 3.12
 * @design null 字面量声明与赋值：let x: null = null
 * @note 正向用例：验证 null 字面量作为类型标注和值
 */
function testNullLiteralDeclare(): void {
  let x: null = null
  let y: null = null
  x = null
  y = null
}