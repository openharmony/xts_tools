/**
 * @id TYP_03_11_004_PASS_VOID_UNDEFINED_VARIABLES
 * @expect compile-pass
 * @section 3.11
 * @design void 与 undefined 变量声明和互赋值
 * @note 正向用例：void ≡ undefined
 */
function testVoidUndefinedVariables(): void {
  let v: void = undefined
  let u: undefined = undefined
  v = u
  u = v
}