/**
 * @id TYP_03_18_018_FAIL_VOID_RETURN_ASSIGN_TO_NONVOID
 * @expect compile-fail
 * @section 3.18
 * @design void 返回函数类型不能赋值给非 void 返回函数类型
 * @note 反向用例：() => void 赋值给 () => int 应编译失败
 */
function testVoidReturnAssignFail(): void {
  let voidFunc: () => void = (): void => {}
  let intFunc: () => int = voidFunc // Compile-time error: void not assignable to int
}