/**
 * @id TYP_03_17_003_PASS_TUPLE_LENGTH
 * @expect compile-pass
 * @section 3.17
 * @design 验证元组长度属性
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let tuple: [number, string] = [1, ""]

function main(): void {
  let len: int = tuple.length
  if (len !== 2) throw new Error("length should be 2")
  console.log("verified")
}
