/**
 * @id TYP_03_21_06_004_PASS_STRING_LITERAL_UNION
 * @expect compile-pass
 * @section 3.21.6
 * @design string literal union 类型作 key（带引号）
 * @note 正向用例
 */
type R4 = Record<"salary" | "bonus", Object>

function testStringLiteralUnion(): void {
  let r: R4 = {'salary': new Object(), 'bonus': new Object()}
}