/**
 * @id TYP_03_12_007_PASS_NULL_FUNCTION_PARAM
 * @expect compile-pass
 * @section 3.12
 * @design 函数参数类型为 T | null，传入 null 和 T 值
 * @note 正向用例：验证 null 作为函数参数传递
 */
function acceptNullable(p: string | null): int {
  if (p == null) {
    return -1
  }
  return p.length
}

function testNullFunctionParam(): void {
  acceptNullable(null)
  acceptNullable("hello")
}