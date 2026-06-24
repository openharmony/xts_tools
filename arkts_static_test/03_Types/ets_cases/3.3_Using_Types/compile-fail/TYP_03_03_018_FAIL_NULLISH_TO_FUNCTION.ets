/**
 * @id TYP_03_03_018_FAIL_NULLISH_TO_FUNCTION
 * @expect compile-fail
 * @section 3.3
 * @design () => string | undefined 表示返回值可空，函数本身非 nullish
 *   因此整体不能赋 undefined
 * @note 反向用例：spec §3.3 中 c = undefined 应失败
 */
function testNullishToFunctionFail(): void {
  let c: () => string | undefined
  c = undefined
}