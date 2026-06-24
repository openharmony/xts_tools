/**
 * @id TYP_03_13_007_PASS_STRING_CONCAT_WITH_NUMBER
 * @expect compile-pass
 * @section 3.13
 * @design 验证 string + number 隐式转换为 string
 * @note 正向用例：数值在字符串上下文中隐式转换为 string
 */
let n: int = 42
let result: string = "value: " + n

function main(): void {
  if (result !== "value: 42") throw new Error("string+int assert failed")
  let d: double = 3.14
  let r2: string = "pi=" + d
  console.log("verified")
}