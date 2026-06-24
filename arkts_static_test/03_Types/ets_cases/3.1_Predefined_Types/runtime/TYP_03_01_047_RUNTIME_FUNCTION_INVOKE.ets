/**
 * @id TYP_03_01_047_RUNTIME_FUNCTION_INVOKE
 * @expect runtime
 * @section 3.1
 * @design 通过函数类型变量调用函数
 * @note 运行时用例：验证函数类型变量、lambda、高阶函数运行时行为
 */
type IntOp = (x: int) => int

function applyOp(x: int, op: (x: int) => int): int {
  return op(x)
}

function main(): void {
  let square: IntOp = (x: int): int => { return x * x }
  let r1: int = square(5)
  if (r1 != 25) {
    throw new Error("square(5) should be 25")
  }

  let doubler: (x: int) => int = (x: int): int => { return x * 2 }
  let r2: int = doubler(7)
  if (r2 != 14) {
    throw new Error("doubler(7) should be 14")
  }

  // 高阶函数
  let r3: int = applyOp(10, (x: int): int => { return x + 100 })
  if (r3 != 110) {
    throw new Error("applyOp(10, +100) should be 110")
  }

  console.log("Function invoke verified")
}