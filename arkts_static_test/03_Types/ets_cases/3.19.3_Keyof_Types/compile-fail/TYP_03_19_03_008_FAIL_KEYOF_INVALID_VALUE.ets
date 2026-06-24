/**
 * @id TYP_03_19_03_008_FAIL_KEYOF_INVALID_VALUE
 * @expect compile-fail
 * @section 3.19.3
 * @design keyof 结果类型赋值不合法字符串应报错
 * @note 反向用例：keyof 结果只能赋值有效成员名
 */
class A8 {
  field: number = 0
  method(): void {}
}
type KeysOfA8 = keyof A8

function testInvalidValueFail(): void {
  let key: KeysOfA8 = "any string different from field or method"
}