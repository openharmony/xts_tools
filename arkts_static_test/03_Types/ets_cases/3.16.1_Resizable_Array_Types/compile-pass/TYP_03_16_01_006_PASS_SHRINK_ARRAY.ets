/**
 * @id TYP_03_16_01_006_PASS_SHRINK_ARRAY
 * @expect compile-pass
 * @section 3.16.1
 * @design 验证数组长度收缩
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let arr: number[] = [0, 0, 0, 0, 0]

function main(): void {
  arr.length = 3
  if (arr.length !== 3) throw new Error("length should be 3 after shrink")
  console.log("verified")
}
