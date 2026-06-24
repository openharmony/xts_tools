/**
 * @id TYP_03_15_013_RUNTIME_UNDEFINED_LITERAL_TYPE
 * @expect runtime
 * @section 3.15
 * @design 验证 undefined 字面量类型运行时行为
 * @note 运行时用例：实际执行验证 undefined literal type
 */
function main(): void {
  let c: undefined = undefined

  if (c !== undefined) throw new Error("c assert failed")

  console.log("verified")
}
