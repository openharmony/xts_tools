/**
 * @id TYP_03_17_02_008_PASS_TUPLE_CAST
 * @expect compile-pass
 * @section 3.17.2
 * @design 验证 Tuple 可用于 cast expression（spec/types.md:1247-1248）
 * @note 正向用例：Type Tuple 经 Type Erasure 保留，可用于 cast
 */
function main(): void {
  let pair: [number, string] = [1, "abc"]
  let obj: Object = pair as Object
  console.log("verified")
}