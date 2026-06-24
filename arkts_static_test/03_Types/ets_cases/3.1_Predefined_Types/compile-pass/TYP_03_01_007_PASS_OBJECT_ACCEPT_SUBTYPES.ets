/**
 * @id TYP_03_01_007_PASS_OBJECT_ACCEPT_SUBTYPES
 * @expect compile-pass
 * @section 3.1
 * @design Object 类型接受字符串/数值/布尔/类实例，Object[] 数组
 * @note 正向用例：验证该特性编译通过的正确用法
 */
class MyClass007 {
  value: int = 0
}

function acceptObject(p: Object): void {}

function testObjectBasic(): void {
  let o: Object = new Object()
  o = "hello"
  o = 42
  o = true
  o = 3.14
  o = new MyClass007()

  let arr: Object[] = [new Object(), "str", 1]
}

function callAcceptObject(): void {
  acceptObject(new Object())
  acceptObject("str")
  acceptObject(42)
}