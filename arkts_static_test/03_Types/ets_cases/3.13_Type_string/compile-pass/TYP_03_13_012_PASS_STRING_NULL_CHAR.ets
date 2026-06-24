/**
 * @id TYP_03_13_012_PASS_STRING_NULL_CHAR
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string 可包含 \0 字符（不是终止符）
 * @note 正向用例：\0 是普通字符，length 包含它
 */
let s: string = "a\0b"

function main(): void {
  if (s.length !== 3) throw new Error("null char length assert failed")
  console.log("verified")
}