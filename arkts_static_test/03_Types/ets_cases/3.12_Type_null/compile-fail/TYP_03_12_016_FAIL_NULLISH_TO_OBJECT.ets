/**
 * @id TYP_03_12_016_FAIL_NULLISH_TO_OBJECT
 * @expect compile-fail
 * @section 3.12
 * @design nullish 类型不兼容 Object：T|null 赋值给 Object
 * @note 反向用例：验证 spec 明确规定的 nullish 不兼容 Object
 */
function testNullToObjectFail(): void {
  let nullable: Object | null = null
  let o: Object = nullable
}