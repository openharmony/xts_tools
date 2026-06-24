/**
 * @id TYP_03_13_032_RUNTIME_STRING_FOR_OF_ITERABLE
 * @expect runtime
 * @section 3.13
 * @design 验证 string 是 iterable 类型，for-of 逐字符遍历
 * @note 运行时用例：验证 for-of 遍历 string 产生每个字符
 */
function main(): void {
  let s: string = "abc"
  let result: string = ""
  for (let c of s) {
    result = result + c
  }
  if (result !== "abc") throw new Error("for-of assert failed")

  let empty: string = ""
  let count: int = 0
  for (let c of empty) {
    count++
  }
  if (count !== 0) throw new Error("empty for-of failed")

  console.log("verified")
}