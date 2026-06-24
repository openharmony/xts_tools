/**
 * @id TYP_03_19_004_PASS_UNION_FUNCTION_PARAM
 * @expect compile-pass
 * @section 3.19
 * @design 联合类型作为函数参数和返回值
 * @note 正向用例：验证联合类型在函数签名中的使用（避免联合类型直接参与二元运算）
 */
type StringOrNumber = string | number

function process(value: StringOrNumber): StringOrNumber {
  return value
}

function main(): void {
  let result1: StringOrNumber = process("hello")
  let result2: StringOrNumber = process(42)
  console.log("verified")
}