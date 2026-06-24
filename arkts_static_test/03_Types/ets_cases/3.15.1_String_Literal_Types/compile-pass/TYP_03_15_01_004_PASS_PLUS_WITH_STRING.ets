/**
 * @id TYP_03_15_01_004_PASS_PLUS_WITH_STRING
 * @expect compile-pass
 * @section 3.15.1
 * @design 验证 string literal type 与 string 运算
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let s0: "hello" = "hello"
let s1: string = " world"
let s2: string = s0 + s1

function main(): void {
  if (s2 !== "hello world") throw new Error("s2 assert failed")
  console.log("verified")
}
