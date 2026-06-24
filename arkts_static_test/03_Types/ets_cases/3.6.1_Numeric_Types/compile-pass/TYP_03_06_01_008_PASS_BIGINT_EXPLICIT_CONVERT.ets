/**
 * @id TYP_03_06_01_008_PASS_BIGINT_EXPLICIT_CONVERT
 * @expect compile-pass
 * @section 3.6.1
 * @design bigint 与数值类型隔离，必须用 BigInt() 显式转换
 * @note 正向用例：spec §3.6.1 BigInt 类方法显式转换
 */
function testBigintExplicitConvert(): void {
  // 从 long 显式转 bigint
  let l: long = 12345
  let big1: bigint = BigInt(l)

  // 从 string 显式转 bigint
  let big2: bigint = BigInt("12345678901234567890")

  // bigint 字面量
  let big3: bigint = 100n
}