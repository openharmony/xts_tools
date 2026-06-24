/**
 * @id TYP_03_13_044_RUNTIME_STRING_INDEXING_RETURN_TYPE
 * @expect runtime
 * @section 3.13
 * @design 验证 string 索引表达式 s[i] 返回 string 类型（非 char），运行时验证值
 * @note 运行时用例：验证索引表达式返回值为单字符 string
 */
function main(): void {
  let s: string = "hello"
  let ch0: string = s[0]
  let ch4: string = s[4]

  if (ch0 !== "h") throw new Error("index 0 assert failed, got: " + ch0)
  if (ch4 !== "o") throw new Error("index 4 assert failed, got: " + ch4)

  let empty: string = ""
  let multi: string = "abc"
  if (multi[0] !== "a") throw new Error("multi index 0 failed")
  if (multi[1] !== "b") throw new Error("multi index 1 failed")
  if (multi[2] !== "c") throw new Error("multi index 2 failed")

  console.log("TYP_03_13_044 verified")
}