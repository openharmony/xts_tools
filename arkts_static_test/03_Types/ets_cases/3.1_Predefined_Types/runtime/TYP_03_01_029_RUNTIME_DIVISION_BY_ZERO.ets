/**
 * @id TYP_03_01_029_RUNTIME_DIVISION_BY_ZERO
 * @expect runtime
 * @section 3.1
 * @design 整数除零应抛出 ArithmeticError
 * @runtime-throws=ArithmeticError
 * @note 运行时用例：实际执行验证 int / 0 抛 ArithmeticError
 */
function main(): void {
  let a: int = 10
  let b: int = 0
  let c: int = a / b
  console.log(c)
}