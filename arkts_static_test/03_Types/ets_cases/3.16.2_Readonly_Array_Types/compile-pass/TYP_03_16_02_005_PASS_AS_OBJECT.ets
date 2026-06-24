/**
 * @id TYP_03_16_02_005_PASS_AS_OBJECT
 * @expect compile-pass
 * @section 3.16.2
 * @design 验证只读数组可赋值给 Object
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let arr: readonly number[] = [1, 2, 3]
let o: Object = arr

function main(): void {
  if (!(o instanceof Array)) throw new Error("should be Array")
  console.log("verified")
}
