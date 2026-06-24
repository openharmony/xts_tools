/**
 * @id TYP_03_03_022_FAIL_INPLACE_FUNCTION_SIGNATURE
 * @expect compile-fail
 * @section 3.3
 * @design 就地函数类型签名不匹配赋值应失败
 * @note 反向用例：参数/返回类型不兼容
 */
function testInplaceFunctionFail(): void {
  let f1: (x: int) => int = (x: string): int => { return x.length }
  let f2: (x: int) => string = (x: int): int => { return x }
}