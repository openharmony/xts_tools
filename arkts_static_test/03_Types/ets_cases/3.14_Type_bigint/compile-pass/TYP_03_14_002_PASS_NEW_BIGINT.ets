/**
 * @id TYP_03_14_002_PASS_NEW_BIGINT
 * @expect compile-pass
 * @section 3.14
 * @design 验证 new bigint 创建默认值 0
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let b1: bigint = new bigint
let b2: bigint = new BigInt(5)

function main(): void {
  if (b1 !== 0n) throw new Error("b1 should be 0")
  if (b2 !== 5n) throw new Error("b2 should be 5")
  console.log("verified")
}
