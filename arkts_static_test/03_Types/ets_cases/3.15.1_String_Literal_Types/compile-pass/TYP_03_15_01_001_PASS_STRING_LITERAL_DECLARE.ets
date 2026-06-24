/**
 * @id TYP_03_15_01_001_PASS_STRING_LITERAL_DECLARE
 * @expect compile-pass
 * @section 3.15.1
 * @design 验证 string literal type 声明与赋值
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let s0: "string literal" = "string literal"

function main(): void {
  if (s0 !== "string literal") throw new Error("s0 assert failed")
  console.log("verified")
}
