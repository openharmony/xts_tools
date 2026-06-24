/**
 * @id TYP_03_08_003_PASS_ANY_NULLISH
 * @expect compile-pass
 * @section 3.8
 * @design Any 接受 null/undefined（spec §3.8 nullish 超类）
 * @note 正向用例：nullish 包含
 */
function testAnyNullish(): void {
  let a: Any = null
  a = undefined
  a = 1
  a = null
}