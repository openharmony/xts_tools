/**
 * @id TYP_03_02_025_FAIL_FUNCTION_TYPE_INVALID
 * @expect compile-fail
 * @section 3.2
 * @design 函数类型签名不兼容赋值应失败: 参数类型不匹配、返回类型不匹配
 * @note 反向用例：函数类型不兼容赋值
 */
type StringOp = (s: string) => string

function testFunctionTypeInvalidFail(): void {
  // 参数类型不匹配
  let f1: StringOp = (n: int): string => { return "" + n }

  // 返回类型不匹配
  let f2: StringOp = (s: string): int => { return s.length }

  // 用 number 函数赋值给 string 函数变量
  let numberFn: (n: int) => int = (n: int): int => { return n }
  let f3: StringOp = numberFn
}