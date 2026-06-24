/**
 * @id TYP_03_20_004_PASS_DERIVED_TO_NULLISH_BASE
 * @expect compile-pass
 * @section 3.20
 * @design 派生类值可赋给 Base|null / Base|undefined
 * @note 正向用例：T 及其派生类型均可放入 nullish T
 */
class Base4 {}
class Derived4 extends Base4 {}

function testDerivedToNullishBase(): void {
  let a: Base4 | null = new Base4()
  a = new Derived4()
  a = null

  let b: Base4 | undefined = new Derived4()
  b = undefined
}