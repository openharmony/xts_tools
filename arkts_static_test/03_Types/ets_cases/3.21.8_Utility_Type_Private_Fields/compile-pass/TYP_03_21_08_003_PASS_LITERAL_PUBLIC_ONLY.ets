/**
 * @id TYP_03_21_08_003_PASS_LITERAL_PUBLIC_ONLY
 * @expect compile-pass
 * @section 3.21.8
 * @design 对象字面量只有 public 字段可赋给 utility 类型
 * @note 正向用例：spec 原例 bar({public_field: 777})
 */
class A3 {
  public_field: int = 444
  private private_field: string = "hello"
}

function testLiteralPublicOnly(): void {
  let ro: Readonly<A3> = {public_field: 777}
}