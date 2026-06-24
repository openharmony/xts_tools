/**
 * @id TYP_03_19_002_PASS_UNION_ENUM
 * @expect compile-pass
 * @section 3.19
 * @design 枚举类型在联合类型中
 * @note 正向用例：验证 string | StringEnum 联合类型归一化为 string
 */
enum StringEnum { One = "One", Two = "Two" }
type Union1 = string | StringEnum

function main(): void {
  let u: Union1 = "hello"
  u = StringEnum.One
  console.log("verified")
}