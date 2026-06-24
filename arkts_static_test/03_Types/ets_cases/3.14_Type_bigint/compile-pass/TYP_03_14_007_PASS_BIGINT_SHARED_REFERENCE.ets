/**
 * @id TYP_03_14_007_PASS_BIGINT_SHARED_REFERENCE
 * @expect compile-pass
 * @section 3.14
 * @design 验证 bigint 引用语义（赋值共享）
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let b1: bigint = 123n
let b2: bigint = b1

function main(): void {
  if (b1 !== b2) throw new Error("should be equal")
  console.log("verified")
}
