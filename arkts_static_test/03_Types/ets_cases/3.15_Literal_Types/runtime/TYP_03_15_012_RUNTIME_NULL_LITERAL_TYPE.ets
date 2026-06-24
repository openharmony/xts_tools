/**
 * @id TYP_03_15_012_RUNTIME_NULL_LITERAL_TYPE
 * @expect runtime
 * @section 3.15
 * @design 验证 null 字面量类型运行时行为
 * @note 运行时用例：实际执行验证 null literal type
 */
function main(): void {
  let b: null = null

  if (b !== null) throw new Error("b assert failed")

  console.log("verified")
}
