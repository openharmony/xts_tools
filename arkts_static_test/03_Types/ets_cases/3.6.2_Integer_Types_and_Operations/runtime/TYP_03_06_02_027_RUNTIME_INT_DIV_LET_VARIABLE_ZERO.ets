/**
 * @id TYP_03_06_02_027_RUNTIME_INT_DIV_LET_VARIABLE_ZERO
 * @expect runtime
 * @section 3.6.2
 * @design 整数 let 变量 = 0 作除数：编译通过，运行时抛 ArithmeticError
 * @runtime-throws=ArithmeticError
 * @note 运行时用例：let 不参与常量传播（合理设计）
 */
function main(): void {
  let a: int = 0
  let c: int = 10 / a
  console.log(c)
}