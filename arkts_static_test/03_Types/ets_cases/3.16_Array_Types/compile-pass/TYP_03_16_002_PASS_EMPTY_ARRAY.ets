/**
 * @id TYP_03_16_002_PASS_EMPTY_ARRAY
 * @expect compile-pass
 * @section 3.16
 * @design 验证空数组声明
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let arr1: number[] = []
let arr2: string[] = []

function main(): void {
  if (arr1.length !== 0) throw new Error("arr1 should be empty")
  if (arr2.length !== 0) throw new Error("arr2 should be empty")
  console.log("verified")
}
