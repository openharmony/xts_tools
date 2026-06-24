/**
 * @id TYP_03_12_006_PASS_NULL_FUNCTION_RETURN
 * @expect compile-pass
 * @section 3.12
 * @design 函数返回类型为 T | null
 * @note 正向用例：验证函数可以返回 null
 */
function maybeNull(v: int): string | null {
  if (v > 0) {
    return "positive"
  }
  return null
}

function testNullFunctionReturn(): void {
  let r1: string | null = maybeNull(1)
  let r2: string | null = maybeNull(-1)
}