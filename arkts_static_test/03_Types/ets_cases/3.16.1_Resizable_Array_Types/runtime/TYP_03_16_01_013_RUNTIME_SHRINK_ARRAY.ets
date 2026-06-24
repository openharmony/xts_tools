/**
 * @id TYP_03_16_01_013_RUNTIME_SHRINK_ARRAY
 * @expect runtime
 * @section 3.16.1
 * @design 验证数组长度收缩运行时行为
 * @note 运行时用例：实际执行验证数组收缩
 */
function main(): void {
  let arr: number[] = [0, 0, 0, 0, 0]

  if (arr.length !== 5) throw new Error("initial length should be 5")

  arr.length = 3
  if (arr.length !== 3) throw new Error("length should be 3 after shrink")

  console.log("verified")
}
