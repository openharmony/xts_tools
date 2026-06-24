/**
 * @id TYP_03_03_016_FAIL_NULLISH_TO_NONNULLISH_ARRAY
 * @expect compile-fail
 * @section 3.3
 * @design (string | undefined)[] 表示数组元素可空，但数组本身非 nullish
 * @note 反向用例：spec §3.3 中 b1 = undefined 应失败
 */
function testNullishToArrayFail(): void {
  let b1: (string | undefined)[]
  b1 = undefined
}