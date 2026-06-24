/**
 * @id TYP_03_19_007_PASS_UNION_COMMON_FIELD
 * @expect compile-pass
 * @section 3.19.2
 * @design 联合类型共同成员（同名字段同类型、同名方法同签名）
 * @note 正向用例：验证联合类型中同名字段同类型和同名方法同签名可访问
 */
class A7 {
  n: number = 1
  foo(): void {}
}

class B7 {
  n: number = 2
  foo(): void {}
}

function main(): void {
  let u: A7 | B7 = new A7()
  let x: number = u.n
  u.foo()
  console.log("verified")
}