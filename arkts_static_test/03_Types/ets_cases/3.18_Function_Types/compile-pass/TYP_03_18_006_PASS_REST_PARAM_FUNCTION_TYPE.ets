/**
 * @id TYP_03_18_006_PASS_REST_PARAM_FUNCTION_TYPE
 * @expect compile-pass
 * @section 3.18
 * @design 函数类型含 rest 参数
 * @note 正向用例：验证函数类型中 rest 参数的使用
 */
type VarArgs = (...nums: int[]) => int
type MixedWithRest = (first: string, ...rest: int[]) => void

function testRestParamFunctionType(): void {
  let sum: VarArgs = (...nums: int[]): int => {
    let s: int = 0
    for (let n of nums) {
      s += n
    }
    return s
  }
  let r1: int = sum(1, 2, 3)
  let r2: int = sum()

  let printer: MixedWithRest = (first: string, ...rest: int[]): void => {}
  printer("hello", 1, 2, 3)
  printer("world")
}