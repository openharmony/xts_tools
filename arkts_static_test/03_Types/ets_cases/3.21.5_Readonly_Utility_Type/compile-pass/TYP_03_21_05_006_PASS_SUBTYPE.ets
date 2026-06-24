/**
 * @id TYP_03_21_05_006_PASS_SUBTYPE
 * @expect compile-pass
 * @section 3.21.5
 * @design T <: Readonly<T>
 * @note 正向用例：子类型关系
 */
interface I6 {
  x: int
  y: int
}
type R6 = Readonly<I6>

function testSubtype(): void {
  let r1: R6 = {x: 1, y: 2}
  let r2: I6 = {x: 3, y: 4}
  let r3: R6 = r2
}