/**
 * @id TYP_03_14_024_RUNTIME_BIGINT_AS_OBJECT
 * @expect runtime
 * @section 3.14
 * @design 验证 bigint 作为 Object 子类型的运行时行为
 * @note 运行时用例：实际执行验证 bigint instanceof Object
 */
function main(): void {
  let b: bigint = 123n
  let o: Object = b

  if (!(o instanceof bigint)) throw new Error("should be bigint")
  if (!(o instanceof Object)) throw new Error("should be Object")

  console.log("verified")
}
