/**
 * @id TYP_03_21_02_001_PASS_BASIC
 * @expect compile-pass
 * @section 3.21.2
 * @design NonNullable<Object|null|undefined> → Object
 * @note 正向用例：排除 null/undefined
 */
type X = Object | null | undefined
type Y = NonNullable<X>

function testBasic(): void {
  let y: Y = new Object()
}