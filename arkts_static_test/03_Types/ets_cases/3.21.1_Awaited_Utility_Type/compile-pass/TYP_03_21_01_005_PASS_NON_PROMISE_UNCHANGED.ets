/**
 * @id TYP_03_21_01_005_PASS_NON_PROMISE_UNCHANGED
 * @expect compile-pass
 * @section 3.21.1
 * @design 非 Promise 类型在 Awaited 中保持不变
 * @note 正向用例：Awaited<Object> → Object
 */
type D = Awaited<Object>

function testNonPromiseUnchanged(): void {
  let d: D = new Object()
}