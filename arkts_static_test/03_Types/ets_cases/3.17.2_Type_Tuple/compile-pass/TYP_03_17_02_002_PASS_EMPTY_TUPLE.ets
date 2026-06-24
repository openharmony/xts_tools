/**
 * @id TYP_03_17_02_002_PASS_EMPTY_TUPLE
 * @expect compile-pass
 * @section 3.17.2
 * @design 验证空元组 [] 与 Tuple 相同（spec/types.md:1240-1245）
 * @note 正向用例：空元组声明与 Tuple 类型兼容
 */
let empty: [] = []

function main(): void {
  console.log("verified")
}