/**
 * @id TYP_03_12_009_PASS_NULL_ANY
 * @expect compile-pass
 * @section 3.12
 * @design Any 类型变量接受 null 值（null 是 Any 的子类型）
 * @note 正向用例：验证 Any 可持有 null
 */
function testNullAny(): void {
  let a: Any = null
  a = null
  a = 42
}