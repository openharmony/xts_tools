/**
 * @id TYP_03_06_02_017_RUNTIME_DIV_BY_ZERO
 * @expect runtime
 * @section 3.6.2
 * @design 整数除零抛 ArithmeticError（spec 明确）
 * @runtime-throws=ArithmeticError
 * @note 运行时用例：a / 0 抛 ArithmeticError
 */
function main(): void {
  let a: int = 10
  let b: int = 0
  let c: int = a / b
  console.log(c)
}