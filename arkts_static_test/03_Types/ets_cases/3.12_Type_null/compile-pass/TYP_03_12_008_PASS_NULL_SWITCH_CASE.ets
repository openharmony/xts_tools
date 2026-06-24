/**
 * @id TYP_03_12_008_PASS_NULL_SWITCH_CASE
 * @expect compile-pass
 * @section 3.12
 * @design null 在 switch 语句中作为 case 匹配值
 * @note 正向用例：验证 null 可以作为 switch-case 的匹配值
 */
function testNullSwitchCase(): void {
  let x: string | null = null
  switch (x) {
    case null:
      break
    default:
      break
  }
}