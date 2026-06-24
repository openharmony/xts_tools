/**
 * @id TYP_03_06_01_004_PASS_WIDENING_SHORT_TO_LARGER
 * @expect compile-pass
 * @section 3.6.1
 * @design short 隐式 widening 到 int/long/float/double
 * @note 正向用例：short 可隐式转换为所有更大数值类型
 */
function testWideningShort(): void {
  let s: short = 1000

  let i: int = s
  let l: long = s
  let f: float = s
  let d: double = s
}