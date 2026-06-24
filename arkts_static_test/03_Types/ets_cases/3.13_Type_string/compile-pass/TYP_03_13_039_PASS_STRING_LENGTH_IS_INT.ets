/**
 * @id TYP_03_13_039_PASS_STRING_LENGTH_IS_INT
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string.length 属性返回 int 类型
 * @note 正向用例：string.length 可赋值给 int 变量
 */
function main(): void {
  let s: string = "hello"
  let len: int = s.length
  if (len !== 5) throw new Error("length assert failed")
  let emptyLen: int = "".length
  if (emptyLen !== 0) throw new Error("empty length assert failed")
  console.log("verified")
}