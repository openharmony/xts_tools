/**
 * @id TYP_03_01_024_FAIL_NULL_NONNULLISH
 * @expect compile-fail
 * @section 3.1
 * @design null 赋值给非空类型应编译失败: null 赋值给 int/string/boolean/double/Object，字段初始化为 null，函数参数传 null
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testNullNonNullishFail(): void {
  let n: int = null
  let s: string = null
  let b: boolean = null
  let d: double = null
  let o: Object = null
}

class TestNullFieldFail {
  fieldValue: int = null
}

function testNullParamFail(p: string): void {}
function caller(): void {
  testNullParamFail(null)
}