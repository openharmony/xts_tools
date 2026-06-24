/**
 * @id TYP_03_15_002_PASS_NULL_LITERAL_TYPE
 * @expect compile-pass
 * @section 3.15
 * @design 验证 null 字面量类型声明与赋值
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let b: null = null

function main(): void {
  if (b !== null) throw new Error("b assert failed")
  console.log("verified")
}
