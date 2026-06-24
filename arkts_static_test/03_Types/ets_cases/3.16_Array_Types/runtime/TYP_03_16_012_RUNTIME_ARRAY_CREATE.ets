/**
 * @id TYP_03_16_012_RUNTIME_ARRAY_CREATE
 * @expect runtime
 * @section 3.16
 * @design 验证数组创建和访问运行时行为
 * @note 运行时用例：实际执行验证数组操作
 */
function main(): void {
  let arr: number[] = [10, 20, 30]

  if (arr.length !== 3) throw new Error("length should be 3")
  if (arr[0] !== 10) throw new Error("arr[0] should be 10")
  if (arr[1] !== 20) throw new Error("arr[1] should be 20")
  if (arr[2] !== 30) throw new Error("arr[2] should be 30")

  console.log("verified")
}
