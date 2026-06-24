/**
 * @id TYP_03_21_08_002_FAIL_LITERAL_PRIVATE_FIELD
 * @expect compile-fail
 * @section 3.21.8
 * @design 对象字面量含 private 字段名应编译错误（spec 原例）
 * @note 反向用例
 */
class A2 {
  public_field: int = 444
  private private_field: string = "hello"
}

function testLiteralPrivateFail(): void {
  let ro: Readonly<A2> = {public_field: 777, private_field: ""}
}