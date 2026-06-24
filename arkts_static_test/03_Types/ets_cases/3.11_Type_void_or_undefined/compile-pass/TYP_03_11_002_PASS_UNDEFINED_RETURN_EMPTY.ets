/**
 * @id TYP_03_11_002_PASS_UNDEFINED_RETURN_EMPTY
 * @expect compile-pass
 * @section 3.11
 * @design undefined 函数可以 return 空语句
 * @note 正向用例：spec §3.11 f2 示例
 */
function f2(): undefined {
  return
}

function testUndefinedReturnEmpty(): void {
  let u: undefined = f2()
}