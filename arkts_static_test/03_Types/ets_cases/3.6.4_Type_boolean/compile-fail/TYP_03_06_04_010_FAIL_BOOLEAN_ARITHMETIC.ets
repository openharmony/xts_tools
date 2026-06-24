/**
 * @id TYP_03_06_04_010_FAIL_BOOLEAN_ARITHMETIC
 * @expect compile-fail
 * @section 3.6.4
 * @design boolean 不能参与算术运算
 * @note 反向用例：boolean 与数值算术运算非法
 */
function testBooleanArithmeticFail(): void {
  let b: boolean = true
  let r1: int = b + 1
  let r2: int = b * 2
  let r3: int = b - 1
  let r4: int = -b
}