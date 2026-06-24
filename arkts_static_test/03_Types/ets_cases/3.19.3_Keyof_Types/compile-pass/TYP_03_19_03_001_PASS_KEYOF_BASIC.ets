/**
 * @id TYP_03_19_03_001_PASS_KEYOF_BASIC
 * @expect compile-pass
 * @section 3.19.3
 * @design keyof 类型基本用法：从类成员名构建字符串字面量联合类型
 * @note 正向用例：验证 keyof A 返回 "field" | "method"
 */
class A3 {
  field: number = 0
  method(): void {}
}
type KeysOfA = keyof A3

function testKeyofBasic(): void {
  let key: KeysOfA = "field"
  key = "method"
}