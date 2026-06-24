/**
 * @id TYP_03_10_007_FAIL_NEVER_ASSIGN_VALUE
 * @expect compile-fail
 * @section 3.10
 * @design never 变量不能赋普通值
 * @note 反向用例
 */
function testNeverAssignFail(): void {
  let n: never = 42
  let m: never = "hello"
  let p: never = null
}