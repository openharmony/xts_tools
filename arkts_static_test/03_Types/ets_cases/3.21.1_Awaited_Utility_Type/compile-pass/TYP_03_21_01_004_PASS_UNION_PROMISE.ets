/**
 * @id TYP_03_21_01_004_PASS_UNION_PROMISE
 * @expect compile-pass
 * @section 3.21.1
 * @design Awaited<boolean | Promise<number>> → boolean | number
 * @note 正向用例：union 中展开 Promise
 */
type C = Awaited<boolean | Promise<number>>

function testUnionPromise(): void {
  let c1: C = true
  let c2: C = 42
}