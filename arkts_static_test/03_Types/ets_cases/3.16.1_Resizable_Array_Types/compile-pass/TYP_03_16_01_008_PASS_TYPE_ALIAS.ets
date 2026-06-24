/**
 * @id TYP_03_16_01_008_PASS_TYPE_ALIAS
 * @expect compile-pass
 * @section 3.16.1
 * @design 验证数组类型别名
 * @note 正向用例：验证该特性编译通过的正确用法
 */
type Matrix = number[][]

let m: Matrix = [[1, 2], [3, 4]]

function main(): void {
  if (m.length !== 2) throw new Error("length should be 2")
  if (m[0][0] !== 1) throw new Error("m[0][0] should be 1")
  console.log("verified")
}
