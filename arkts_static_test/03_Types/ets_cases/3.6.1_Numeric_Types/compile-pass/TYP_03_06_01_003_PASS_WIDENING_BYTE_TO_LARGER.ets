/**
 * @id TYP_03_06_01_003_PASS_WIDENING_BYTE_TO_LARGER
 * @expect compile-pass
 * @section 3.6.1
 * @design byte 隐式 widening 到 short/int/long/float/double
 * @note 正向用例：byte 可隐式转换为所有更大数值类型
 */
function testWideningByte(): void {
  let b: byte = 50

  let s: short = b
  let i: int = b
  let l: long = b
  let f: float = b
  let d: double = b
  let n: number = b
}