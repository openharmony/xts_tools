/**
 * @id TYP_03_12_020_FAIL_NULLISH_OBJECT_PARAM
 * @expect compile-fail
 * @section 3.12
 * @design null | undefined 联合类型值赋给 Object 参数
 * @note 反向用例：验证 spec 规定 nullish 类型不兼容 Object
 */
function acceptObject(o: Object): void {}
function testNullishObjectParam(): void {
  let x: null | undefined = null
  acceptObject(x)
}