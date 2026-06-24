/**
 * @id TYP_03_21_06_005_PASS_KEY_STRING_NUMBER_UNION
 * @expect compile-pass
 * @section 3.21.6
 * @design string | number 作 key
 * @note 正向用例：spec R6
 */
type R5 = Record<string | number, Object>

function testKeyStringNumberUnion(): void {
  let r: R5 = {"a": new Object(), 0: new Object()}
}