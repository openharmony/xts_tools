/**
 * @id TYP_03_19_01_007_PASS_BASE_DERIVED_NO_CHANGE
 * @expect compile-pass
 * @section 3.19.1
 * @design Base | Derived 不会归一化为 Base，保持不变
 * @note 正向用例：spec 明确 Base | Derived no change
 */
class Base7 {}
class Derived7 extends Base7 {}

type U7 = Base7 | Derived7

function testBaseDerivedNoChange(): void {
  let b: Base7 = new Base7()
  let d: Derived7 = new Derived7()

  let u1: U7 = b
  let u2: U7 = d
}