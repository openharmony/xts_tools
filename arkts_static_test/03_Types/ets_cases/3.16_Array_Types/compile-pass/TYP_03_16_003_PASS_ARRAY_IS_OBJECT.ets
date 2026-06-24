/**
 * @id TYP_03_16_003_PASS_ARRAY_IS_OBJECT
 * @expect compile-pass
 * @section 3.16
 * @design 验证数组是 Object 子类型
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let arr: number[] = [1, 2, 3]
let o: Object = arr

function main(): void {
  if (!(o instanceof Array)) throw new Error("should be Array")
  console.log("verified")
}
