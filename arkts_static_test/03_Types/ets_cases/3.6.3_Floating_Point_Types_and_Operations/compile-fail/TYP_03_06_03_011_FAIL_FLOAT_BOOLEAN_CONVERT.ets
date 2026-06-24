/**
 * @id TYP_03_06_03_011_FAIL_FLOAT_BOOLEAN_CONVERT
 * @expect compile-fail
 * @section 3.6.3
 * @design 浮点 ↔ boolean 互转禁止
 * @note 反向用例：spec §3.6.3 "Conversions between floating-point types and type boolean are not allowed"
 */
function testFloatBooleanConvertFail(): void {
  let d: double = 3.14
  let b: boolean = d

  let bl: boolean = true
  let f: float = bl

  // 算术混合
  let mix: double = d + bl
}