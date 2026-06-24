/**
 * @id TYP_03_06_01_001_PASS_NUMERIC_DECLARATION
 * @expect compile-pass
 * @section 3.6.1
 * @design 6 种数值类型基本声明
 * @note 正向用例：byte/short/int/long/float/double 声明
 */
function testNumericDeclaration(): void {
  let b: byte = 100
  let s: short = 1000
  let i: int = 100000
  let l: long = 10000000000
  let f: float = 3.14f
  let d: double = 3.14
  let n: number = 3.14   // number 是 double 别名
}