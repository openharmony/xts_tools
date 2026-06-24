/**
 * @id TYP_03_13_014_PASS_STRING_ITERABLE
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string 是 iterable 类型，可用于 for-of
 * @note 正向用例：string 可被 for-of 遍历逐字符
 */
function main(): void {
  let s: string = "abc"
  let count: int = 0
  for (let c of s) {
    count++
  }
  if (count !== 3) throw new Error("iterable assert failed")
  console.log("verified")
}