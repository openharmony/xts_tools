/**
 * @id TYP_03_15_01_002_PASS_ASSIGN_TO_STRING
 * @expect compile-pass
 * @section 3.15.1
 * @design 验证 string literal type 可赋值给 string
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let s0: "string literal" = "string literal"
let s1: string = s0

function main(): void {
  if (s1 !== "string literal") throw new Error("s1 assert failed")
  console.log("verified")
}
