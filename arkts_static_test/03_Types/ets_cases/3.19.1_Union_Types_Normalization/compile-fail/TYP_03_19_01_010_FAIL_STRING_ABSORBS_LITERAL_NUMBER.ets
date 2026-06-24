/**
 * @id TYP_03_19_01_010_FAIL_STRING_ABSORBS_LITERAL_NUMBER
 * @expect compile-fail
 * @section 3.19.1
 * @design string literal 被 string 吸收后仍不能接受 number（若 union 无 number）
 * @note 反向用例："a" | string → string，不接受 number
 */
type U10 = "a" | "b" | string

function testStringAbsorbFail(): void {
  let u: U10 = 42
  u = true
}