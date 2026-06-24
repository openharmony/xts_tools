/**
 * @id TYP_03_13_031_RUNTIME_STRING_INDEXING
 * @expect runtime
 * @section 3.13
 * @design 验证 string 索引表达式返回单字符 string
 * @note 运行时用例：验证 s[i] 返回 string 类型
 */
function main(): void {
  let s: string = "hello"
  let ch0: string = s[0]
  let ch4: string = s[4]

  if (ch0 !== "h") throw new Error("index 0 assert failed")
  if (ch4 !== "o") throw new Error("index 4 assert failed")

  let empty: string = ""
  if (empty.length !== 0) throw new Error("empty length failed")

  let single: string = "x"
  if (single.length !== 1) throw new Error("single length failed")
  let singleCh: string = single[0]
  if (singleCh !== "x") throw new Error("single char failed")

  console.log("verified")
}