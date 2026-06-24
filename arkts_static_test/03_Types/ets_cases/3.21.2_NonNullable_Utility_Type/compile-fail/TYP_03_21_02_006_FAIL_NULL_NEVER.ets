/**
 * @id TYP_03_21_02_006_FAIL_NULL_NEVER
 * @expect compile-fail
 * @section 3.21.2
 * @design NonNullable<null> → never，不能赋值
 * @note 反向用例：NonNullable<null> = never
 */
type NonNullNull = NonNullable<null>

function testNullNeverFail(): void {
  let n: NonNullNull = null
}