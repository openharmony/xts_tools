/**
 * @id TYP_03_21_05_003_PASS_COVARIANT
 * @expect compile-pass
 * @section 3.21.5
 * @design U <: T ⇒ Readonly<U> <: Readonly<T>
 * @note 正向用例：子类型协变
 */
interface Super3 { name: string }
interface Sub3 extends Super3 { name: string }

function testCovariant(): void {
  let rSub: Readonly<Sub3> = {name: "s"}
  let rSuper: Readonly<Super3> = rSub
}