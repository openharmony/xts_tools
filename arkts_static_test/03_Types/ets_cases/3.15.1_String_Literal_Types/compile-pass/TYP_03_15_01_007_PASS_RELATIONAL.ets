/**
 * @id TYP_03_15_01_007_PASS_RELATIONAL
 * @expect compile-pass
 * @section 3.15.1
 * @design 验证 string literal type 关系比较
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let s0: "apple" = "apple"
let s1: "banana" = "banana"

function main(): void {
  if (!(s0 < s1)) throw new Error("apple should be less than banana")
  if (s0 > s1) throw new Error("apple should not be greater than banana")
  console.log("verified")
}
