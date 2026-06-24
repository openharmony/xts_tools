/**
 * @id TYP_03_10_005_PASS_NEVER_EXHAUSTIVE
 * @expect compile-pass
 * @section 3.10
 * @design never 用于穷举检查
 * @note 正向用例
 */
function unreachable5(): never {
  throw new Error("unreachable")
}

function exhaustive5(x: int): string {
  if (x == 1) return "one"
  if (x == 2) return "two"
  return unreachable5()
}