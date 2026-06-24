/**
 * @id TYP_03_16_013_RUNTIME_ARRAY_ITERABLE
 * @expect runtime
 * @section 3.16
 * @design 验证数组可迭代运行时行为
 * @note 运行时用例：实际执行验证数组遍历
 */
function main(): void {
  let arr: number[] = [1, 2, 3, 4, 5]
  let sum: number = 0

  for (let n of arr) {
    sum = sum + n
  }

  if (sum !== 15) throw new Error("sum should be 15")

  console.log("verified")
}
