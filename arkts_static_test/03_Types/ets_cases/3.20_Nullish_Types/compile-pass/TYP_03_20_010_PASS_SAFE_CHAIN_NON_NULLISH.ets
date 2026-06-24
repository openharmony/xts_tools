/**
 * @id TYP_03_20_010_PASS_SAFE_CHAIN_NON_NULLISH
 * @expect compile-pass
 * @section 3.20
 * @design 对非 nullish 值使用 ?. 合法但无影响（可能 warning）
 * @note 正向用例：safe chain 用于 non-nullish expression
 */
class C10 { f: int = 1 }

function testSafeChainNonNullish(): void {
  let c: C10 = new C10()
  let v: int = c?.f
}