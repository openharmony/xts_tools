/**
 * @id TYP_03_13_024_PASS_STRING_NUMBER_PLUS_STRING
 * @expect compile-pass
 * @section 3.13
 * @design 验证 number + string 表达式在字符串上下文中隐式转换
 * @note 正向用例：number + string 产生 string 类型（隐式数值转字符串）
 */
let n: int = 42
let s: string = n + " hello"

function main(): void {
  if (s !== "42 hello") throw new Error("number + string concat failed")
  console.log("verified")
}