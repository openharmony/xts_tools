/**
 * @id TYP_03_18_002_PASS_FUNCTION_TYPE_AS_PARAM
 * @expect compile-pass
 * @section 3.18
 * @design 函数类型作为参数传递
 * @note 正向用例：验证函数类型作为函数参数
 */
type MathOp = (a: int, b: int) => int

function apply(a: int, b: int, op: MathOp): int {
  return op(a, b)
}

function evaluate(f: (x: number, y: number) => number): number {
  return f(1.0, 2.0)
}

function testFunctionTypeAsParam(): void {
  let add: MathOp = (a: int, b: int): int => { return a + b }
  let r1: int = apply(3, 4, add)
  let r2: int = apply(10, 2, (a: int, b: int): int => { return a * b })
  let r3: number = evaluate((x: number, y: number): number => { return x + y })
}