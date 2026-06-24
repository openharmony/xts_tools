/**
 * @id TYP_03_21_01_008_PASS_COVARIANT
 * @expect compile-pass
 * @section 3.21.1
 * @design Awaited<T> 协变：T <: U → Awaited<T> <: Awaited<U>
 * @note 正向用例：spec §3.21.1 子类型协变示例
 */
class SuperType { s: int = 0 }
class SubType extends SuperType { t: int = 1 }

function foo<T extends SuperType>(p: Awaited<T>): void {}
function bar<T extends SubType>(p: Awaited<T>): void {
  foo(p)
}

function testCovariant(): void {
  let sub: SubType = new SubType()
  bar(sub)
}