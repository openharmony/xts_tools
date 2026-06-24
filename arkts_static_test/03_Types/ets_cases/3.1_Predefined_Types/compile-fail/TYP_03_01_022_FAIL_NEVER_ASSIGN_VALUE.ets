/**
 * @id TYP_03_01_022_FAIL_NEVER_ASSIGN_VALUE
 * @expect compile-fail
 * @section 3.1
 * @design never 类型的非法使用应编译失败: 将值赋给 never、从 never 函数返回值、将非 never 变量赋给 never
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testNeverInvalidUseFail(): void {
  let n: never = 42
  n = "hello"
  n = null
  n = undefined
}

function returnNeverFail(): never {
  return 42
}

function impossibleAssignment(): void {
  let x: int = 1
  let n: never = x
}