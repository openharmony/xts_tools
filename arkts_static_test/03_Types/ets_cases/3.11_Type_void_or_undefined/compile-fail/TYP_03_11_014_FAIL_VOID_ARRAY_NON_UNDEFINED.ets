/**
 * @id TYP_03_11_014_FAIL_VOID_ARRAY_NON_UNDEFINED
 * @expect compile-fail
 * @section 3.11
 * @design void[] 只能包含 undefined
 * @note 反向用例：void[] 放入非 undefined 值
 */
function testVoidArrayNonUndefinedFail(): void {
  let a1: void[] = [1]
  let a2: Array<void> = ["hello"]
  let a3: void[] = [true]
}