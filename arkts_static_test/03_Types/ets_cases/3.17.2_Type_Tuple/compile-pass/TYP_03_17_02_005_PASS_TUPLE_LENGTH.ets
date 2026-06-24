/**
 * @id TYP_03_17_02_005_PASS_TUPLE_LENGTH
 * @expect compile-pass
 * @section 3.17.2
 * @design 验证 tuple.length 属性编译通过（spec/types.md:1192-1200）
 * @note 正向用例：Tuple Types 有 length 属性
 */
function main(): void {
  let tuple: [number, string] = [1, "abc"]
  let len: int = tuple.length
  console.log(len.toString())
  console.log("verified")
}