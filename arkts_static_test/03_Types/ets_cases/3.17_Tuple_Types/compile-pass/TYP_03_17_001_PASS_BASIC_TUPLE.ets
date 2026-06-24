/**
 * @id TYP_03_17_001_PASS_BASIC_TUPLE
 * @expect compile-pass
 * @section 3.17
 * @design 验证基本元组声明和访问
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let tuple: [number, number, string, boolean, Object] = [6, 7, "abc", true, 42]

function main(): void {
  if (tuple[0] !== 6) throw new Error("tuple[0] should be 6")
  if (tuple[1] !== 7) throw new Error("tuple[1] should be 7")
  if (tuple[2] !== "abc") throw new Error("tuple[2] should be abc")
  if (tuple[3] !== true) throw new Error("tuple[3] should be true")
  console.log("verified")
}
