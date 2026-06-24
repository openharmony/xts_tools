/**
 * @id TYP_03_12_017_FAIL_NULL_TYPE_MISMATCH
 * @expect compile-fail
 * @section 3.12
 * @design null 类型变量赋值为非 null 值（如数值、字符串、undefined）
 * @note 反向用例：验证类型 null 只能持有值 null
 */
function testNullTypeMismatch(): void {
  let x: null = 42
  let y: null = "hello"
  let z: null = undefined
}