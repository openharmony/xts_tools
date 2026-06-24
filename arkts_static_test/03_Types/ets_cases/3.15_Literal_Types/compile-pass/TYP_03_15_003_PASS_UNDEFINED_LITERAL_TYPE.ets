/**
 * @id TYP_03_15_003_PASS_UNDEFINED_LITERAL_TYPE
 * @expect compile-pass
 * @section 3.15
 * @design 验证 undefined 字面量类型声明与赋值
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let c: undefined = undefined

function main(): void {
  if (c !== undefined) throw new Error("c assert failed")
  console.log("verified")
}
