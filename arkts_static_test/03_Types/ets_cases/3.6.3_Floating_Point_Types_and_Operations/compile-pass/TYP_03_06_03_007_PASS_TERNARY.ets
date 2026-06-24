/**
 * @id TYP_03_06_03_007_PASS_TERNARY
 * @expect compile-pass
 * @section 3.6.3
 * @design 浮点三元 ?:
 * @note 正向用例：三元用于浮点
 */
function testTernary(): void {
  let a: double = 3.14
  let b: double = 2.71

  let max: double = a > b ? a : b
  let min: double = a < b ? a : b
  let abs: double = a < 0.0 ? -a : a

  // float 与 double 混合 ?: → double
  let f: float = 1.0f
  let r: double = a > 0.0 ? a : f
}