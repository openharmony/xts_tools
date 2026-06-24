/**
 * @id TYP_03_17_02_024_RUNTIME_TUPLE_LENGTH
 * @expect runtime
 * @section 3.17.2
 * @design 验证 tuple.length 运行时行为（spec/types.md:1192-1200）
 * @note 运行时用例：验证 length 属性返回正确元素数量
 */
function main(): void {
  let tuple: [number, string] = [1, ""]
  if (tuple.length !== 2) throw new Error("tuple length should be 2")

  let single: [number] = [42]
  if (single.length !== 1) throw new Error("single length should be 1")

  let empty: [] = []
  if (empty.length !== 0) throw new Error("empty length should be 0")

  let triple: [number, number, number] = [1, 2, 3]
  if (triple.length !== 3) throw new Error("triple length should be 3")

  console.log("verified")
}