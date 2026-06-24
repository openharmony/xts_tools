/**
 * @id TYP_03_17_02_018_RUNTIME_TUPLE_AS_TUPLE_TYPE
 * @expect runtime
 * @section 3.17.2
 * @design 验证元组赋值给 Tuple 类型运行时行为（spec/types.md:1225-1238）
 * @note 运行时用例：实际执行验证 Tuple 类型赋值
 */
function main(): void {
  let pair: [number, string] = [1, "abc"]
  let a: Tuple = pair
  if (!(a instanceof Tuple)) throw new Error("pair should be Tuple")
  console.log("verified")
}