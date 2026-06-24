/**
 * @id TYP_03_11_013_FAIL_UNDEFINED_TO_NONNULLISH
 * @expect compile-fail
 * @section 3.11
 * @design undefined 不能赋值给非 nullish 类型
 * @note 反向用例：undefined → int/string/Object 不允许
 */
function testUndefinedToNonNullishFail(): void {
  let i: int = undefined
  let s: string = undefined
  let o: Object = undefined
}