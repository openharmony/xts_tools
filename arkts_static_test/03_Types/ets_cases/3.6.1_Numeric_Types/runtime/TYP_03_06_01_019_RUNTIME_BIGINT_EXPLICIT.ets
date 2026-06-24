/**
 * @id TYP_03_06_01_019_RUNTIME_BIGINT_EXPLICIT
 * @expect runtime
 * @section 3.6.1
 * @design BigInt() 显式转换运行时验证
 * @note 运行时用例：BigInt(long) 和 BigInt(string) 正确转换
 */
function main(): void {
  let l: long = 12345
  let big1: bigint = BigInt(l)
  if (big1 != 12345n) {
    throw new Error("BigInt(long) failed")
  }

  let big2: bigint = BigInt("99999999999999999999")
  let expected: bigint = 99999999999999999999n
  if (big2 != expected) {
    throw new Error("BigInt(string) failed")
  }

  // bigint 算术
  let big3: bigint = big2 + 1n
  let expected2: bigint = 100000000000000000000n
  if (big3 != expected2) {
    throw new Error("bigint arithmetic failed")
  }

  console.log("BigInt explicit conversion verified")
}