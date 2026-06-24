/**
 * @id TYP_03_21_08_006_FAIL_OBJECT_LITERAL_PRIVATE_FIELD
 * @expect compile-fail
 * @section 3.21.8
 * @design Utility type object literal 不可包含 private 字段名
 * @note 反向用例：spec 原例 private_field 是 incorrect field name
 */
class PrivateFieldA6 {
  public_field: int = 1
  private private_field: string = "hidden"
}
function acceptReadonlyA6(value: Readonly<PrivateFieldA6>): void {}
function testObjectLiteralPrivateFieldFail(): void {
  acceptReadonlyA6({ public_field: 777, private_field: "" })
}
