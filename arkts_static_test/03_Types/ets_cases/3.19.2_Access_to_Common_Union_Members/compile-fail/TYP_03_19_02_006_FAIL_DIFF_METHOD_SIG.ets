/**
 * @id TYP_03_19_02_006_FAIL_DIFF_METHOD_SIG
 * @expect compile-fail
 * @section 3.19.2
 * @design 联合类型同名方法签名不同不可调用
 * @note 反向用例：goo(number) 与 goo() 签名不同
 */
class A6 { goo(n: number): void {} }
class B6 { goo(): void {} }

function testDiffMethodSigFail(): void {
  let u: A6 | B6 = new A6()
  u.goo()
}