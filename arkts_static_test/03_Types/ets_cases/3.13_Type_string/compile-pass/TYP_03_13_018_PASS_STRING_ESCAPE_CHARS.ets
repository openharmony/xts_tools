/**
 * @id TYP_03_13_018_PASS_STRING_ESCAPE_CHARS
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string 中的转义字符
 * @note 正向用例：字符串中包含 \n \t \\ \" 等转义字符
 */
function main(): void {
  let s1: string = "line1\nline2"
  let s2: string = "tab\there"
  let s3: string = "quote\"inside"
  let s4: string = "back\\slash"
  console.log("verified")
}