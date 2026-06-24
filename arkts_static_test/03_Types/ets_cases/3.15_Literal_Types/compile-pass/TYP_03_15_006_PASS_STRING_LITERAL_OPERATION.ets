/**
 * @id TYP_03_15_006_PASS_STRING_LITERAL_OPERATION
 * @expect compile-pass
 * @section 3.15
 * @design 验证 string literal 操作结果为 string 类型
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let s0: "string literal" = "string literal"
let s1: string = s0 + s0

function main(): void {
  if (s1 !== "string literalstring literal") throw new Error("s1 assert failed")
  console.log("verified")
}
