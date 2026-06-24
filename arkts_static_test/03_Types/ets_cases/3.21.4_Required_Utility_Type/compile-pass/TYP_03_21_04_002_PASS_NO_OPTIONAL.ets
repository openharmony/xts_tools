/**
 * @id TYP_03_21_04_002_PASS_NO_OPTIONAL
 * @expect compile-pass
 * @section 3.21.4
 * @design 没有 optional 字段的类型应用 Required 不变
 * @note 正向用例：自身不变
 */
interface I2 {
  a: int
  b: string
}
type RequiredI2 = Required<I2>

function testNoOptional(): void {
  let r: RequiredI2 = {a: 1, b: "x"}
}