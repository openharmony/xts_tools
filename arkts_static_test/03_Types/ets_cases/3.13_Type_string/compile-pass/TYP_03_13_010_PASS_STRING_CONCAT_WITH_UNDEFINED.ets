/**
 * @id TYP_03_13_010_PASS_STRING_CONCAT_WITH_UNDEFINED
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string + undefined 隐式转换为 "undefined"
 * @note 正向用例：undefined 在字符串上下文中隐式转换为 "undefined"
 */
let undef: string | undefined = undefined
let result: string = "value: " + undef

function main(): void {
  if (result !== "value: undefined") throw new Error("string+undefined assert failed")
  console.log("verified")
}