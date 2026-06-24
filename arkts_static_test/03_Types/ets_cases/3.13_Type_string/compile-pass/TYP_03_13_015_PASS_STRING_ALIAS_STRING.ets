/**
 * @id TYP_03_13_015_PASS_STRING_ALIAS_STRING
 * @expect compile-pass
 * @section 3.13
 * @design 验证 String 是 string 的别名
 * @note 正向用例：String 与 string 行为一致
 */
let s1: string = "hello"
let s2: String = "world"

function main(): void {
  if (s1 !== "hello") throw new Error("string alias failed")
  if (s2 !== "world") throw new Error("String alias failed")
  console.log("verified")
}