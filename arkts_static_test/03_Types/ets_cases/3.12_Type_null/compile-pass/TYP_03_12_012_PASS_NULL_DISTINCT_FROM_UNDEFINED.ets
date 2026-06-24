/**
 * @id TYP_03_12_012_PASS_NULL_DISTINCT_FROM_UNDEFINED
 * @expect compile-pass
 * @section 3.12
 * @design null 和 undefined 是不同类型、不同值，可共存于联合类型
 * @note 正向用例：验证 null 与 undefined 类型不兼容但可共存于联合类型
 */
function testNullDistinctFromUndefined(): void {
  let a: null = null
  let b: undefined = undefined
  let c: null | undefined = null
  c = undefined
  let d: int | null | undefined = null
  d = undefined
  d = 5
}