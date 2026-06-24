/**
 * @id TYP_03_01_036_PASS_CHAR_OPERATIONS
 * @expect compile-pass
 * @section 3.1
 * @design char 类型关系运算（与 Java 不同：ArkTS char 不允许直接 widening 到 int/long）
 * @note 正向用例：验证 char 的合法操作（关系运算和相等性）
 *       设计差异：Java 中 char→int 是 widening，ArkTS 禁止隐式
 */
function testCharOps(): void {
  let a: char = c'a'
  let b: char = c'b'

  // 关系运算
  let cmp1: boolean = a < b
  let cmp2: boolean = a == b
  let cmp3: boolean = a != b
  let cmp4: boolean = a <= b
  let cmp5: boolean = a >= b
  let cmp6: boolean = a > b
}