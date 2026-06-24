/**
 * @id TYP_03_03_027_RUNTIME_INPLACE_FUNCTION_INVOKE
 * @expect runtime
 * @section 3.3
 * @design 就地函数类型变量的调用、作为参数传递
 * @note 运行时用例：验证就地函数类型运行时调用
 */
function applyOp(x: int, op: (n: int) => int): int {
  return op(x)
}

function main(): void {
  // 就地函数类型变量
  let square: (n: int) => int = (n: int): int => { return n * n }
  let r1: int = square(5)
  if (r1 != 25) {
    throw new Error("square(5) should be 25")
  }

  // 就地函数类型作为参数
  let r2: int = applyOp(7, (n: int): int => { return n + 100 })
  if (r2 != 107) {
    throw new Error("applyOp(7, +100) should be 107")
  }

  // 多参函数
  let add: (a: int, b: int) => int = (a: int, b: int): int => { return a + b }
  if (add(3, 4) != 7) {
    throw new Error("add(3,4) should be 7")
  }

  console.log("Inplace function invoke verified")
}