/**
 * @id TYP_03_13_041_PASS_STRING_AS_FUNCTION_PARAM
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string 作为函数参数传递（引用语义）
 * @note 正向用例：string 作为参数传入函数，函数内可访问值
 */
function takesString(s: string): int {
  return s.length
}

function main(): void {
  let len: int = takesString("ArkTS")
  if (len !== 5) throw new Error("param assert failed")
  console.log("verified")
}