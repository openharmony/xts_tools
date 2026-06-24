/**
 * @id TYP_03_15_001_PASS_STRING_LITERAL_TYPE
 * @expect compile-pass
 * @section 3.15
 * @design 验证字符串字面量类型声明与赋值
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let a: "string literal" = "string literal"

function main(): void {
  if (a !== "string literal") throw new Error("a assert failed")
  console.log("verified")
}
