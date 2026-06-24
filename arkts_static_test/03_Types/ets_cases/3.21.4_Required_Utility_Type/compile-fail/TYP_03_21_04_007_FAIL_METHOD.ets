/**
 * @id TYP_03_21_04_007_FAIL_METHOD
 * @expect compile-fail
 * @section 3.21.4
 * @design Required 不包含方法
 * @note 反向用例：方法不可访问
 */
interface I7 {
  label?: string
  run(): void
}
type RequiredI7 = Required<I7>

function testMethodFail(): void {
  let r: RequiredI7 = {label: "x"}
  r.run()
}