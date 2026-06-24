/**
 * @id TYP_03_14_008_PASS_BIGINT_AS_PARAM
 * @expect compile-pass
 * @section 3.14
 * @design 验证 bigint 作为函数参数
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function acceptBigInt(b: bigint): bigint {
  return b * 2n
}

function main(): void {
  let result: bigint = acceptBigInt(50n)
  if (result !== 100n) throw new Error("result should be 100")
  console.log("verified")
}
