/**
 * @id TYP_03_20_007_PASS_NULLISH_COALESCING
 * @expect compile-pass
 * @section 3.20
 * @design nullish coalescing 运算 ??
 * @note 正向用例：null/undefined 使用 fallback，非 nullish 使用自身
 */
function testNullishCoalescing(): void {
  let a: string | undefined = undefined
  let r1: string = a ?? "fallback"

  let b: string | null = null
  let r2: string = b ?? "fallback"

  let c: string | null | undefined = "ok"
  let r3: string = c ?? "fallback"
}