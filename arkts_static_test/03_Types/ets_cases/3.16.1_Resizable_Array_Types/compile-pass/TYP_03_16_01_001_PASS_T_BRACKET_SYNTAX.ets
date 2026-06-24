/**
 * @id TYP_03_16_01_001_PASS_T_BRACKET_SYNTAX
 * @expect compile-pass
 * @section 3.16.1
 * @design 验证 T[] 语法声明数组
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let arr: number[] = [1, 2, 3]

function main(): void {
  if (arr.length !== 3) throw new Error("length should be 3")
  if (arr[0] !== 1) throw new Error("arr[0] should be 1")
  if (arr[1] !== 2) throw new Error("arr[1] should be 2")
  if (arr[2] !== 3) throw new Error("arr[2] should be 3")
  console.log("verified")
}
