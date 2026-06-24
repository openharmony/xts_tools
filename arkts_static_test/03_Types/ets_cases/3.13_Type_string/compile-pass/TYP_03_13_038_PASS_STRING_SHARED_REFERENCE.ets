/**
 * @id TYP_03_13_038_PASS_STRING_SHARED_REFERENCE
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string 值可被多个引用共享（引用语义）
 * @note 正向用例：赋值同一字符串给两个变量，值共享
 */
function main(): void {
  let s1: string = "hello"
  let s2: string = s1
  if (s1 !== s2) throw new Error("shared reference assert failed")
  if (s1 !== "hello") throw new Error("s1 assert failed")
  if (s2 !== "hello") throw new Error("s2 assert failed")
  console.log("verified")
}