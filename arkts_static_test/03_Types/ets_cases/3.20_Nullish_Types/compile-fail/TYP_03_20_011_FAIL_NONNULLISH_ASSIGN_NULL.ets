/**
 * @id TYP_03_20_011_FAIL_NONNULLISH_ASSIGN_NULL
 * @expect compile-fail
 * @section 3.20
 * @design non-nullish 类型不能赋 null/undefined
 * @note 反向用例：int/string/Object 都不能直接持有 nullish
 */
function testNonNullishAssignNullFail(): void {
  let i: int = null
  let s: string = undefined
  let o: Object = null
}