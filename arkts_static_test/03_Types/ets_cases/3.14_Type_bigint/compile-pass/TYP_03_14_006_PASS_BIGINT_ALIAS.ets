/**
 * @id TYP_03_14_006_PASS_BIGINT_ALIAS
 * @expect compile-pass
 * @section 3.14
 * @design 验证 BigInt 是 bigint 的别名
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let b1: BigInt = 123n
let b2: bigint = b1

function main(): void {
  if (b1 !== 123n) throw new Error("b1 assert failed")
  if (b2 !== 123n) throw new Error("b2 assert failed")
  console.log("verified")
}
