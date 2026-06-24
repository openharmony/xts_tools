/**
 * @id TYP_03_01_020_FAIL_ANY_ACCESS_METHOD
 * @expect compile-fail
 * @section 3.1
 * @design Any 类型无方法无字段，调用方法/访问字段应编译失败: length/toString/hashCode/push/substring
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testAnyInvalidAccessFail(): void {
  let a: Any = "hello"
  let len: int = a.length

  let n: Any = 42
  n.toString()

  let obj: Any = new Object()
  obj.hashCode()

  let arr: Any = [1, 2, 3]
  arr.push(4)

  let s: Any = "test"
  let sub: string = s.substring(1)
}