/**
 * @id TYP_03_17_02_020_RUNTIME_INSTANCEOF_TUPLE
 * @expect runtime
 * @section 3.17.2
 * @design 验证 instanceof Tuple 运行时行为（spec/types.md:1269-1270）
 * @note 运行时用例：验证元组 instanceof Tuple 为 true，非元组为 false
 */
function main(): void {
  let pair: [number, string] = [1, "abc"]
  if (!(pair instanceof Tuple)) throw new Error("pair should be Tuple")

  let obj: Object = new Object()
  if (obj instanceof Tuple) throw new Error("plain Object should not be Tuple")

  console.log("verified")
}