/**
 * @id TYP_03_15_01_013_RUNTIME_COMPARISON
 * @expect runtime
 * @section 3.15.1
 * @design 验证 string literal type 比较运算
 * @note 运行时用例：实际执行验证比较结果
 */
function main(): void {
  let s0: "hello" = "hello"
  let s1: "hello" = "hello"
  let s2: "world" = "world"

  if (s0 !== s1) throw new Error("s0 should equal s1")
  if (s0 === s2) throw new Error("s0 should not equal s2")
  if (!(s0 < s2)) throw new Error("hello should be less than world")

  console.log("verified")
}
