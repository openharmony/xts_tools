/**
 * @id TYP_03_06_02_013_FAIL_BITWISE_FLOAT_OPERAND
 * @expect compile-fail
 * @section 3.6.2
 * @design 按位运算 & ^ | ~ 必须是整数
 * @note 反向用例：浮点数不能做按位运算
 */
function testBitwiseFloatFail(): void {
  let f: float = 3.14f
  let d: double = 2.71

  let r1: int = f & 0xFF
  let r2: int = d | 1
  let r3: int = f ^ 2
  let r4: int = ~d
}