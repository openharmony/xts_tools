/**
 * @id TYP_03_15_014_RUNTIME_LITERAL_AS_PARAM
 * @expect runtime
 * @section 3.15
 * @design 验证字面量类型作为函数参数运行时行为
 * @note 运行时用例：实际执行验证字面量类型参数调用
 */
function printThem(p1: "string literal", p2: null, p3: undefined): void {
  if (p1 !== "string literal") throw new Error("p1 assert failed")
  if (p2 !== null) throw new Error("p2 assert failed")
  if (p3 !== undefined) throw new Error("p3 assert failed")
}

function main(): void {
  printThem("string literal", null, undefined)
  console.log("verified")
}
