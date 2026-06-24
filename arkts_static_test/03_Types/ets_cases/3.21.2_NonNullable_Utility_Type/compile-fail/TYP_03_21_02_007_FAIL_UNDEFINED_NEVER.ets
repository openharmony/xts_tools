/**
 * @id TYP_03_21_02_007_FAIL_UNDEFINED_NEVER
 * @expect compile-fail
 * @section 3.21.2
 * @design NonNullable<undefined> → never，不能赋值
 * @note 反向用例：NonNullable<undefined> = never
 */
type NonNullUndefined = NonNullable<undefined>

function testUndefinedNeverFail(): void {
  let u: NonNullUndefined = undefined
}