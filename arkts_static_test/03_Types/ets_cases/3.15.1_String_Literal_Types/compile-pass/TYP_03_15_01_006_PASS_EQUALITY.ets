/**
 * @id TYP_03_15_01_006_PASS_EQUALITY
 * @expect compile-pass
 * @section 3.15.1
 * @design 验证 string literal type 相等比较
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let s0: "hello" = "hello"
let s1: "hello" = "hello"

function main(): void {
  if (s0 !== s1) throw new Error("s0 should equal s1")
  if (!(s0 === s1)) throw new Error("s0 should strictly equal s1")
  console.log("verified")
}
