/**
 * @id TYP_03_17_01_002_PASS_READONLY_TUPLE_LENGTH
 * @expect compile-pass
 * @section 3.17.1
 * @design 验证只读元组长度属性
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let tuple: readonly [number, string, boolean] = [1, "hello", true]

function main(): void {
  let len: int = tuple.length
  if (len !== 3) throw new Error("length should be 3")
  console.log("verified")
}
