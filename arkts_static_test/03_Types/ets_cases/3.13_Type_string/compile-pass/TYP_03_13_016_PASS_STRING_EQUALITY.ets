/**
 * @id TYP_03_13_016_PASS_STRING_EQUALITY
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string 的 == 和 != 相等比较（值比较）
 * @note 正向用例：string 比较为值比较而非引用比较
 */
function main(): void {
  let s1: string = "hello"
  let s2: string = "hello"
  if (!(s1 === s2)) throw new Error("equality assert failed")
  let s3: string = "world"
  if (!(s1 !== s3)) throw new Error("inequality assert failed")
  console.log("verified")
}