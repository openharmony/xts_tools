/**
 * @id TYP_03_16_01_004_PASS_INDEX_ACCESS
 * @expect compile-pass
 * @section 3.16.1
 * @design 验证数组索引访问
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let arr: number[] = [10, 20, 30]

function main(): void {
  let x: number = arr[0]
  arr[1] = 200

  if (x !== 10) throw new Error("x should be 10")
  if (arr[1] !== 200) throw new Error("arr[1] should be 200")
  console.log("verified")
}
