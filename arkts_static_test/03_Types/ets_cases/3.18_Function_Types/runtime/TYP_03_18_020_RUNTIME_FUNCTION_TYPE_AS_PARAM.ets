/**
 * @id TYP_03_18_020_RUNTIME_FUNCTION_TYPE_AS_PARAM
 * @expect runtime
 * @section 3.18
 * @design 函数类型作为回调参数传递
 * @note 运行时用例：验证函数类型作为参数的运行时行为
 */
type MathOp = (a: int, b: int) => int

function apply(a: int, b: int, op: MathOp): int {
  return op(a, b)
}

function main(): void {
  let add: MathOp = (a: int, b: int): int => { return a + b }
  let sub: MathOp = (a: int, b: int): int => { return a - b }

  if (apply(10, 3, add) != 13) {
    throw new Error("apply(10, 3, add) should be 13")
  }
  if (apply(10, 3, sub) != 7) {
    throw new Error("apply(10, 3, sub) should be 7")
  }
  if (apply(5, 0, (a: int, b: int): int => { return a * b }) != 0) {
    throw new Error("apply(5, 0, mul) should be 0")
  }

  console.log("Function type as param verified")
}