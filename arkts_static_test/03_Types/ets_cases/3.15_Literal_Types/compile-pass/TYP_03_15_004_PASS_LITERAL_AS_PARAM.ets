/**
 * @id TYP_03_15_004_PASS_LITERAL_AS_PARAM
 * @expect compile-pass
 * @section 3.15
 * @design 验证字面量类型作为函数参数
 * @note 正向用例：验证该特性编译通过的正确用法
 */
function printThem(p1: "string literal", p2: null, p3: undefined): void {
  console.log(p1, p2, p3)
}

function main(): void {
  printThem("string literal", null, undefined)
  console.log("verified")
}
