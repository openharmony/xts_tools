/**
 * @id TYP_03_14_026_RUNTIME_BIGINT_RELATIONAL
 * @expect runtime
 * @section 3.14
 * @design 验证 bigint 关系运算运行时行为
 * @note 运行时用例：实际执行验证 bigint 关系运算
 */
function main(): void {
  let a: bigint = 100n
  let b: bigint = 200n
  let c: bigint = 100n

  if (a >= b) throw new Error("a should be less than b")
  if (b <= a) throw new Error("b should be greater than a")
  if (a === b) throw new Error("a should not equal b")
  if (!(a < b)) throw new Error("a should be less than b")
  if (!(b > a)) throw new Error("b should be greater than a")
  if (!(a !== b)) throw new Error("a should not equal b")
  if (!(a === c)) throw new Error("a should equal c")
  if (a !== c) throw new Error("a should equal c")

  console.log("verified")
}
