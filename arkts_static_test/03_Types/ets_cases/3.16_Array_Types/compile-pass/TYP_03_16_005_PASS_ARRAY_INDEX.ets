/**
 * @id TYP_03_16_005_PASS_ARRAY_INDEX
 * @expect compile-pass
 * @section 3.16
 * @design 验证数组索引访问
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let arr: number[] = [10, 20, 30]

function main(): void {
  if (arr[0] !== 10) throw new Error("arr[0] should be 10")
  if (arr[1] !== 20) throw new Error("arr[1] should be 20")
  if (arr[2] !== 30) throw new Error("arr[2] should be 30")
  console.log("verified")
}
