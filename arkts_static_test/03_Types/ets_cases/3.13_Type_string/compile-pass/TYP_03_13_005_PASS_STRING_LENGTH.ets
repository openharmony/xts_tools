/**
 * @id TYP_03_13_005_PASS_STRING_LENGTH
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string.length 属性返回 int 类型
 * @note 正向用例：string.length 返回非负整数
 */
let s: string = "hello"
let len: int = s.length

function main(): void {
  if (len !== 5) throw new Error("length assert failed")
  let empty_len: int = "".length
  if (empty_len !== 0) throw new Error("empty length assert failed")
  console.log("verified")
}