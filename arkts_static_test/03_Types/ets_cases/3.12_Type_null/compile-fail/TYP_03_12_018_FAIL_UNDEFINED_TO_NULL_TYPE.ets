/**
 * @id TYP_03_12_018_FAIL_UNDEFINED_TO_NULL_TYPE
 * @expect compile-fail
 * @section 3.12
 * @design undefined 不能赋值给 null 类型变量
 * @note 反向用例：验证 null 和 undefined 类型不兼容
 */
function testUndefinedToNullTypeFail(): void {
  let x: null = undefined
}