/**
 * @id TYP_03_13_037_PASS_STRING_INDEXING_RETURN_TYPE
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string 索引表达式 s[i] 返回 string 类型（非 char）
 * @note 正向用例：字符串索引结果可赋值给 string 类型变量
 */
function main(): void {
  let s: string = "hello"
  let ch: string = s[0]
  let ch2: string = s[1]
  if (ch !== "h") throw new Error("ch assert failed")
  if (ch2 !== "e") throw new Error("ch2 assert failed")
  console.log("verified")
}