/**
 * @id TYP_03_16_004_PASS_ARRAY_ITERABLE
 * @expect compile-pass
 * @section 3.16
 * @design 验证数组可迭代
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let arr: number[] = [1, 2, 3]

function main(): void {
  let sum: number = 0
  for (let n of arr) {
    sum = sum + n
  }
  if (sum !== 6) throw new Error("sum should be 6")
  console.log("verified")
}
