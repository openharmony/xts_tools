/**
 * @id TYP_03_14_025_RUNTIME_BIGINT_VALUE_SEMANTICS
 * @expect runtime
 * @section 3.14
 * @design 验证 bigint 值语义（运算时值类型行为）
 * @note 运行时用例：实际执行验证 bigint 值语义
 */
function main(): void {
  let a: bigint = 100n
  let b: bigint = a  // 引用语义

  // 验证值相等
  if (a !== b) throw new Error("should be equal")

  // 验证算术运算产生新值
  let c: bigint = a + 50n
  if (c !== 150n) throw new Error("c should be 150")
  if (a !== 100n) throw new Error("a should still be 100")

  console.log("verified")
}
