/**
 * @id TYP_03_13_017_PASS_STRING_RELATIONAL
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string 的关系运算符 < > <= >=（字典序比较）
 * @note 正向用例：字符串按字典序比较
 */
function main(): void {
  if (!("abc" < "abd")) throw new Error("lt assert failed")
  if (!("abd" > "abc")) throw new Error("gt assert failed")
  if (!("abc" <= "abc")) throw new Error("le assert failed")
  if (!("abd" >= "abc")) throw new Error("ge assert failed")
  console.log("verified")
}