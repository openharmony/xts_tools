/**
 * @id TYP_03_06_02_011_FAIL_INT_BOOLEAN_CONVERT
 * @expect compile-fail
 * @section 3.6.2
 * @design 整数与 boolean 互转禁止
 * @note 反向用例：spec §3.6.2 "Conversions between integer types and type boolean are not allowed"
 */
function testIntBooleanConvertFail(): void {
  let i: int = 1
  let b: boolean = i

  let bl: boolean = true
  let i2: int = bl

  // 算术运算混合
  let mix: int = i + bl
  let mix2: int = bl + 1
}