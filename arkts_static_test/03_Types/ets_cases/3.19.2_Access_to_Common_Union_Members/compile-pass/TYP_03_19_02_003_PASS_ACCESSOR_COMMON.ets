/**
 * @id TYP_03_19_02_003_PASS_ACCESSOR_COMMON
 * @expect compile-pass
 * @section 3.19.2
 * @design 同名同签名 accessor 可作为共同成员访问
 * @note 正向用例：get value(): int 在两个类中签名相同
 */
class A3 {
  private v: int = 1
  get value(): int { return this.v }
}
class B3 {
  private v: int = 2
  get value(): int { return this.v }
}

function testAccessorCommon(): void {
  let u: A3 | B3 = new A3()
  let x: int = u.value
}