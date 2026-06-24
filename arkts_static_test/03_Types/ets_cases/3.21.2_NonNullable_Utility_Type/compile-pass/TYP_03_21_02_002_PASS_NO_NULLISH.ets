/**
 * @id TYP_03_21_02_002_PASS_NO_NULLISH
 * @expect compile-pass
 * @section 3.21.2
 * @design 不含 null/undefined 的类型 → 自身不变
 * @note 正向用例：int | string → int | string
 */
type Z = NonNullable<int | string>

function testNoNullish(): void {
  let z1: Z = 42
  let z2: Z = "hello"
}