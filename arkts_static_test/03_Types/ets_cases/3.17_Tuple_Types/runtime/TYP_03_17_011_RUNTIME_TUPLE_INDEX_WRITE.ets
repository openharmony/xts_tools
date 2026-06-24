/**
 * @id TYP_03_17_011_RUNTIME_TUPLE_INDEX_WRITE
 * @expect runtime
 * @section 3.17
 * @design 验证元组元素修改运行时行为
 * @note 运行时用例：实际执行验证元组元素修改
 */
function main(): void {
  let tuple: [number, string] = [1, "hello"]

  tuple[0] = 42
  if (tuple[0] !== 42) throw new Error("tuple[0] should be 42")

  tuple[1] = "world"
  if (tuple[1] !== "world") throw new Error("tuple[1] should be world")

  console.log("verified")
}
