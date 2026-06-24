/**
 * @id TYP_03_02_009_PASS_LITERAL_TYPE_STRING
 * @expect compile-pass
 * @section 3.2
 * @design 字符串字面量类型作为类型注解、赋值
 * @note 正向用例：验证字符串字面量类型（ArkTS 唯一支持的字面量类型）
 *       注：嵌套函数和 type alias 移到顶层
 */
type Direction = "up" | "down" | "left" | "right"

function acceptHello(s: "hello"): void {}

function testLiteralString(): void {
  let s1: "hello" = "hello"
  let s2: "world" = "world"

  acceptHello("hello")

  let d: Direction = "up"
  d = "down"
}