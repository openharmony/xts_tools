/**
 * @id TYP_03_21_01_003_PASS_MULTI_UNION
 * @expect compile-pass
 * @section 3.21.1
 * @design Awaited<Promise<Promise<number>|Promise<string>|Promise<boolean>>> → number|string|boolean
 * @note 正向用例：多层 union Promise 展开
 */
type E = Awaited<Promise<Promise<number> | Promise<string> | Promise<boolean>>>

function testMultiUnion(): void {
  let e1: E = 42
  let e2: E = "hello"
  let e3: E = true
}