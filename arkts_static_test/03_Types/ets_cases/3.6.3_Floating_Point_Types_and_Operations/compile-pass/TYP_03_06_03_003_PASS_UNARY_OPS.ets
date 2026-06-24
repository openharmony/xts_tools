/**
 * @id TYP_03_06_03_003_PASS_UNARY_OPS
 * @expect compile-pass
 * @section 3.6.3
 * @design 浮点一元 + - 运算
 * @note 正向用例：一元运算符
 */
function testUnaryOps(): void {
  let f: float = 3.14f
  let posF: float = +f
  let negF: float = -f

  let d: double = 2.71
  let posD: double = +d
  let negD: double = -d
}