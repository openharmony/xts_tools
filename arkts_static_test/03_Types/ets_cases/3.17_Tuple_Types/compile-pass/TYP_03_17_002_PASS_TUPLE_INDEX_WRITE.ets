/**
 * @id TYP_03_17_002_PASS_TUPLE_INDEX_WRITE
 * @expect compile-pass
 * @section 3.17
 * @design 验证元组元素修改
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let tuple: [number, string] = [1, "hello"]

function main(): void {
  tuple[0] = 42
  if (tuple[0] !== 42) throw new Error("tuple[0] should be 42")
  console.log("verified")
}
