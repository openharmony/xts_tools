/**
 * @id TYP_03_16_02_011_RUNTIME_SYNTAX_EQUIVALENCE
 * @expect runtime
 * @section 3.16.2
 * @design 验证 readonly T[] 和 ReadonlyArray<T> 是相同类型运行时行为
 * @note 运行时用例：实际执行验证语法等价性
 */
function main(): void {
  let arr1: readonly number[] = [1, 2, 3]
  let arr2: ReadonlyArray<number> = arr1

  if (arr1.length !== arr2.length) throw new Error("length should be equal")
  if (arr1[0] !== arr2[0]) throw new Error("arr1[0] should equal arr2[0]")

  console.log("verified")
}
