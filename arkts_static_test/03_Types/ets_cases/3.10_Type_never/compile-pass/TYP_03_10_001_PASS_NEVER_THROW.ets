/**
 * @id TYP_03_10_001_PASS_NEVER_THROW
 * @expect compile-pass
 * @section 3.10
 * @design never 函数通过 throw 永不返回
 * @note 正向用例：spec §3.10 例子
 */
function fooThrow(): never {
  throw new Error("foo() never returns")
}

function testNeverThrow(): void {
  // x never gets a value
  let x: never = fooThrow()
}