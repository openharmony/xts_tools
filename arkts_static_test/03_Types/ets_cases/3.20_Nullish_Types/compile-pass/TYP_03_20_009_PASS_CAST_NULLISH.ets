/**
 * @id TYP_03_20_009_PASS_CAST_NULLISH
 * @expect compile-pass
 * @section 3.20
 * @design cast expression 从 nullish 转 non-nullish
 * @note 正向用例：非 nullish 值通过 as 转换
 */
function testCastNullish(): void {
  let s: string | undefined = "hello"
  let v: string = s as string

  let o: Object | null = new Object()
  let obj: Object = o as Object
}