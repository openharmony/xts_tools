/**
 * @id TYP_03_06_01_015_FAIL_FLOAT_LITERAL_TO_INT
 * @expect compile-fail
 * @section 3.6.1
 * @design 浮点字面量不能赋值给整数类型变量（narrowing）
 * @note 反向用例：浮点 → 整数隐式不允许
 */
function testFloatToIntFail(): void {
  let i: int = 3.14
  let l: long = 1.5
  let s: short = 2.0f
  let b: byte = 1.0
}