/**
 * @id TYP_03_14_009_PASS_BIGINT_ARRAY
 * @expect compile-pass
 * @section 3.14
 * @design 验证 bigint 数组
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let arr: bigint[] = [1n, 2n, 3n]

function main(): void {
  if (arr.length !== 3) throw new Error("length should be 3")
  if (arr[0] !== 1n) throw new Error("arr[0] should be 1")
  if (arr[1] !== 2n) throw new Error("arr[1] should be 2")
  if (arr[2] !== 3n) throw new Error("arr[2] should be 3")
  console.log("verified")
}
