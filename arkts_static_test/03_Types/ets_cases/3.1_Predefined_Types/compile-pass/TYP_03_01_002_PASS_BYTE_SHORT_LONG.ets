/**
 * @id TYP_03_01_002_PASS_BYTE_SHORT_LONG
 * @expect compile-pass
 * @section 3.1
 * @design byte/short/long 声明及边界值，类型别名(Byte/Short/Long)，widening 转换(byte→long, short→long, long→float/double, byte→int)
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function testByteShortLong(): void {
  let b: byte = 127
  let b2: byte = -128
  let b3: Byte = 0

  let s: short = 32767
  let s2: short = -32768
  let s3: Short = 0

  let l: long = 9223372036854775807
  let l2: long = -9223372036854775808
  let l3: Long = 0

  let w1: long = b
  let w2: long = s
  let w3: float = l
  let w4: double = l
  let w5: int = b
  let w6: int = s

  let sum: long = l + b
  let sum2: long = l + s
  let prod: int = b * s
}