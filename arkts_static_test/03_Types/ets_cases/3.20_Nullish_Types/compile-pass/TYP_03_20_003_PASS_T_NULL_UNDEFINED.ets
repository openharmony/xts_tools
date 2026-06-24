/**
 * @id TYP_03_20_003_PASS_T_NULL_UNDEFINED
 * @expect compile-pass
 * @section 3.20
 * @design T | null | undefined 可持有 T/null/undefined
 * @note 正向用例：三态 nullish 类型
 */
function testTNullUndefined(): void {
  let v: string | null | undefined = "hello"
  v = null
  v = undefined
  v = "world"
}