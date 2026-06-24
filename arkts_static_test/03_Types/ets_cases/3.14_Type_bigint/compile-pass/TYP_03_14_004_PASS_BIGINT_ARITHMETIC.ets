/**
 * @id TYP_03_14_004_PASS_BIGINT_ARITHMETIC
 * @expect compile-pass
 * @section 3.14
 * @design 验证 bigint 算术运算
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let a: bigint = 100n
let b: bigint = 3n

function main(): void {
  if (a + b !== 103n) throw new Error("add failed")
  if (a - b !== 97n) throw new Error("sub failed")
  if (a * b !== 300n) throw new Error("mul failed")
  if (a / b !== 33n) throw new Error("div failed")
  if (a % b !== 1n) throw new Error("mod failed")
  if (-a !== -100n) throw new Error("neg failed")
  console.log("verified")
}
