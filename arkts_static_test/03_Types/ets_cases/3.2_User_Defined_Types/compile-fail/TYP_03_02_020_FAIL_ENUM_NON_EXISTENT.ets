/**
 * @id TYP_03_02_020_FAIL_ENUM_NON_EXISTENT
 * @expect compile-fail
 * @section 3.2
 * @design 访问枚举中不存在的成员应编译失败
 * @note 反向用例：验证该场景应产生编译时错误
 */
enum Color {
  Red,
  Green,
  Blue
}

function testEnumNonExistentFail(): void {
  let c: Color = Color.Yellow
}