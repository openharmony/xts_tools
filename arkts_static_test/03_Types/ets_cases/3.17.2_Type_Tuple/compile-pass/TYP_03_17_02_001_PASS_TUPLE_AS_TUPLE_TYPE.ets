/**
 * @id TYP_03_17_02_001_PASS_TUPLE_AS_TUPLE_TYPE
 * @expect compile-pass
 * @section 3.17.2
 * @design 验证元组可赋值给 Tuple 类型（spec/types.md:1225-1238）
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let pair: [number, string] = [1, "abc"]
let a: Tuple = pair

function main(): void {
  console.log("verified")
}