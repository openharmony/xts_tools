/**
 * @id TYP_03_06_04_004_PASS_BITWISE_LOGICAL
 * @expect compile-pass
 * @section 3.6.4
 * @design 按位逻辑运算 &, ^, |（不短路）
 * @note 正向用例：boolean 的 & ^ |
 */
function testBitwiseLogical(): void {
  let t: boolean = true
  let f: boolean = false

  let r1: boolean = t & f
  let r2: boolean = t ^ f
  let r3: boolean = t | f
  let r4: boolean = t & t
  let r5: boolean = f | f
}