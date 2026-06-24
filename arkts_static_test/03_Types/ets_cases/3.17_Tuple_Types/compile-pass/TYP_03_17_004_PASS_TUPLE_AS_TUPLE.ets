/**
 * @id TYP_03_17_004_PASS_TUPLE_AS_TUPLE
 * @expect compile-pass
 * @section 3.17
 * @design 验证元组可赋值给 Tuple 类型
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let tuple: [number, string] = [1, "hello"]
let t: Tuple = tuple

function main(): void {
  console.log("verified")
}
