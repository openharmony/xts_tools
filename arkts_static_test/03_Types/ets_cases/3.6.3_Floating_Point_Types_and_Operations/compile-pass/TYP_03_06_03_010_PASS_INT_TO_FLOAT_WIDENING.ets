/**
 * @id TYP_03_06_03_010_PASS_INT_TO_FLOAT_WIDENING
 * @expect compile-pass
 * @section 3.6.3
 * @design 整数 widening 到浮点（隐式合法）
 * @note 正向用例：byte/short/int/long → float/double 隐式
 */
function testIntToFloatWidening(): void {
  let by: byte = 10
  let sh: short = 100
  let i: int = 1000
  let lo: long = 1000000

  let f1: float = by
  let f2: float = sh
  let f3: float = i
  let f4: float = lo

  let d1: double = by
  let d2: double = sh
  let d3: double = i
  let d4: double = lo

  // float widening 到 double
  let fl: float = 3.14f
  let dl: double = fl
}