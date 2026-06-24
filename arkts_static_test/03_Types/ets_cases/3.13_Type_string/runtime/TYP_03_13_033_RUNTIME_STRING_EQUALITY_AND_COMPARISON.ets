/**
 * @id TYP_03_13_033_RUNTIME_STRING_EQUALITY_AND_COMPARISON
 * @expect runtime
 * @section 3.13
 * @design 验证 string 的 ==、!=、<、>、<=、>= 比较
 * @note 运行时用例：验证 string 比较为值比较（字典序）
 */
function main(): void {
  let s1: string = "abc"
  let s2: string = "abc"
  let s3: string = "abd"
  let s4: string = "abb"

  if (!(s1 === s2)) throw new Error("=== assert failed")
  if (!(s1 !== s3)) throw new Error("!== assert failed")
  if (!(s1 < s3)) throw new Error("< assert failed")
  if (!(s3 > s1)) throw new Error("> assert failed")
  if (!(s1 <= s2)) throw new Error("<= assert failed")
  if (!(s3 >= s1)) throw new Error(">= assert failed")
  if (!(s4 < s1)) throw new Error("abb < abc failed")

  console.log("verified")
}