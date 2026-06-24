/**
 * @id TYP_03_01_021_FAIL_OBJECT_ASSIGN_NULL
 * @expect compile-fail
 * @section 3.1
 * @design Object 类型不能接受 null/undefined 应编译失败: Object=null、Object=undefined、字段初始化为 null、参数传 null/undefined
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testObjectNullAssignFail(): void {
  let o: Object = null
  o = undefined
}

class TestObjectFieldFail {
  field: Object = null
}

function testObjectParamFail(p: Object): void {}
function caller(): void {
  testObjectParamFail(null)
  testObjectParamFail(undefined)
}