/**
 * @id TYP_03_19_009_FAIL_UNION_DIFF_METHOD_SIG
 * @expect compile-fail
 * @section 3.19.2
 * @design 联合类型同名方法不同签名应产生编译时错误
 * @note 反向用例：验证同名方法不同签名不可调用
 */
class A9 {
  goo(n: number): void {}
}

class B9 {
  goo(): void {}
}

function main(): void {
  let u: A9 | B9 = new A9()
  u.goo()
}