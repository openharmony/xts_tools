/**
 * @id TYP_03_07_005_PASS_STRING_BIGINT_REF
 * @expect compile-pass
 * @section 3.7
 * @design string / bigint 是引用类型
 * @note 正向用例：spec §3.7 string/bigint 是引用类型
 */
function testStringBigintRef(): void {
  let s: string = "hello"
  let b: bigint = 100n
}