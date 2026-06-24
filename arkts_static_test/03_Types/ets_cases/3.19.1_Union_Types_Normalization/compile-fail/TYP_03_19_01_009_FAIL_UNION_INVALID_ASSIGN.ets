/**
 * @id TYP_03_19_01_009_FAIL_UNION_INVALID_ASSIGN
 * @expect compile-fail
 * @section 3.19.1
 * @design union 归一化后仍不接受不在成员集合内的类型
 * @note 反向用例：number|string 不接受 boolean/Object
 */
type U9 = (number | string) | number

function testUnionInvalidAssignFail(): void {
  let u: U9 = true
  u = new Object()
}