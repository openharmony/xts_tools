/**
 * @id TYP_03_13_006_PASS_STRING_CONCAT
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string + string 连接运算
 * @note 正向用例：字符串拼接产生新 string
 */
let s1: string = "hello"
let s2: string = " "
let s3: string = "world"
let result: string = s1 + s2 + s3

function main(): void {
  if (result !== "hello world") throw new Error("concat assert failed")
  console.log("verified")
}