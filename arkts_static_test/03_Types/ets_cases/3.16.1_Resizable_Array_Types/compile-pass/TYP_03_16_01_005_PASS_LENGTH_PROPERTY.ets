/**
 * @id TYP_03_16_01_005_PASS_LENGTH_PROPERTY
 * @expect compile-pass
 * @section 3.16.1
 * @design 验证数组 length 属性
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let arr: number[] = [1, 2, 3, 4, 5]

function main(): void {
  let len: int = arr.length
  if (len !== 5) throw new Error("length should be 5")
  console.log("verified")
}
