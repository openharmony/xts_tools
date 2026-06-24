/**
 * @id TYP_03_17_02_019_RUNTIME_EMPTY_TUPLE
 * @expect runtime
 * @section 3.17.2
 * @design 验证空元组运行时等同于 Tuple（spec/types.md:1240-1245）
 * @note 运行时用例：空元组 instanceof Tuple 应为 true
 */
function main(): void {
  let empty: [] = []
  if (!(empty instanceof Tuple)) throw new Error("empty should be Tuple")
  if (empty.length !== 0) throw new Error("empty length should be 0")
  console.log("verified")
}