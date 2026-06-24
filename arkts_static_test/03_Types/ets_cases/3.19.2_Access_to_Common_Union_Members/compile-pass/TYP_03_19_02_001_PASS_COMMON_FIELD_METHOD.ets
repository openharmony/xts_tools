/**
 * @id TYP_03_19_02_001_PASS_COMMON_FIELD_METHOD
 * @expect compile-pass
 * @section 3.19.2
 * @design 联合类型共同字段和方法访问：同名字段同类型、同名方法同签名可访问
 * @note 正向用例：class A|B 中 n 和 foo() 是共同成员
 */
class A1 {
  n: number = 1
  foo(): string { return "A" }
}
class B1 {
  n: number = 2
  foo(): string { return "B" }
}

function testCommonFieldMethod(): void {
  let u: A1 | B1 = new A1()
  let x: number = u.n
  let s: string = u.foo()
}