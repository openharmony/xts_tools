/**
 * @id TYP_03_21_03_002_PASS_COVARIANT
 * @expect compile-pass
 * @section 3.21.3
 * @design U <: T ⇒ Partial<U> <: Partial<T>
 * @note 正向用例：子类型协变
 */
interface Super2 { name: string }
interface Sub2 extends Super2 { extra: int }

function testCovariant(): void {
  let pSub: Partial<Sub2> = {name: "s", extra: 1}
  let pSuper: Partial<Super2> = pSub
}