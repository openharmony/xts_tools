/**
 * @id TYP_03_21_07_002_PASS_UNION_RETURN
 * @expect compile-pass
 * @section 3.21.7
 * @design ReturnType<() => int | string> → int | string
 * @note 正向用例
 */
type UnionRet = ReturnType<() => int | string>

function testUnionReturn(): void {
  let u1: UnionRet = 42
  let u2: UnionRet = "hello"
}