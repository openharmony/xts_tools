/**
 * @id TYP_03_03_011_PASS_STRING_LITERAL_INPLACE
 * @expect compile-pass
 * @section 3.3
 * @design 字符串字面量类型作为就地类型: let l: "xyz" = "xyz"
 * @note 正向用例：验证字符串字面量类型就地使用
 *       注：嵌套函数移到顶层（TYP-002 已知设计问题）
 */
function accept11(s: "yes" | "no"): void {}

function testStringLiteralInplace(): void {
  let l: "xyz" = "xyz"
  let m: "abc" | "def" = "abc"
  m = "def"

  accept11("yes")
  accept11("no")
}