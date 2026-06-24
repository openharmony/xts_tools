/**
 * @id TYP_03_21_02_005_PASS_NONNULLABLE_ANY
 * @expect compile-pass
 * @section 3.21.2
 * @design NonNullable<Any> → Any - null - undefined
 * @note 正向用例：spec §3.21.2 规定
 */
type NonNullableAny = NonNullable<Any>

function testNonNullableAny(): void {
  let a: NonNullableAny = 42
  a = "hello"
  a = new Object()
}