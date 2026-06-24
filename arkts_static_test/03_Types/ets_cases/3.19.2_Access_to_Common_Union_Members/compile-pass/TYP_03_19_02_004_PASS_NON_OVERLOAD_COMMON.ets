/**
 * @id TYP_03_19_02_004_PASS_NON_OVERLOAD_COMMON
 * @expect compile-pass
 * @section 3.19.2
 * @design 如果同名成员不是 overload，且签名相同，则可访问
 * @note 正向用例：foo2 在两个类中均是普通方法且签名相同
 */
class C4 {
  foo1(a: number): void {}
  foo2(a: string): string { return a }
}
class D4 {
  foo(a: number): void {}
  foo2(a: string): string { return a }
}

function testCommonFoo2(x: C4 | D4): void {
  let r: string = x.foo2("aa")
}