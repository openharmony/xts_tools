/**
 * @id TYP_03_06_02_003_PASS_UNARY_OPS
 * @expect compile-pass
 * @section 3.6.2
 * @design 一元运算 + - ~
 * @note 正向用例：一元运算符
 */
function testUnaryOps(): void {
  let a: int = 10

  let pos: int = +a
  let neg: int = -a
  let bnot: int = ~a

  let lo: long = 1000
  let posL: long = +lo
  let negL: long = -lo
  let bnotL: long = ~lo
}