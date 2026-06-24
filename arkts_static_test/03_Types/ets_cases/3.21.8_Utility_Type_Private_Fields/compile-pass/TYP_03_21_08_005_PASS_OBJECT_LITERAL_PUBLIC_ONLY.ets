/**
 * @id TYP_03_21_08_005_PASS_OBJECT_LITERAL_PUBLIC_ONLY
 * @expect compile-pass
 * @section 3.21.8
 * @design Utility type object literal 只允许公开字段
 * @note 正向用例：Readonly<A> object literal 可只包含 public_field
 */
class PrivateFieldA5 {
  public_field: int = 1
  private private_field: string = "hidden"
}
function acceptReadonlyA5(value: Readonly<PrivateFieldA5>): void {}
function testObjectLiteralPublicOnly(): void {
  acceptReadonlyA5({ public_field: 777 })
}
