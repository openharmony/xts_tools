/**
 * @id TYP_03_21_03_007_FAIL_METHOD_NOT_IN_PARTIAL
 * @expect compile-fail
 * @section 3.21.3
 * @design 方法不在 Partial 中，不应可访问
 * @note 反向用例：Partial<interface> 不包含方法
 */
interface I7 {
  label: string
  run(): void
}
type PartialI7 = Partial<I7>

function testMethodNotInPartialFail(): void {
  let p: PartialI7 = {label: "x"}
  p.run()
}