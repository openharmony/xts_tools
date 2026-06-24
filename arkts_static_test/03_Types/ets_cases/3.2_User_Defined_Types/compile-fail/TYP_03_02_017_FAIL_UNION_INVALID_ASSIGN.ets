/**
 * @id TYP_03_02_017_FAIL_UNION_INVALID_ASSIGN
 * @expect compile-fail
 * @section 3.2
 * @design 联合类型赋值不兼容类型应编译失败: int | string 不能接受 boolean 值
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testUnionInvalidAssignFail(): void {
  let u: int | string = 42
  u = false
  u = true
  u = 3.14
}

function testUnionParamFail(x: int | string): void {}
function caller(): void {
  testUnionParamFail(new Object())
}