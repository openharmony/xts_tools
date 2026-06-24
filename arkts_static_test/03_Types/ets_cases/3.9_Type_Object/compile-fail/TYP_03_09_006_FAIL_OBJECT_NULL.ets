/**
 * @id TYP_03_09_006_FAIL_OBJECT_NULL
 * @expect compile-fail
 * @section 3.9
 * @design Object 不接受 null/undefined（spec §3.9）
 * @note 反向用例
 */
function testObjectNullFail(): void {
  let o: Object = null
  o = undefined
}