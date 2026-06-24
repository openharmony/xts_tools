/**
 * @id TYP_03_14_001_PASS_BIGINT_LITERAL
 * @expect compile-pass
 * @section 3.14
 * @design 验证 bigint 字面量声明与赋值
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let b1: bigint = 123n
let b2: bigint = 0n
let b3: bigint = -123n

function main(): void {
  if (b1 !== 123n) throw new Error("b1 assert failed")
  if (b2 !== 0n) throw new Error("b2 assert failed")
  if (b3 !== -123n) throw new Error("b3 assert failed")
  console.log("verified")
}
