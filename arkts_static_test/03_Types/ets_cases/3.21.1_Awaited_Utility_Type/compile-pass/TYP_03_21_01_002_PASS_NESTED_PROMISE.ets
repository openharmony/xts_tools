/**
 * @id TYP_03_21_01_002_PASS_NESTED_PROMISE
 * @expect compile-pass
 * @section 3.21.1
 * @design Awaited<Promise<Promise<number>>> → number
 * @note 正向用例：嵌套 Promise 递归展开
 */
type B = Awaited<Promise<Promise<number>>>

function testNestedPromise(): void {
  let b: B = 42
}