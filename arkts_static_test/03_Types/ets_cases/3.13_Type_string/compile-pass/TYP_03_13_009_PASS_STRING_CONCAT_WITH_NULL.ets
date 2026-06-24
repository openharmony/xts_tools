/**
 * @id TYP_03_13_009_PASS_STRING_CONCAT_WITH_NULL
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string + null 隐式转换为 "null"
 * @note 正向用例：null 在字符串上下文中隐式转换为 "null"
 */
let nullable: string | null = null
let result: string = "value: " + nullable

function main(): void {
  if (result !== "value: null") throw new Error("string+null assert failed")
  console.log("verified")
}