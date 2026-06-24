/**
 * @id TYP_03_21_01_001_PASS_BASIC_PROMISE
 * @expect compile-pass
 * @section 3.21.1
 * @design Awaited<Promise<string>> → string
 * @note 正向用例：spec §3.21.1 原例 type A = Awaited<Promise<string>>
 */
type A = Awaited<Promise<string>>

function testBasicPromise(): void {
  let a: A = "hello"
}