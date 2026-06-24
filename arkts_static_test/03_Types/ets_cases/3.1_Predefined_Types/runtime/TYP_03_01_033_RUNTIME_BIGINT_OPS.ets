/**
 * @id TYP_03_01_033_RUNTIME_BIGINT_OPS
 * @expect runtime
 * @section 3.1
 * @design bigint 大整数算术运算
 * @note 运行时用例：实际执行验证 bigint 超过 long 范围仍精确
 */
function main(): void {
  let a: bigint = 12345678901234567890n
  let b: bigint = 9876543210987654321n

  let sum: bigint = a + b
  let expected: bigint = 22222222112222222211n
  if (sum != expected) {
    throw new Error("bigint sum mismatch")
  }

  // 验证幂运算
  let two: bigint = 2n
  let pow32: bigint = two ** 32n
  if (pow32 != 4294967296n) {
    throw new Error("2^32 should be 4294967296")
  }

  // 验证负数
  let neg: bigint = -a
  if (neg != -12345678901234567890n) {
    throw new Error("Negation failed")
  }

  console.log("BigInt ops verified")
}