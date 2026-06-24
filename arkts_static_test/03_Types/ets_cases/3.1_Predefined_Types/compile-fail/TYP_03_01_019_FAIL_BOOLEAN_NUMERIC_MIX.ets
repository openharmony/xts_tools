/**
 * @id TYP_03_01_019_FAIL_BOOLEAN_NUMERIC_MIX
 * @expect compile-fail
 * @section 3.1
 * @design boolean 与数值类型的非法互操作应编译失败: boolean 赋值给 int、boolean 与数值算术运算、boolean 直接作为数值条件
 * @note 反向用例：验证该场景应产生编译时错误
 */
function testBooleanNumericFail(): void {
  let b: boolean = true
  let n: int = b
  let sum: int = b + 1
  let prod: double = b * 3.14
  let diff: int = b - 5

  if (b + 1) {
  }
}