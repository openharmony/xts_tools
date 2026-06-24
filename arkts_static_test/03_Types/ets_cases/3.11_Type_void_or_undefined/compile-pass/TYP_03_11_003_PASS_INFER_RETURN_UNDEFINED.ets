/**
 * @id TYP_03_11_003_PASS_INFER_RETURN_UNDEFINED
 * @expect compile-pass
 * @section 3.11
 * @design 省略返回类型但 return undefined 合法
 * @note 正向用例：spec §3.11 f3 示例
 */
function f3() {
  return undefined
}

function testInferReturnUndefined(): void {
  let u: undefined = f3()
}