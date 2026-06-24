/**
 * @id TYP_03_16_001_PASS_RESIZABLE_ARRAY
 * @expect compile-pass
 * @section 3.16
 * @design 验证 Resizable Array 声明与初始化
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let arr1: number[] = [1, 2, 3]
let arr2: Array<number> = [4, 5, 6]
let arr3: string[] = ["a", "b", "c"]

function main(): void {
  if (arr1.length !== 3) throw new Error("arr1 length assert failed")
  if (arr2.length !== 3) throw new Error("arr2 length assert failed")
  if (arr3.length !== 3) throw new Error("arr3 length assert failed")
  console.log("verified")
}
