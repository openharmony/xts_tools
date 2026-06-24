/**
 * @id TYP_03_21_04_004_PASS_NO_OPTIONAL_CLASS
 * @expect compile-pass
 * @section 3.21.4
 * @design Required 对全部字段都是 required 的类，类型不变
 * @note 正向用例
 */
interface I4 {
  a: int
  b: string
}
type RequiredI4 = Required<I4>

function testNoOptionalClass(): void {
  let r: RequiredI4 = {a: 1, b: "x"}
}