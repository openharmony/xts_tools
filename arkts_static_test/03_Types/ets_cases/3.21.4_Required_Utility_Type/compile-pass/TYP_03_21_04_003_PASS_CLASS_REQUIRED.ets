/**
 * @id TYP_03_21_04_003_PASS_CLASS_REQUIRED
 * @expect compile-pass
 * @section 3.21.4
 * @design Required<class> 使 optional 字段变为必填
 * @note 正向用例
 */
class C3 {
  x?: int
  y?: int
}
type RequiredC3 = Required<C3>

function testClassRequired(): void {
  let r: RequiredC3 = {x: 1, y: 2}
}