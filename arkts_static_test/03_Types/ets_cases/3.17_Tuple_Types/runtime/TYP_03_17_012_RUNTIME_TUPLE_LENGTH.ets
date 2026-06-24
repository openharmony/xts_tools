/**
 * @id TYP_03_17_012_RUNTIME_TUPLE_LENGTH
 * @expect runtime
 * @section 3.17
 * @design 验证元组长度属性运行时行为
 * @note 运行时用例：实际执行验证元组长度
 */
function main(): void {
  let tuple: [number, string] = [1, ""]

  if (tuple.length !== 2) throw new Error("length should be 2")

  let tuple2: [number, number, string, boolean] = [1, 2, "abc", true]
  if (tuple2.length !== 4) throw new Error("length should be 4")

  console.log("verified")
}
