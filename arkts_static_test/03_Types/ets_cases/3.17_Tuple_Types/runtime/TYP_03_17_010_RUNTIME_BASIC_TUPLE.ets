/**
 * @id TYP_03_17_010_RUNTIME_BASIC_TUPLE
 * @expect runtime
 * @section 3.17
 * @design 验证基本元组运行时行为
 * @note 运行时用例：实际执行验证元组
 */
function main(): void {
  let tuple: [number, number, string, boolean, Object] = [6, 7, "abc", true, 42]

  if (tuple[0] !== 6) throw new Error("tuple[0] should be 6")
  if (tuple[1] !== 7) throw new Error("tuple[1] should be 7")
  if (tuple[2] !== "abc") throw new Error("tuple[2] should be abc")
  if (tuple[3] !== true) throw new Error("tuple[3] should be true")
  if (tuple[4] !== 42) throw new Error("tuple[4] should be 42")

  console.log("verified")
}
