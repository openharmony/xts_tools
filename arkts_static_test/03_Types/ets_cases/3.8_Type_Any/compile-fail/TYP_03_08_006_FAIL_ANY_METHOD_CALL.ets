/**
 * @id TYP_03_08_006_FAIL_ANY_METHOD_CALL
 * @expect compile-fail
 * @section 3.8
 * @design Any 没有方法（spec §3.8 "Type Any has no methods or fields"）
 * @note 反向用例：Any 上调用方法
 */
function testAnyMethodCallFail(): void {
  let a: Any = "hello"
  let len: int = a.length
  let s: string = a.toString()
  let h: int = a.hashCode()
}