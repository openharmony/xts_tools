/**
 * @id TYP_03_17_02_006_PASS_READONLY_TUPLE_READ
 * @expect compile-pass
 * @section 3.17.2
 * @design 验证 readonly tuple 可读取元素（spec/types.md:1207-1224）
 * @note 正向用例：readonly tuple 元素可读取但不可修改
 */
function main(): void {
  let x: readonly [number, string] = [1, "abc"]
  let first: number = x[0]
  let second: string = x[1]
  console.log(first.toString())
  console.log(second)
  console.log("verified")
}