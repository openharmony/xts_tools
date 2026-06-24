/**
 * @id TYP_03_18_024_RUNTIME_REST_PARAM_FUNCTION_TYPE
 * @expect runtime
 * @section 3.18
 * @design 函数类型含 rest 参数的运行时行为验证
 * @note 运行时用例：验证 rest 参数函数类型调用
 */
type VarArgs = (...nums: int[]) => int

function main(): void {
  let sum: VarArgs = (...nums: int[]): int => {
    let s: int = 0
    for (let n of nums) {
      s += n
    }
    return s
  }

  if (sum() != 0) {
    throw new Error("sum() should be 0")
  }
  if (sum(1, 2, 3) != 6) {
    throw new Error("sum(1, 2, 3) should be 6")
  }
  if (sum(10, 20, 30, 40) != 100) {
    throw new Error("sum(10, 20, 30, 40) should be 100")
  }

  console.log("Rest param function type verified")
}