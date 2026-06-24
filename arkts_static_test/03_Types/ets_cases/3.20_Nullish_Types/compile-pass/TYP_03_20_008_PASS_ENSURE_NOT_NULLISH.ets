/**
 * @id TYP_03_20_008_PASS_ENSURE_NOT_NULLISH
 * @expect compile-pass
 * @section 3.20
 * @design ensure-not-nullish 表达式 expr! 将 nullish 转非 nullish
 * @note 正向用例：expr! 类型为非 nullish variant
 */
function testEnsureNotNullish(): void {
  let s: string | undefined = "hello"
  let v: string = s!

  let n: int | null = 42
  let i: int = n!
}