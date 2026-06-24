/**
 * @id TYP_03_17_01_001_PASS_READONLY_TUPLE_BASIC
 * @expect compile-pass
 * @section 3.17.1
 * @design 验证基本只读元组声明和访问
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let tuple: readonly [number, string] = [1, "abc"]

function main(): void {
  if (tuple[0] !== 1) throw new Error("tuple[0] should be 1")
  if (tuple[1] !== "abc") throw new Error("tuple[1] should be abc")
  console.log("verified")
}
