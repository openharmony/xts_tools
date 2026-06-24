/**
 * @id TYP_03_11_001_PASS_VOID_RETURN_UNDEFINED
 * @expect compile-pass
 * @section 3.11
 * @design void 函数可以 return undefined
 * @note 正向用例：spec §3.11 f1 示例
 */
function f1(): void {
  return undefined
}

function testVoidReturnUndefined(): void {
  f1()
}