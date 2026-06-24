/**
 * @id TYP_03_21_01_009_FAIL_AWAITED_PROMISE_ASSIGN
 * @expect compile-fail
 * @section 3.21.1
 * @design Awaited<Promise<string>> 是 string，不能赋值 Promise<string>
 * @note 反向用例：验证 Awaited 会递归移除 Promise
 */
type AwaitedStringFail = Awaited<Promise<string>>
function testAwaitedPromiseAssignFail(p: Promise<string>): void {
  let v: AwaitedStringFail = p
}
