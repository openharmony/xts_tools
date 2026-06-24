/**
 * @id TYP_03_12_013_FAIL_NULL_ASSIGN_TO_NONNULLISH
 * @expect compile-fail
 * @section 3.12
 * @design null 赋值给非空类型应编译失败: int/string/boolean/Object
 * @note 反向用例：验证 null 不能赋值给非 nullish 类型
 */
function testNullAssignFail(): void {
  let n: int = null
  let s: string = null
  let b: boolean = null
  let o: Object = null
}