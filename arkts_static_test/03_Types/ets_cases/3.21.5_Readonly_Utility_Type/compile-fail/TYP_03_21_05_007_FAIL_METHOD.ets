/**
 * @id TYP_03_21_05_007_FAIL_METHOD
 * @expect compile-fail
 * @section 3.21.5
 * @design Readonly 不包含方法
 * @note 反向用例
 */
interface I7 {
  label: string
  run(): void
}
type R7 = Readonly<I7>

function testMethodFail(): void {
  let r: R7 = {label: "x"}
  r.run()
}