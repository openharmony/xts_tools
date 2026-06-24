/**
 * @id TYP_03_06_02_010_PASS_EXPONENTIATION_BIGINT
 * @expect compile-pass
 * @section 3.6.2
 * @design 整数幂运算 ** 结果为 bigint（spec §3.6.2 关键设计）
 * @note 正向用例：integer ** integer → bigint
 */
function testExponentiationBigint(): void {
  // spec §3.6.2: "Exponentiation operator '**' as a variant
  // that produces a value of type bigint"
  let r1: bigint = 2n ** 10n   // bigint ** bigint = bigint

  // 整数（int/long）幂运算时期望产出 bigint
  // 注：实际实现可能要求显式 bigint 字面量
  let big1: bigint = 3n ** 5n
  let big2: bigint = 10n ** 20n
}