/**
 * @id TYP_03_06_02_021_RUNTIME_STRING_CONCAT_DECIMAL
 * @expect runtime
 * @section 3.6.2
 * @design 字符串拼接整数转 decimal 形式（spec 明确）
 * @note 运行时用例：integer + string 结果验证
 */
function main(): void {
  let i: int = 42
  let s1: string = "value=" + i
  if (s1 != "value=42") {
    throw new Error("int concat failed: " + s1)
  }

  let neg: int = -100
  let s2: string = "n=" + neg
  if (s2 != "n=-100") {
    throw new Error("negative int concat failed: " + s2)
  }

  let lo: long = 1234567890
  let s3: string = "long=" + lo
  if (s3 != "long=1234567890") {
    throw new Error("long concat failed: " + s3)
  }

  // 表达式拼接
  let s4: string = "result=" + (10 + 20)
  if (s4 != "result=30") {
    throw new Error("expr concat failed: " + s4)
  }

  console.log("String concat decimal verified")
}