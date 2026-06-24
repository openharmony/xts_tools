/**
 * @id TYP_03_15_011_RUNTIME_STRING_LITERAL_TYPE
 * @expect runtime
 * @section 3.15
 * @design 验证字符串字面量类型运行时行为
 * @note 运行时用例：实际执行验证 string literal type 操作
 */
function main(): void {
  let a: "string literal" = "string literal"
  let b: string = a + a

  if (a !== "string literal") throw new Error("a assert failed")
  if (b !== "string literalstring literal") throw new Error("b assert failed")

  console.log("verified")
}
