/**
 * @id TYP_03_16_01_003_PASS_SYNTAX_EQUIVALENCE
 * @expect compile-pass
 * @section 3.16.1
 * @design 验证 T[] 和 Array<T> 是相同类型
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let arr1: number[] = [1, 2, 3]
let arr2: Array<number> = arr1

function main(): void {
  if (arr1 !== arr2) throw new Error("should be same array")
  if (arr1.length !== arr2.length) throw new Error("length should be equal")
  console.log("verified")
}
