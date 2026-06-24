/**
 * @id TYP_03_08_008_FAIL_ANY_NARROWING_NO_CAST
 * @expect compile-fail
 * @section 3.8
 * @design Any 不能直接 narrowing 到具体类型，必须 cast
 * @note 反向用例：Any → int 隐式不允许
 */
function testAnyNarrowingFail(): void {
  let a: Any = 42
  let i: int = a
  let s: string = a
}