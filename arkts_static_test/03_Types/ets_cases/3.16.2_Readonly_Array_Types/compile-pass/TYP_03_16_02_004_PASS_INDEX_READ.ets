/**
 * @id TYP_03_16_02_004_PASS_INDEX_READ
 * @expect compile-pass
 * @section 3.16.2
 * @design 验证只读数组索引读取
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let arr: readonly number[] = [10, 20, 30]

function main(): void {
  let x: number = arr[0]
  let y: number = arr[2]

  if (x !== 10) throw new Error("x should be 10")
  if (y !== 30) throw new Error("y should be 30")
  console.log("verified")
}
