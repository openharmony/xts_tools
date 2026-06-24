/**
 * @id TYP_03_13_043_FAIL_STRING_LENGTH_REASSIGN
 * @expect compile-fail
 * @section 3.13
 * @design 验证 string.length 不可赋值（只读属性）
 * @note 反向用例：尝试对 string.length 赋值应编译失败
 */
function main(): void {
  let s: string = "hello"
  s.length = 10
}