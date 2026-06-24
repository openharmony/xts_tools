/**
 * @id TYP_03_16_01_014_RUNTIME_INDEX_ACCESS
 * @expect runtime
 * @section 3.16.1
 * @design 验证数组索引访问运行时行为
 * @note 运行时用例：实际执行验证索引访问
 */
function main(): void {
  let arr: number[] = [10, 20, 30]

  arr[1] = 200
  if (arr[0] !== 10) throw new Error("arr[0] should be 10")
  if (arr[1] !== 200) throw new Error("arr[1] should be 200")
  if (arr[2] !== 30) throw new Error("arr[2] should be 30")

  console.log("verified")
}
