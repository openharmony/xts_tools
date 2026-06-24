/**
 * @id TYP_03_18_013_FAIL_FUNCTION_TYPE_ASSIGN_MISMATCH
 * @expect compile-fail
 * @section 3.18
 * @design 函数类型签名不兼容赋值：参数类型不匹配、返回类型不匹配、参数数量不匹配
 * @note 反向用例：验证函数类型不兼容赋值
 */
type StringOp = (s: string) => string
type IntToInt = (n: int) => int

function testFunctionTypeAssignMismatch(): void {
  // 参数类型不匹配: 期望 string 参数，实际 int 参数
  let f1: StringOp = (n: int): string => { return "" + n }

  // 返回类型不匹配: 期望 string 返回，实际 int 返回
  let f2: StringOp = (s: string): int => { return s.length }

  // 不同函数类型之间不兼容赋值
  let f3: IntToInt = (n: int): int => { return n }
  let f4: StringOp = f3

  // 参数数量不匹配: 期望两参数函数，赋值单参数函数
  let f5: (a: int, b: int) => int = (a: int): int => { return a }
}