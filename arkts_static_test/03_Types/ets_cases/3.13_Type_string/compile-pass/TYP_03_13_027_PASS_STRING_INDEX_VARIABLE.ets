/**
 * @id TYP_03_13_027_PASS_STRING_INDEX_VARIABLE
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string 索引表达式使用变量索引是合法的
 * @note 正向用例：string 索引可以使用变量表达式（与 tuple 不同）
 */
function main(): void {
  let s: string = "hello"
  let i: int = 0
  let ch: string = s[i]
  if (ch !== "h") throw new Error("variable index assert failed")
  console.log("verified")
}