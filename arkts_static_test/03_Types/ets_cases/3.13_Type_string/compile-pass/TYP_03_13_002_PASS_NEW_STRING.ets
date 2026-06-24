/**
 * @id TYP_03_13_002_PASS_NEW_STRING
 * @expect compile-pass
 * @section 3.13
 * @design 验证 new string 创建空字符串
 * @note 正向用例：验证 new string 语法合法
 */
let a_string = new string

function main(): void {
  if (a_string !== "") throw new Error("new string assert failed")
  console.log("verified")
}