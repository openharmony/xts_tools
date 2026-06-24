/**
 * @id TYP_03_14_021_RUNTIME_NEW_BIGINT
 * @expect runtime
 * @section 3.14
 * @design 验证 new bigint 创建默认值 0
 * @note 运行时用例：实际执行验证 new bigint 行为
 */
function main(): void {
  let b1: bigint = new bigint
  if (b1 !== 0n) throw new Error("new bigint should be 0")

  let b2: bigint = new BigInt(5)
  if (b2 !== 5n) throw new Error("new BigInt(5) should be 5")

  console.log("verified")
}
