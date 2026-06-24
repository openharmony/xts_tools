/**
 * @id TYP_03_19_03_009_FAIL_KEYOF_EMPTY_ASSIGN
 * @expect compile-fail
 * @section 3.19.3
 * @design 空类 keyof 等价 never，因此不能赋任何字符串
 * @note 反向用例：keyof empty class = never
 */
class Empty9 {}
type KeysOfEmpty9 = keyof Empty9

function testEmptyAssignFail(): void {
  let k: KeysOfEmpty9 = "anything"
}