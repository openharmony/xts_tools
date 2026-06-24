/**
 * @id TYP_03_16_02_001_PASS_READONLY_T_BRACKET_SYNTAX
 * @expect compile-pass
 * @section 3.16.2
 * @design 验证 readonly T[] 语法声明只读数组
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let arr: readonly number[] = [1, 2, 3]

function main(): void {
  if (arr.length !== 3) throw new Error("length should be 3")
  if (arr[0] !== 1) throw new Error("arr[0] should be 1")
  console.log("verified")
}
