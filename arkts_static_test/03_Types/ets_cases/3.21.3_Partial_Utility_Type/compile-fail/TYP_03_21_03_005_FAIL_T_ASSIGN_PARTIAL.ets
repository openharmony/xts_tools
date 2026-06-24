/**
 * @id TYP_03_21_03_005_FAIL_T_ASSIGN_PARTIAL
 * @expect compile-fail
 * @section 3.21.3
 * @design T 不可直接赋值给 Partial<T>
 * @note 反向用例：spec §3.21.3 明确 "Type T is not assignable to Partial<T>"
 */
interface I5 {
  x: int
  y: int
}

function testTAssignPartialFail(): void {
  let full: I5 = {x: 1, y: 2}
  let part: Partial<I5> = full
}