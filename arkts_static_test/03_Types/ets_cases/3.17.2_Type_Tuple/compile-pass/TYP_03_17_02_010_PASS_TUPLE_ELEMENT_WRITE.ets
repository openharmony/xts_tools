/**
 * @id TYP_03_17_02_010_PASS_TUPLE_ELEMENT_WRITE
 * @expect compile-pass
 * @section 3.17.2
 * @design 验证非 readonly 元组元素可修改（spec/types.md:1189）
 * @note 正向用例：非 readonly tuple 的元素可通过索引修改
 */
function main(): void {
  let tuple: [number, string] = [1, "abc"]
  tuple[0] = 42
  tuple[1] = "xyz"
  console.log(tuple[0].toString())
  console.log(tuple[1])
  console.log("verified")
}