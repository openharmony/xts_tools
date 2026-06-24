/**
 * @id TYP_03_14_022_RUNTIME_BIGINT_ARITHMETIC
 * @expect runtime
 * @section 3.14
 * @design 验证 bigint 算术运算运行时行为
 * @note 运行时用例：实际执行验证 bigint 算术运算
 */
function main(): void {
  let a: bigint = 100n
  let b: bigint = 3n

  if (a + b !== 103n) throw new Error("add failed")
  if (a - b !== 97n) throw new Error("sub failed")
  if (a * b !== 300n) throw new Error("mul failed")
  if (a / b !== 33n) throw new Error("div failed")
  if (a % b !== 1n) throw new Error("mod failed")
  if (-a !== -100n) throw new Error("neg failed")

  console.log("verified")
}
