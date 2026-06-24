/**
 * @id TYP_03_12_005_PASS_NULL_TRIPLE_UNION
 * @expect compile-pass
 * @section 3.12
 * @design T | null | undefined 三重联合类型声明与赋值
 * @note 正向用例：验证 null | undefined 同时出现在联合类型中
 */
function testNullTripleUnion(): void {
  let x: int | null | undefined = null
  x = 1
  x = undefined
  x = null

  let s: string | null | undefined = null
  s = "abc"
  s = undefined
}