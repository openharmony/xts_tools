/**
 * @id TYP_03_17_005_PASS_TUPLE_DIFFERENT_TYPES
 * @expect compile-pass
 * @section 3.17
 * @design 验证元组包含不同类型元素
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let tuple: [number, string, boolean, int] = [1, "hello", true, 42]

function main(): void {
  if (tuple[0] !== 1) throw new Error("tuple[0] should be 1")
  if (tuple[1] !== "hello") throw new Error("tuple[1] should be hello")
  if (tuple[2] !== true) throw new Error("tuple[2] should be true")
  if (tuple[3] !== 42) throw new Error("tuple[3] should be 42")
  console.log("verified")
}
