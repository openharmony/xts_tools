/**
 * @id TYP_03_17_01_008_RUNTIME_READONLY_TUPLE_LENGTH
 * @expect runtime
 * @section 3.17.1
 * @design 验证只读元组长度属性运行时行为
 * @note 运行时用例：实际执行验证只读元组长度
 */
function main(): void {
  let tuple: readonly [number, string, boolean] = [1, "hello", true]

  if (tuple.length !== 3) throw new Error("length should be 3")

  console.log("verified")
}
