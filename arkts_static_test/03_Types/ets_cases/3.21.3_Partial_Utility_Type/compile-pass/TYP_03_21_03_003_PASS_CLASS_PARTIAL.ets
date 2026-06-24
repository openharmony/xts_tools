/**
 * @id TYP_03_21_03_003_PASS_CLASS_PARTIAL
 * @expect compile-pass
 * @section 3.21.3
 * @design Partial<class> 所有 public 字段变为 optional
 * @note 正向用例：class 的 Partial
 */
class C3 {
  x: int = 0
  y: int = 0
}
type PartialC3 = Partial<C3>

function testClassPartial(): void {
  let p: PartialC3 = {x: 1}
}