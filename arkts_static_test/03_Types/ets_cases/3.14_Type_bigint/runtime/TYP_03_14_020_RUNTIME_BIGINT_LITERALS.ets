/**
 * @id TYP_03_14_020_RUNTIME_BIGINT_LITERALS
 * @expect runtime
 * @section 3.14
 * @design 验证 bigint 字面量声明、赋值、比较的运行时行为
 * @note 运行时用例：实际执行验证 bigint 基本操作
 */
function main(): void {
  let b1: bigint = 123n
  let b2: bigint = 0n
  let b3: bigint = -123n

  if (b1 !== 123n) throw new Error("b1 assert failed")
  if (b2 !== 0n) throw new Error("b2 assert failed")
  if (b3 !== -123n) throw new Error("b3 assert failed")

  let b4: bigint = b1 + b3
  if (b4 !== 0n) throw new Error("add assert failed")

  console.log("verified")
}
