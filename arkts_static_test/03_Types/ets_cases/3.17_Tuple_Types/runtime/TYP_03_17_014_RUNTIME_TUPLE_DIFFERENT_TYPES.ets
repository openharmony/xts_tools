/**
 * @id TYP_03_17_014_RUNTIME_TUPLE_DIFFERENT_TYPES
 * @expect runtime
 * @section 3.17
 * @design 验证元组包含不同类型元素运行时行为
 * @note 运行时用例：实际执行验证不同类型元组
 */
function main(): void {
  let tuple: [number, string, boolean, int] = [1, "hello", true, 42]

  if (tuple[0] !== 1) throw new Error("tuple[0] should be 1")
  if (tuple[1] !== "hello") throw new Error("tuple[1] should be hello")
  if (tuple[2] !== true) throw new Error("tuple[2] should be true")
  if (tuple[3] !== 42) throw new Error("tuple[3] should be 42")

  console.log("verified")
}
