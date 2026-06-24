/**
 * @id TYP_03_06_02_008_PASS_TERNARY
 * @expect compile-pass
 * @section 3.6.2
 * @design 三元条件运算 ?:
 * @note 正向用例：整数 ?: 表达式
 */
function testTernary(): void {
  let a: int = 10
  let b: int = 20

  let max: int = a > b ? a : b
  let min: int = a < b ? a : b
  let abs: int = a < 0 ? -a : a

  let lo: long = 1000
  let lmax: long = a > b ? lo : 0
}