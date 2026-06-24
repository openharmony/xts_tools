/**
 * @id TYP_03_17_01_007_RUNTIME_READONLY_TUPLE_BASIC
 * @expect runtime
 * @section 3.17.1
 * @design 验证只读元组基本运行时行为
 * @note 运行时用例：实际执行验证只读元组
 */
function main(): void {
  let tuple: readonly [number, string] = [1, "abc"]

  if (tuple[0] !== 1) throw new Error("tuple[0] should be 1")
  if (tuple[1] !== "abc") throw new Error("tuple[1] should be abc")

  console.log("verified")
}
