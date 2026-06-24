/**
 * @id TYP_03_02_019_FAIL_LITERAL_TYPE_ASSIGN
 * @expect compile-fail
 * @section 3.2
 * @design 字面量类型赋值不匹配值应编译失败: "hello" 类型不能赋值 "world"
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testLiteralTypeAssignFail(): void {
  let s: "hello" = "world"
  let n: 42 = 43
  let t: true = false

  function acceptOne(x: 1): void {}
  acceptOne(2)
}