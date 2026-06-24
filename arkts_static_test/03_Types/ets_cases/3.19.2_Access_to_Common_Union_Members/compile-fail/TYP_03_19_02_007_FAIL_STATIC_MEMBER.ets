/**
 * @id TYP_03_19_02_007_FAIL_STATIC_MEMBER
 * @expect compile-fail
 * @section 3.19.2
 * @design 静态成员不是 non-static common member，不可通过 union type alias 访问
 * @note 反向用例：AB.foo() 是静态方法访问，应报错
 */
class A7 { static foo(): void {} }
class B7 { static foo(): void {} }

type AB7 = A7 | B7

function testStaticFail(): void {
  AB7.foo()
}