/**
 * @id TYP_03_17_013_RUNTIME_TUPLE_AS_TUPLE
 * @expect runtime
 * @section 3.17
 * @design 验证元组作为 Tuple 类型运行时行为
 * @note 运行时用例：实际执行验证元组类型
 */
function main(): void {
  let tuple: [number, string] = [1, "hello"]
  let t: Tuple = tuple

  console.log("verified")
}
