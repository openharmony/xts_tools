/**
 * @id TYP_03_20_014_FAIL_ASSIGN_NULLISH_TO_T
 * @expect compile-fail
 * @section 3.20
 * @design nullish 类型未转换前不能赋值给非 nullish T
 * @note 反向用例：T|undefined/T|null 参数赋值给 T 不允许，避免初始化智能收窄
 */
function testAssignNullishToTFail(s: string | undefined, n: int | null): void {
  let t: string = s
  let i: int = n
}