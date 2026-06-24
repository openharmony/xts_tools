/**
 * @id TYP_03_06_04_014_RUNTIME_STRING_CONCAT
 * @expect runtime
 * @section 3.6.4
 * @design boolean + string 拼接生成 "true"/"false"
 * @note 运行时用例：拼接结果验证
 */
function main(): void {
  let s1: string = "flag=" + true
  if (s1 != "flag=true") {
    throw new Error("true concat failed: " + s1)
  }

  let s2: string = "flag=" + false
  if (s2 != "flag=false") {
    throw new Error("false concat failed: " + s2)
  }

  let s3: string = (1 < 2) + " result"
  if (s3 != "true result") {
    throw new Error("expr concat failed: " + s3)
  }

  console.log("Boolean string concat verified")
}