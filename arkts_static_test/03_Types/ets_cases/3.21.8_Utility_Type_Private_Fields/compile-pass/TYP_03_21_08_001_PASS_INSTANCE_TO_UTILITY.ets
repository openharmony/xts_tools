/**
 * @id TYP_03_21_08_001_PASS_INSTANCE_TO_UTILITY
 * @expect compile-pass
 * @section 3.21.8
 * @design 原类实例含 private 字段可赋值给 Readonly（spec 原例）
 * @note 正向用例
 */
class A1 {
  public_field: int = 444
  private private_field: string = "hello"
}

function testInstanceToUtility(): void {
  let ro: Readonly<A1> = new A1()
}