/**
 * @id TYP_03_14_027_RUNTIME_BIGINT_FOR_OF
 * @expect runtime
 * @section 3.14
 * @design 验证 bigint 数组可迭代性
 * @note 运行时用例：实际执行验证 bigint 数组遍历
 */
function main(): void {
  let arr: bigint[] = [1n, 2n, 3n, 4n, 5n]
  let sum: bigint = 0n

  for (let b of arr) {
    sum = sum + b
  }

  if (sum !== 15n) throw new Error("sum should be 15")

  console.log("verified")
}
