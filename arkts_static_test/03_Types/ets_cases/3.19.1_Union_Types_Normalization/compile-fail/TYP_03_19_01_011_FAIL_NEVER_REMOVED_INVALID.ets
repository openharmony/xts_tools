/**
 * @id TYP_03_19_01_011_FAIL_NEVER_REMOVED_INVALID
 * @expect compile-fail
 * @section 3.19.1
 * @design never 被移除后，T|never 等价 T，不接受其他类型
 * @note 反向用例：int|never 不接受 string
 */
type U11 = int | never

function testNeverRemovedInvalidFail(): void {
  let u: U11 = "hello"
}