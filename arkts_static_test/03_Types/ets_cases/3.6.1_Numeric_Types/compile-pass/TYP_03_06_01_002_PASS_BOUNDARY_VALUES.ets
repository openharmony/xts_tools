/**
 * @id TYP_03_06_01_002_PASS_BOUNDARY_VALUES
 * @expect compile-pass
 * @section 3.6.1
 * @design 数值类型边界值
 * @note 正向用例：每种类型的最大/最小值
 */
function testBoundaryValues(): void {
  let bMax: byte = 127
  let bMin: byte = -128

  let sMax: short = 32767
  let sMin: short = -32768

  let iMax: int = 2147483647
  let iMin: int = -2147483648

  let lMax: long = 9223372036854775807
  let lMin: long = -9223372036854775808
}