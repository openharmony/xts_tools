/**
 * @id TYP_03_17_02_009_PASS_TUPLE_ELEMENT_ACCESS
 * @expect compile-pass
 * @section 3.17.2
 * @design 验证元组常量索引访问元素（spec/types.md:1177-1190）
 * @note 正向用例：tuple[0], tuple[1] 等常量索引访问
 */
function main(): void {
  let tuple: [number, number, string, boolean, Object] = [6, 7, "abc", true, 42]
  let first: number = tuple[0]
  let second: number = tuple[1]
  let third: string = tuple[2]
  console.log("verified")
}