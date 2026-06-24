/**
 * @id TYP_03_13_028_RUNTIME_STRING_LITERALS
 * @expect runtime
 * @section 3.13
 * @design 验证 string 字面量声明、赋值、比较的运行时行为
 * @note 运行时用例：实际执行验证 string 基本操作
 */
function main(): void {
  let s1: string = "hello"
  let s2: string = ""
  let s3: string = "ArkTS"

  if (s1 !== "hello") throw new Error("s1 assert failed")
  if (s2 !== "") throw new Error("s2 assert failed")
  if (s3 !== "ArkTS") throw new Error("s3 assert failed")

  let s4: string = s1 + " " + s3
  if (s4 !== "hello ArkTS") throw new Error("concat assert failed")

  if (s1.length !== 5) throw new Error("length1 assert failed")
  if (s2.length !== 0) throw new Error("length2 assert failed")
  if (s3.length !== 5) throw new Error("length3 assert failed")

  console.log("verified")
}