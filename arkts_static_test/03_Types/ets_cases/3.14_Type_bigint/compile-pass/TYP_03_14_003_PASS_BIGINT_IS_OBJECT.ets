/**
 * @id TYP_03_14_003_PASS_BIGINT_IS_OBJECT
 * @expect compile-pass
 * @section 3.14
 * @design 验证 bigint 是 Object 子类型
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let b: bigint = 123n
let o: Object = b

function main(): void {
  if (!(o instanceof bigint)) throw new Error("should be bigint")
  console.log("verified")
}
