/**
 * @id TYP_03_19_01_004_PASS_UNION_STRING_LITERAL_ELIM
 * @expect compile-pass
 * @section 3.19.1
 * @design 字符串字面量消除："325" | string | number → string | number
 * @note 正向用例：验证联合类型中 string 字面量被 string 消除
 */
type BMW_ModelCode = "325" | "530" | "735"
type WithString = BMW_ModelCode | string | number

function main(): void {
  let car_code: WithString = "325"
  car_code = "any string"
  car_code = 42
  console.log("verified")
}