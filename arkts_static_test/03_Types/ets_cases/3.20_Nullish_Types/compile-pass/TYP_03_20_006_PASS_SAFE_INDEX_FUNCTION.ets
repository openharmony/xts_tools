/**
 * @id TYP_03_20_006_PASS_SAFE_INDEX_FUNCTION
 * @expect compile-pass
 * @section 3.20
 * @design safe indexing 和 safe function call
 * @note 正向用例：arr?.[0] / f?.()
 */
function testSafeIndexFunction(): void {
  let arr: string[] | undefined = undefined
  let first: string | undefined = arr?.[0]

  arr = ["a", "b"]
  first = arr?.[0]

  let f: (() => string) | undefined = undefined
  let r: string | undefined = f?.()

  f = (): string => { return "ok" }
  r = f?.()
}