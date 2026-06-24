/**
 * @id TYP_03_19_02_008_FAIL_OVERLOAD_COMMON
 * @expect compile-fail
 * @section 3.19.2
 * @design 任一 Ti 中成员 m 是 overload 声明时，访问 u.m 应编译失败
 * @note 反向用例：C8 中 foo 是 explicit overload，D8 中 foo 是普通方法
 */
class C8 {
  foo1(a: number): void {}
  foo2(a: string): void {}
  overload foo { foo1, foo2 }
}
class D8 {
  foo(a: number): void {}
  foo2(a: string): void {}
}

function testOverloadFail(x: C8 | D8): void {
  x.foo(1.0)
}