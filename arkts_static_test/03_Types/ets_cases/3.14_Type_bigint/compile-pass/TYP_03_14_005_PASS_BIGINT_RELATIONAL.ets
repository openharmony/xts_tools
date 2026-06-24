/**
 * @id TYP_03_14_005_PASS_BIGINT_RELATIONAL
 * @expect compile-pass
 * @section 3.14
 * @design 验证 bigint 关系运算
 * @note 正向用例：验证该特性编译通过的正确用法
 */
let a: bigint = 100n
let b: bigint = 200n

function main(): void {
  if (a >= b) throw new Error("a should be less than b")
  if (b <= a) throw new Error("b should be greater than a")
  if (a === b) throw new Error("a should not equal b")
  if (!(a < b)) throw new Error("a should be less than b")
  if (!(b > a)) throw new Error("b should be greater than a")
  if (!(a !== b)) throw new Error("a should not equal b")
  console.log("verified")
}
