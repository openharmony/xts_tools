/**
 * @id TYP_03_16_016_RUNTIME_EMPTY_ARRAY
 * @expect runtime
 * @section 3.16
 * @design 验证空数组运行时行为
 * @note 运行时用例：实际执行验证空数组操作
 */
function main(): void {
  let arr: number[] = []

  if (arr.length !== 0) throw new Error("length should be 0")

  arr.push(1)
  if (arr.length !== 1) throw new Error("length should be 1 after push")
  if (arr[0] !== 1) throw new Error("arr[0] should be 1")

  console.log("verified")
}
