/**
 * @id TYP_03_01_006_PASS_ANY_ACCEPT_ALL
 * @expect compile-pass
 * @section 3.1
 * @design Any 类型可以接受任意类型值(int/string/boolean/double/Object/null/undefined/array)，Array<Any>
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function acceptAny(p: Any): void {}

function testAnyBasic(): void {
  let a: Any = 1
  a = "hello"
  a = true
  a = 3.14
  a = new Object()
  a = null
  a = undefined
  a = [1, 2, 3]

  let arr: Array<Any> = [1, "two", true, 3.14, null]
}

function callAcceptAny(): void {
  acceptAny(1)
  acceptAny("str")
  acceptAny(null)
  acceptAny(undefined)
  acceptAny(new Object())
}